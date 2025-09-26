
### Student 1

user_id (auto-generated)  
name (string): Aisha Rivera
email: `aisha.rivera@example.com`
cohort: 2025b
  
session count (number): 3 ← counted sessions  
sessions (object):
- individual session: (object)
	- Total individual session time: 45
	- Timestamp start: 2025-09-20T08:00:00Z
	- Timestamp end: 2025-09-20T08:45:00Z
	- topics (array of strings)- ["HTML", "CSS"] <-- Keywords detected during conversation
-  individual session: (object)
	- Total individual session time: 40
	- Timestamp start: 2025-09-21T09:30:00Z
	- Timestamp end: 2025-09-21T10:10:00Z
	- topics (array of strings)- ["JavaScript"] <-- Keywords detected during conversation
-  individual session: (object)
	- Total individual session time: 45
	- Timestamp start: 2025-09-23T07:15:00Z
	- Timestamp end: 2025-09-23T08:00:00Z
	- topics (array of strings)- ["HTML", "JavaScript", "Node.js", "MongoDB"] <-- Keywords detected during conversation

topics learned (array of strings): ["HTML", "CSS",  "JavaScript", "Node.js", "MongoDB"]
total time (time in minutes): 130 <-- After a session completion the session time is added to the total

achievements count: 3
achievements (object):
- achievement 1:
	- achievement name (string): "First Chat"
    - achievement description (string): "Completed your first chatbot session."
	    - LOGIC: session_count >= 1
- achievement 2:
	- achievement name (string): "First 30"  
    - achievement description (string): "Spent 30+ minutes learning with the chatbot."
	    - LOGIC: session_time_total >= 30
- achievement 3:
	- achievement name (string): "Deep Dive"  
    - achievement description (string): "2+ hours of total chatbot learning."
	    - LOGIC:session_time_total >= 120


### Student 2

user_id (auto-generated)  
name (string): Jamal Okoro
email: `jamal.okoro@example.com`
cohort: 2025b
  
session count (number): 3 ← counted sessions  
sessions (object):  
- individual session: (object)
	- Total individual session time: 30
    - Timestamp start: 2025-09-20T11:00:00Z
	- Timestamp end: 2025-09-20T11:30:00Z
    - topics (array of strings)- ["CSS", "JavaScript"] <-- Keywords detected during conversation
- individual session: (object)
	- Total individual session time: 50
    - Timestamp start: 2025-09-22T12:00:00Z
	- Timestamp end: 2025-09-22T12:50:00Z
    - topics (array of strings)- ["HTML", "CSS", "Node.js", "Express.js"] <-- Keywords detected during conversation
- individual session: (object)
	- Total individual session time: 30
    - Timestamp start: 2025-09-24T13:15:00Z
	- Timestamp end: 2025-09-24T14:00:00Z
    - topics (array of strings)- ["JavaScript"] <-- Keywords detected during conversation

topics learned (array of strings): ["HTML", "CSS",  "JavaScript", "Node.js", "React.js]
total time (time in minutes): 110 <-- After a session completion the session time is added to the total

achievements count: 3
achievements (object):
- achievement 1:
	- achievement name (string): "First Chat"
    - achievement description (string): "Completed your first chatbot session."
	    - LOGIC: session_count >= 1
- achievement 2:
	- achievement name (string): "First 30"  
    - achievement description (string): "Spent 30+ minutes learning with the chatbot."
	    - LOGIC: session_time_total >= 30
- achievement 3:
	- achievement name (string): "Frontend Finisher"  
    - achievement description (string): "Completed all frontend topics."
	    - LOGIC:  ["HTML", "CSS", "JavaScript", "React"] ⊆ topics_learned



### Instructor 

user_id
name: Erica
email: ericamendez@gmail

cohort: 2025b

#### Class Overview- culmination of student metrics
total students: 3
average_time (in minutes): 40
session count: 6

NOTE: This mock data is highly speculative as we have not discussed in-depthly how we want the logic to be for the student progress or topic difficulty. Work in progress as project becomes more defined.
#### Student Progress
total active students
- LOGIC: Spends at least 2 hours per week talking to chatbot
student completion (count + percentage)
- LOGIC: Are they on track with learning the current languages? Have they spent at least 2 hours per week studying the current curricula with the AI chatbot
student struggling (count + percentage)
- LOGIC: Spending less than 2 hours per week studying the current curricula with the AI chatbot
student hot topics
- LOGIC: Keywords that come up in student conversations

#### Topic Difficulty Analysis- This could be an AI summary based on student data from the past week
High
Medium
Low