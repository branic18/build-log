## 🛠️ What I Worked On
- Continued to summarize my research in a Google Doc and hope to publish it as an article; helping highlighting the kind of AI work I did during the fellowship
- Began to understand what the dataset could look like


## 📚 What I Learned
- I thought that we could used Meta's Llama API to fine tune our Llama 3.0 model, but it's not available to the public. We'll just have to use PyTorch + Unsloth
- How the AI will keep track of student progress will be through 2 AI requests
- Since the RC material isn't in input/output format (naturally) I would have to go through everything as if I was a student and come up with user inputs questions. Then I would have to go back and give examples of what does it look like to guide the student to the answer through problem-solving. I'll have to create at least 50 examples for the fine-tuning, 100-200 is better.
- Multi-turn datasets- conversational datasets (stores 2 user inputs, 2 AI outputs). Not sure how long this CAN be, but I might keep it to 2/2
- Single turn datasets- simple 1 user input and 1 AI output


## 🌟 What Went Well
- We got clarification on our blockers! 🎉
	- Student progress- make sure the AI is guiding the student based on where they're at with their understanding of the material. Via Slack we decided we would keep track of it through student summaries. Essentially taking the last 10 user history saves and summarizing it into a single summary. We would keep max 5 or 10 at a time. With every new summary created we will remove the last summary created.
	- RC Dataset- go through our cohort channels to get the RC material to feed into the model


## ⛔️ What Blocked Me
- Everyone this week was either at AfroTech or preparing for the mock behavioral interviews, so I wasn't able to meet with my team this Monday-Friday. We didn't get to come together to share the research we did, so we didn't start implementing this week. Hopefully we can meet this weekend? 
	- A personal goal for me is to at least get the dataset into a good place, so it can be tokenized, etc. and ready to be added to the transformer. We haven't met on the kind of fine-tuning objective (Supervised fine-tuning, Instruction fine-tuning, Task-Specific Fine-Tuning, etc.) to be used, but I think instruction fine-tuning is great, because it allows you to explicitly set guardrails via instructions in addition to the input/output examples. I listed this under blocker because it may change if we meet up and talk about it, which could slightly change the format of the dataset, but not too much, but could take a minute to modify


## ☀️ Next Steps
- Create a dataset of at least 50 instruction-based examples to feed into the transformer for fine-tuning