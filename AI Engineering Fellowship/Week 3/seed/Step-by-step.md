## Create the seed data

1. Make sure you have the 'generate_profiles_seed.py' file present in the folder
2. Install Faker to create the fake accounts- pip3 install faker
3. Run 'python3 generate_profiles_seed.py'

Possible errors:

'bash: python: command not found'

- Solution: Most modern systems use python3 instead of python. Try: python3 generate_profiles_seed.py

'f"'{str(achievements).replace(\"'\", '\"')}', " ^ SyntaxError: unexpected character after line continuation character'

- Why: The original script had a complicated mix of quote escapes, and Python got confused by the backslashes and nested quotes.
- Solution: Use json.dumps() to safely serialize the achievements array, which is a better and cleaner way than doing manual quote escaping.

## Add the seed data

After running the script:

- Open the profiles_seed.sql file.
- Paste it into Supabase's SQL Editor and run it.
- ✅ You should now have 55 test users seeded into public.profiles.
- ✅ Validate Seeded Data-- Run the following validation queries to ensure your data is clean and compliant:
  -- Check total counts
  SELECT role, COUNT(\*) FROM public.profiles GROUP BY role;

-- Check cohort distribution  
SELECT cohort, COUNT(\*) FROM public.profiles WHERE role = 'student' GROUP BY cohort;

-- Check for duplicates
SELECT COUNT(\*) as total_profiles,
COUNT(DISTINCT clerk_user_id) as unique_ids,
COUNT(DISTINCT email) as unique_emails
FROM public.profiles;

-- Check invalid emails or missing names
SELECT clerk_user_id, email FROM public.profiles
WHERE email NOT LIKE '%@%' OR full_name IS NULL;

-- Inspect array formatting
SELECT clerk_user_id, total_topics FROM public.profiles
WHERE total_topics IS NOT NULL LIMIT 5;

-- Check JSON structure
SELECT achievements FROM public.profiles LIMIT 5;
**If all pass: you’re good. If errors appear, use the Troubleshooting section from your guide.**

✅ Smoke Test Checklist
Confirm each of the following:
At least 55 users
2–3 cohorts
2+ admin users
No duplicates in clerk_user_id or email
All achievements fields are valid JSON
All arrays (like total_topics) are properly formatted
All required fields are filled

Possible errors:

'The following potential issue has been detected: Ensure that these are intentional before executing this query. Query has destructive operation. Make sure you are not accidentally removing something important.'

- Why: You have a DELETE FROM public.profiles in the script
- Solution: Confirm there's no needed or already present user data within the databas, if not then run query

To see if there are already data in the table RUN: SELECT COUNT(\*) FROM public.profiles;

'ERROR: 42601: syntax error at or near "ON"
LINE 63: ON CONFLICT (clerk_user_id) DO NOTHING;'

- Where: ON CONFLICT (clerk_user_id) DO NOTHING;'
- Solution: ON CONFLICT (clerk_user_id) DO NOTHING has to be placed BEFORE the semi-colon right under all of the values

'ERROR: 42P01: relation "public.app_config" does not exist
QUERY: select value from public.app_config where key = 'default_avatar_url'
CONTEXT: PL/pgSQL function set_default_avatar() line 6 at SQL statement'

- Why: The trigger automatically sets a default avatar URL for a user if they don’t have one when their row is inserted into the public.profiles table.
- How: If the avatar_url column is NULL during insert rhen it will try to look up the default avatar URL from the public.app_config table (e.g., a placeholder image like https://cdn.app.com/default-avatar.png) and set that as the avatar URL for the new user.
- Solution: Add avatar_url to the schema seed data and add NULL where it corresponds to the position where you added 'avatar_url'

Drop the trigger:
DROP TRIGGER IF EXISTS trg_profiles_default_avatar ON public.profiles;

🧪 What to check after running
After you run the script successfully, verify:
-- Total number of users
SELECT COUNT(\*) FROM public.profiles; -- Should return 57

-- Breakdown by role
SELECT role, COUNT(\*) FROM public.profiles GROUP BY role;

-- Breakdown by cohort
SELECT cohort, COUNT(\*) FROM public.profiles GROUP BY cohort;

### Smoke Test Checklist

-- Check total counts
SELECT role, COUNT(\*) FROM public.profiles GROUP BY role;

-- Check cohort distribution  
SELECT cohort, COUNT(\*) FROM public.profiles WHERE role = 'student' GROUP BY cohort;

-- Check for duplicates
SELECT COUNT(\*) as total_profiles,
COUNT(DISTINCT clerk_user_id) as unique_ids,
COUNT(DISTINCT email) as unique_emails
FROM public.profiles;

-- Check invalid emails or missing names
SELECT clerk_user_id, email FROM public.profiles
WHERE email NOT LIKE '%@%' OR full_name IS NULL;

-- Inspect array formatting
SELECT clerk_user_id, total_topics FROM public.profiles
WHERE total_topics IS NOT NULL LIMIT 5;

-- Check JSON structure
SELECT achievements FROM public.profiles LIMIT 5;
