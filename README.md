# dev-prompt-generator

A small Python script that picks what I write about next. Each run draws one topic I haven't covered yet, from a list built from what I'm learning in data science, and adds a few writing constraints so every post is short and focused.

I'm using it for a 30-day writing challenge: one post a day, starting 3 Nov 2026. The posts live in [`posts/`](posts/).

## How it works

- `topics.json`: 60 topics, each with an `id`, `area` (Python, SQL, Statistics, ML and more) and `type` (explain, build, compare, debug).
- `constraints.json`: rules for every post (`always`), plus rules picked at random for the topic's type (`by_type`, `per_draw` of them).
- `used.json`: the ids already drawn, so a topic never comes up twice. It is created on the first run and kept out of git.

## Run it

Run it from inside this folder (the JSON files are opened by name):

```bash
python3 prompt_gen.py           # draw the next prompt and mark it as used
python3 prompt_gen.py --peek    # show a prompt without using it up
python3 prompt_gen.py --reset   # clear the history and start again
python3 prompt_gen.py --help
```

When every topic has been used, the script says so and stops.

## Example output

```
Here's your Post 2 prompt:

Topic: Choosing a test: z, t, paired t, chi-square or ANOVA

Area: Statistics

Type: compare

Constraints:
- Max 600 words (about a 3-minute read)
- End with one question for the reader
- Say when you would pick each option
- Use the same small dataset for every option
```

## Add your own topics

Add an entry to `topics.json` with a new unique `id`, an `area`, a `type` and the `topic` text. If you add a new type, give it a list in `constraints.json` under `by_type`.

## Stack

Python standard library only: `json`, `os`, `random`, `sys`, `argparse`.
