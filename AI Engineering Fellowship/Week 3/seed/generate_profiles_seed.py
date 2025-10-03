import random # For random values like session count, topic choice.
import json
from faker import Faker # Library to generate fake names, emails, etc.

fake = Faker() # Initializes Faker

# Configuration

# Defines how many students and what cohorts/topics to use.
NUM_STUDENTS = 55
COHORTS = ['2026A', '2026B', '2025-Fall']
TOPICS = ['javascript', 'react', 'nodejs', 'python', 'html', 'css', 'mongodb', 'express.js']

# Defines reusable achievement objects you can randomly assign to students.
ACHIEVEMENTS = [
    {
        "slug": "first-chat",
        "name": "First Chat",
        "description": "Completed your first chatbot session"
    },
    {
        "slug": "ten-minutes",
        "name": "Ten Minutes",
        "description": "Spent 10 minutes learning"
    }
]

# Randomly includes 0–2 achievements per student, each with a random date.
def random_achievements():
    earned = []
    for a in ACHIEVEMENTS:
        if random.random() < 0.5:
            date = fake.date_time_between(start_date='-30d', end_date='now')
            earned.append({
                "slug": a["slug"],
                "name": a["name"],
                "earned_at": date.isoformat() + "Z"
            })
    return earned

# Escapes ' in names/emails so they don’t break the SQL.
def sql_escape(s):
    return s.replace("'", "''")

# Start with a comment and a DELETE command to clear old data.
sql_lines = ["-- AUTO-GENERATED SEED SCRIPT", "DELETE FROM public.profiles;", ""]

# Admin users- Hardcodes two admins into the SQL.
sql_lines += [
    "-- Admins",
    "INSERT INTO public.profiles (clerk_user_id, email, role, full_name) VALUES",
    "  ('admin_001', 'admin@learningplatform.com', 'admin', 'Dr. Sarah Johnson'),",
    "  ('admin_002', 'instructor@learningplatform.com', 'admin', 'Prof. Michael Chen');",
    ""
]

# Start student insert- Starts the bulk student INSERT statement.
sql_lines.append("-- Students")
sql_lines.append("INSERT INTO public.profiles")
sql_lines.append("(clerk_user_id, email, role, full_name, cohort, session_count, total_time_seconds, total_topics, achievements, last_session_ended_at)")
sql_lines.append("VALUES")

student_lines = []

# Loop 55 times, generating random data for each student
for i in range(1, NUM_STUDENTS + 1):
    cohort = COHORTS[0] if i <= 20 else COHORTS[1] if i <= 40 else COHORTS[2]
    name = fake.name()
    email = fake.unique.email()
    clerk_user_id = f"student_{i:03}"
    session_count = random.randint(0, 20)
    total_time = random.randint(0, 7200)
    topics = random.sample(TOPICS, k=random.randint(2, 5))
    achievements = random_achievements()
    last_session = fake.date_time_between(start_date='-10d', end_date='now').isoformat() + "Z"

    student_lines.append(
        f"  ('{clerk_user_id}', '{sql_escape(email)}', 'student', '{sql_escape(name)}', "
        f"'{cohort}', {session_count}, {total_time}, "
        f"'{{{','.join(topics)}}}', "
        f"'{json.dumps(achievements)}', "
        f"'{last_session}')"
    )

# Add commas and semicolon- Adds commas between rows, and a ; at the end.
for j in range(len(student_lines)):
    if j < len(student_lines) - 1:
        sql_lines.append(student_lines[j] + ",")
    else:
        sql_lines.append(student_lines[j] + ";")

# Write to file- Writes the final SQL into profiles_seed.sql.
with open("profiles_seed.sql", "w") as f:
    f.write("\n".join(sql_lines))

print("✅ profiles_seed.sql generated successfully with 55 student records.")
