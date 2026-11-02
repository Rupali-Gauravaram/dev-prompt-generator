# Post 00: the concept

## The idea
- A 30-day challenge: one short post a day about something I'm learning in data science.
- So I don't spend the time deciding where to start or what to write, a script picks the topic and the constraints for me.
- I follow the prompt's constraints strictly and post the result. 

## Why is this needed though?
- When we can so quickly use an LLM to whip up writing or coding prompts in milliseconds, why bother with such a simple tool?
- I wanted to make sure everything I learnt over the past year in data science and AI really stuck. The only way to truly challenge myself is to keep things stupidly simple. 
- By using a tool like this, I'm preventing myself from going on the internet or an LLM and overly depending on it for everything. 
- I love writing and coding equally now, so this is also a way to make my brain learn, recall and build solutions the old-fashioned way. 
- It took me a few hours just to build the prompt generation script. I wrote every line myself, using an AI tutor only for hints when I got stuck. That's the habit this challenge is meant to break further.
- This in itself was the 0th build. 

## How the generator works
- 60 topics from my own learning (Python, SQL, statistics, machine learning, deep learning and more), each tagged with a subject area and a type: explain, build, compare or debug.
- Every post gets the same two rules: at most 600 words, and end with one question for the reader.
- It also gets two random constraints for its type, e.g. "explain it with a chai analogy" or "start from buggy code and show the wrong output".
- It remembers what it has drawn before (`used.json`), so no topic repeats. `--peek` shows a prompt without using it, and `--reset` starts the prompt generator over.

## Format for each day
- File: `posts/NN-<topic-id>.md` (e.g. `01-sql-04.md`).
- At the top: the topic, subject area, type and constraints exactly as drawn. Then the post.

## Where the finished posts go
- DEV community, Medium, Chai & Code (my personal tech blog page) and LinkedIn, each linking back to this repo.