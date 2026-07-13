# Local Model Setup

This repo includes an Ollama wrapper model and a helper script for local manuscript revision.

## Create the Model

From the repo root:

```powershell
ollama create the-hike-writer -f .\models\the-hike-writer.Modelfile
```

## Rewrite a Chapter Locally

Print the result to the terminal:

```powershell
.\scripts\local-rewrite.ps1 -Chapter manuscript\chapter-26-the-summit.md -Instruction "Revise the summit scene to be denser, more sensory, and more continuous. Preserve canon."
```

Write the result to a draft file:

```powershell
.\scripts\local-rewrite.ps1 -Chapter manuscript\chapter-26-the-summit.md -Out scratch\chapter-26-local-draft.md -Instruction "Revise the summit scene to be denser, more sensory, and more continuous. Preserve canon."
```

Use an optional local style reference:

```powershell
.\scripts\local-rewrite.ps1 -Chapter manuscript\chapter-26-the-summit.md -StyleFile path\to\style-reference.md -Out scratch\chapter-26-local-draft.md
```

## Marker Pairs

The manuscript uses paired local expansion markers:

```md
<!-- LOCAL_AI_EXPLICIT_BEGIN id="example" action="replace"
REPLACE EVERYTHING BETWEEN THIS BEGIN MARKER AND THE MATCHING END MARKER.
Local-only expansion point: ...
Preserve: ...
Resume cleanly at: ...
-->

fallback prose to replace

<!-- LOCAL_AI_EXPLICIT_END id="example" -->
```

When running a local rewrite, replace only the prose inside each matching pair unless you explicitly request a full-chapter rewrite. Multiple marker pairs can appear in one scene.

## Notes

- Base model: `mistral-nemo:latest`, already installed locally.
- Recommended on this machine: keep `num_ctx` at `8192` unless you confirm larger contexts fit comfortably in VRAM.
- The helper automatically includes `DRAFTING_STANDARD.md`, `PROJECT_BIBLE.md`, and `ROADMAP.md`.
