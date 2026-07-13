param(
    [Parameter(Mandatory = $true)]
    [string]$Chapter,

    [string]$Instruction = "Revise the supplied manuscript text according to the project standard. Preserve plot, canon, POV, and continuity. Return revised manuscript prose only.",

    [string]$Model = "the-hike-writer:latest",

    [string]$Out,

    [string]$StyleFile,

    [switch]$NoRoadmap
)

$ErrorActionPreference = "Stop"

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $scriptDir

function Resolve-RepoPath {
    param([Parameter(Mandatory = $true)][string]$Path)

    if ([System.IO.Path]::IsPathRooted($Path)) {
        return (Resolve-Path -Path $Path).Path
    }

    $repoCandidate = Join-Path $repoRoot $Path
    if (Test-Path -LiteralPath $repoCandidate) {
        return (Resolve-Path -Path $repoCandidate).Path
    }

    return (Resolve-Path -Path $Path).Path
}

$chapterPath = Resolve-RepoPath $Chapter
$standardPath = Join-Path $repoRoot "DRAFTING_STANDARD.md"
$biblePath = Join-Path $repoRoot "PROJECT_BIBLE.md"
$roadmapPath = Join-Path $repoRoot "ROADMAP.md"

$standard = Get-Content -LiteralPath $standardPath -Raw
$bible = if (Test-Path -LiteralPath $biblePath) { Get-Content -LiteralPath $biblePath -Raw } else { "" }
$roadmap = if (-not $NoRoadmap -and (Test-Path -LiteralPath $roadmapPath)) { Get-Content -LiteralPath $roadmapPath -Raw } else { "" }
$chapterText = Get-Content -LiteralPath $chapterPath -Raw

$styleBlock = ""
if ($StyleFile) {
    $stylePath = Resolve-RepoPath $StyleFile
    $styleBlock = Get-Content -LiteralPath $stylePath -Raw
}

$markerInstructions = @"
Local marker handling:
- `LOCAL_AI_EXPLICIT_BEGIN` / `LOCAL_AI_EXPLICIT_END` pairs are explicit replacement ranges.
- For `action="replace"`, replace all prose between the matching BEGIN and END markers with revised prose for that local-only expansion point.
- For `action="insert_or_replace"`, either insert prose between the pair or replace the pair entirely with prose, according to the user's instruction.
- Preserve marker ids if you keep the markers in output.
- Do not change unmarked continuity text unless the user's instruction explicitly asks for a full-chapter rewrite.
"@

$prompt = @"
You are revising a manuscript locally.

Instruction:
$Instruction

$markerInstructions

Project drafting standard:
$standard

Project bible:
$bible

Roadmap/context:
$roadmap

Optional style reference:
$styleBlock

Manuscript text to revise:
$chapterText
"@

$result = $prompt | ollama run $Model

if ($Out) {
    $outPath = if ([System.IO.Path]::IsPathRooted($Out)) { $Out } else { Join-Path $repoRoot $Out }
    Set-Content -LiteralPath $outPath -Value $result -Encoding UTF8
    Write-Output "Wrote $outPath"
} else {
    $result
}
