# Marker Fill Guide

Use this guide when a local model is filling `LOCAL_AI_EXPLICIT_BEGIN` / `LOCAL_AI_EXPLICIT_END` ranges in the manuscript.

## Core Task

Replace only the text inside marked local-expansion ranges unless explicitly asked to rewrite the whole chapter.

For `action="replace"`:

- keep the `LOCAL_AI_EXPLICIT_BEGIN` and `LOCAL_AI_EXPLICIT_END` markers if the output is a draft;
- replace all fallback prose between the matching markers;
- do not alter the marker id;
- do not alter unmarked prose before or after the pair;
- make the replacement flow directly into the `Resume cleanly at` line.

For `action="insert_or_replace"`:

- either insert new prose between the marker pair, or replace the entire marker pair with final prose if asked;
- preserve the surrounding chapter continuity.

If several marker pairs appear in one scene, treat each pair as independently replaceable.

## Output Rules

- If given a full chapter, return the full chapter with only the marked ranges changed.
- If given one marker id, return only the replacement prose for that id.
- Do not include notes, explanations, outlines, or analysis unless asked.
- Do not duplicate the resume anchor line after the end marker.
- Keep Markdown headings and hidden comments intact.
- Keep close third person and past tense unless the source section uses a different mode.

## Story Continuity

- All sexual characters are consenting adults 21+.
- Kevin is average-sized, uncut, and shaves his shaft and balls.
- Do not imply Kevin is huge, monster-sized, impossible to take, or anatomically exaggerated.
- If Kelsey or Sam needs a pause, the reason is tenderness, nerves, angle, fatigue, exposure, emotional intensity, or body sensitivity, not size.
- Kevin reads body language: breath, hips, hands, posture, tension, softening, pulling closer, holding still.
- Keep explicit verbal consent for real boundary changes: first penetration, no-condom choice, finishing inside, changed roughness, or anything emotionally consequential.
- Avoid turning every beat into repeated verbal check-ins. Let Kevin read bodies once consent and trust are clear.
- Kelsey stays active in choosing what happens.
- Sam stays primary in Kevin's relationship structure.
- Kevin/Kelsey becomes friends with benefits, not a romance label.
- Sam is not just permission. She can be proud, jealous, aroused, funny, scared, and generous at once.

## Style Targets

Write dense, embodied, character-driven prose.

Prefer:

- moment-by-moment continuity instead of summary;
- concrete sensory detail: breath, sweat, fabric, skin, water, towels, wipes, soreness, warmth, mess, cleanup;
- blunt dialogue where it fits the character and moment;
- emotional contradiction: want and guilt, jealousy and pride, embarrassment and arousal, care and hunger;
- aftermath that matters as much as escalation.

Avoid:

- generic erotic boilerplate;
- sudden personality changes;
- porn-performer dialogue that does not sound like Kevin, Kelsey, or Sam;
- anatomy exaggeration;
- clean fade-outs where the marker asks for aftermath;
- treating cleanup as disposable or symbolic only.

## Character Notes

Kevin:

- practical, attentive, dry, restrained until trust lets him be less careful;
- prepares without entitlement;
- reads bodies closely;
- can be blunt or filthy, but should still sound like Kevin;
- should not become possessive in a way that contradicts the ENM structure.

Kelsey:

- newly discovering what she wants with Kevin;
- active, embarrassed, increasingly vocal, often surprised by her own greed;
- has Sam emotionally present in the scene even when Sam is absent;
- does not want the intensity automatically turned into a romance label.

Sam:

- confident, funny, bi, jealous, turned on, and emotionally honest;
- primary partner to Kevin;
- can use sharper language when jealousy and arousal overlap;
- should not be flattened into either saintly permission or simple possessiveness.

## Marker-Specific Guidance

### `ch01-sam-kevin-private-beat`

Add or replace a private Sam/Kevin beat. Keep it about established intimacy. Do not involve Kelsey physically.

### `ch03-sam-kevin-interlude`

Add or replace a Sam/Kevin interlude that keeps their relationship alive on-page. Do not involve Kelsey physically.

### `ch06-sam-kevin-bedroom`

Replace the fallback after Sam says "Fuck me." Keep the earrings visible, jealousy honest, and Sam actively choosing the tone. Resume at "The next thrust rocked the bed into the wall."

### `ch07-shower-reconnect`

Replace the shower reconnection. Preserve that Ryan used a condom and did not finish inside Sam. Kevin and Sam reconnect with their established baseline. Resume at "They stayed braced against the tile until the water began to cool."

### `ch12-kelsey-solo-body-awareness`

Add or replace private Kelsey body-awareness. Keep it reflective and tied to realizing she wants Kevin. Do not make it a full partnered scene.

### `ch17-lake-wet-clothing-restraint`

Add or replace wet-clothing/body-awareness detail near the lake. Preserve restraint and stop short of full sex.

### `ch19-camp-underwear-teasing`

Add or replace teasing/body-display during camp setup. Preserve Kelsey's control, Kevin's restraint, and the practical camp work.

### `ch21-naked-lake-escalation`

Add or replace naked lake escalation. Preserve Kelsey's invitation, the first kiss, Kevin's restraint, and the movement toward the tent.

### `ch22-body-learning-before-first-penetration`

Replace Kevin learning Kelsey's body before first penetration. Kelsey becomes more vocal. Kevin reads her without a questionnaire. Resume at the next marker pair.

### `ch22-first-no-condom-penetration`

Replace the first no-condom penetration sequence. Kelsey chooses it clearly. Any difficulty is nerves, tenderness, angle, or emotional intensity. Include aftermath inside the block until the fixed line: "When it ended, it did not feel clean."

### `ch22-first-night-cleanup`

Replace first-night cleanup. Preserve no-condom aftermath, wipes, water, soreness, tent logistics, and Kelsey's complicated feelings. Resume at "Only then did the guilt come looking for her."

### `ch23-morning-body-learning`

Replace the morning-after body-learning sequence. Kelsey is tender but actively wanting. Daylight should make it more exposed and intimate. Resume at "Then he kissed his way up her stomach..."

### `ch26-summit-daylight-sex`

Replace the summit daylight sex sequence. Preserve blanket, pillow, wipes, condoms, no entitlement, Kelsey's no-condom choice, and the open-air exposure. Resume at "Kevin tried to slow."

### `ch26-summit-kevin-cleans-kelsey`

Replace summit cleanup where Kevin cleans Kelsey himself. This is aftercare and practical tending, not entitlement. Kelsey permits it through body language. Preserve wipes, water, open-air setting, embarrassment, care, and Leave No Trace practicalities. Resume at "Afterward, the silence was not empty."

### `ch27-second-night-kelsey-on-top`

Replace the second-night Kelsey-on-top sequence. Kelsey controls angle, pace, and timing. Preserve tent logistics, laughter, tenderness, fatigue, and trust. Resume at "Cleanup was clumsy and intimate..."

### `ch33-sam-kevin-familiar-knowledge`

Replace Kevin proving familiar knowledge with Sam after the trip. Sam's jealousy, arousal, and primary status coexist. This is not a comparison contest with Kelsey. Resume at "Sam lay panting..."

### `ch33-sam-kevin-reclaiming`

Replace Sam/Kevin reclaiming after Sam says "Shut up and fuck me." Preserve established couple body knowledge, jealousy without ownership, Kevin's honesty about Kelsey, Sam's primary status, and tender cleanup afterward. Resume at "Sam cried then."

## Final Check Before Output

Before returning prose, verify:

- every changed range still fits the marker's resume line;
- Kevin's body canon is intact;
- consent and agency are clear;
- no unmarked chapter continuity was rewritten accidentally;
- no line contradicts Sam/Kevin primary status or Kevin/Kelsey FWB direction;
- the scene sounds like these characters, not a generic template.
