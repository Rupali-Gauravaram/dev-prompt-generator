import json
import os
import random
import sys
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('--peek', action='store_true')
parser.add_argument('--reset', action='store_true')
args = parser.parse_args()

if args.reset:
    if os.path.exists("used.json"):
        os.remove("used.json")
    print("Reset complete. All prompts are now available.")
    sys.exit()

# load topics and constraints JSON files
with open('topics.json','r') as file:
    topics = json.load(file)

with open('constraints.json','r') as file1:
    constraints = json.load(file1)

if os.path.exists("used.json"):
    with open('used.json', 'r') as used_p:
        used = json.load(used_p)
else:
    used = []

available_prompts = [t for t in topics['topics'] if t['id'] not in used]

if not available_prompts:
    print("All prompts have been used.")
    sys.exit()

current_prompt = random.choice(available_prompts)

always_constraints = constraints['always']

current_prompt_type = current_prompt.get("type")
type_constraints = constraints["by_type"].get(current_prompt_type, [])

k = min(constraints['per_draw'], len(type_constraints))
type_samples = random.sample(type_constraints, k=k)
    
current_constraints = always_constraints + type_samples

def show_prompt():
    post_number = len(used)+1
    print(f"Here's your Post {post_number} prompt: ")
    print(f"\nTopic: {current_prompt['topic']}")
    print(f"\nArea: {current_prompt['area']}")
    print(f"\nType: {current_prompt['type']}")
    print(f"\nConstraints:")
    for constraint in current_constraints:
        print(f"- {constraint}")

show_prompt()

if not args.peek:
    used.append(current_prompt['id'])

    with open('used.json', 'w') as used_p:
        json.dump(used, used_p, indent=2)

    print('Saved the prompt as used.')