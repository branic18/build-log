# Seeding Guide — AI Learning Platform

This guide helps you populate the `profiles` table with test data for development and testing.

## Overview

For Sprint 1, you need at least **55 test users** across 2-3 cohorts with realistic placeholder data.

## Required vs Optional Columns

### Required Fields
- `clerk_user_id` (text) — Must be unique, use format like `user_stu_001`, `user_adm_001`
- `email` (text) — Must be unique, use realistic emails
- `role` (app_role) — Either `'student'` or `'admin'`
- `full_name` (text) — Display name for the user

### Optional Fields (with defaults)
- `cohort` (text) — Use format like `'2026A'`, `'2026B'`, or `'2025-Fall'`
- `session_count` (integer) — Defaults to 0, use 0-20 for realistic data
- `total_time_seconds` (integer) — Defaults to 0, use 0-7200 (2 hours max)
- `total_topics` (text[]) — Defaults to empty array, use `['javascript','react']` format
- `achievements` (jsonb) — Defaults to empty array, see JSON format below
- `last_session_ended_at` (timestamptz) — Can be null or recent timestamp

## Value Ranges & Recommendations

### Cohort Formats
Choose one consistent format:
- **Semester Style**: `'2026A'`, `'2026B'`, `'2026C'`
- **Season Style**: `'2025-Fall'`, `'2026-Spring'`, `'2026-Summer'`

### Realistic Metrics
- **Session Count**: 0-20 sessions (most students: 3-8)
- **Time Seconds**: 0-7200 seconds (0-2 hours total)
- **Topics**: Keep to 2-5 topics max: `['javascript','react','nodejs']`

### Achievement JSON Format
```json
[
  {
    "slug": "first-chat",
    "name": "First Chat", 
    "description": "Completed your first chatbot session",
    "earned_at": "2025-09-24T14:00:00Z"
  },
  {
    "slug": "ten-minutes",
    "name": "Ten Minutes",
    "description": "Spent 10 minutes learning",
    "earned_at": "2025-09-25T10:30:00Z"
  }
]
```

## Sample INSERT Script

Create `db/seeds/profiles_seed.sql`:

```sql
-- Clear existing data (optional)
DELETE FROM public.profiles;

-- Insert admin users
INSERT INTO public.profiles 
  (clerk_user_id, email, role, full_name, cohort, session_count, total_time_seconds, total_topics, achievements)
VALUES 
  ('admin_001', 'admin@learningplatform.com', 'admin', 'Dr. Sarah Johnson', NULL, 0, 0, '{}', '[]'),
  ('admin_002', 'instructor@learningplatform.com', 'admin', 'Prof. Michael Chen', NULL, 0, 0, '{}', '[]');

-- Insert students for Cohort 2026A
INSERT INTO public.profiles 
  (clerk_user_id, email, role, full_name, cohort, session_count, total_time_seconds, total_topics, achievements, last_session_ended_at)
VALUES 
  ('student_001', 'alice.smith@university.edu', 'student', 'Alice Smith', '2026A', 8, 2400, '["javascript","react"]', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-20T10:00:00Z"}]', '2025-09-25T14:30:00Z'),
  ('student_002', 'bob.jones@university.edu', 'student', 'Bob Jones', '2026A', 5, 1800, '["python","django"]', '[]', '2025-09-24T16:45:00Z'),
  ('student_003', 'carol.davis@university.edu', 'student', 'Carol Davis', '2026A', 12, 3600, '["javascript","nodejs","express"]', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-18T09:15:00Z"},{"slug":"ten-minutes","name":"Ten Minutes","earned_at":"2025-09-19T11:30:00Z"}]', '2025-09-25T13:20:00Z'),
  -- Add 17 more students for 2026A (20 total)
  ('student_004', 'david.wilson@university.edu', 'student', 'David Wilson', '2026A', 3, 900, '["html","css"]', '[]', '2025-09-23T12:00:00Z'),
  ('student_005', 'emma.taylor@university.edu', 'student', 'Emma Taylor', '2026A', 15, 4200, '["react","typescript","graphql"]', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-15T14:00:00Z"}]', '2025-09-25T17:10:00Z');
  -- Continue pattern...

-- Insert students for Cohort 2026B  
INSERT INTO public.profiles 
  (clerk_user_id, email, role, full_name, cohort, session_count, total_time_seconds, total_topics, achievements, last_session_ended_at)
VALUES 
  ('student_021', 'frank.brown@university.edu', 'student', 'Frank Brown', '2026B', 6, 1500, '["python","flask"]', '[]', '2025-09-24T10:30:00Z'),
  ('student_022', 'grace.lee@university.edu', 'student', 'Grace Lee', '2026B', 9, 2700, '["java","spring"]', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-22T08:45:00Z"}]', '2025-09-25T15:20:00Z');
  -- Add 18 more students for 2026B (20 total)

-- Insert students for Cohort 2025-Fall (older cohort)
INSERT INTO public.profiles 
  (clerk_user_id, email, role, full_name, cohort, session_count, total_time_seconds, total_topics, achievements, last_session_ended_at)
VALUES 
  ('student_041', 'henry.garcia@university.edu', 'student', 'Henry Garcia', '2025-Fall', 18, 5400, '["javascript","react","nodejs","mongodb"]', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-08-15T10:00:00Z"},{"slug":"ten-minutes","name":"Ten Minutes","earned_at":"2025-08-16T11:00:00Z"}]', '2025-09-20T14:00:00Z');
  -- Add 14 more students for 2025-Fall (15 total)
```

## CSV Import Alternative

For bulk import, create a CSV file and use PostgreSQL's COPY command:

### 1. Create `profiles_bulk.csv`:
```csv
clerk_user_id,email,role,full_name,cohort,session_count,total_time_seconds,total_topics,achievements
student_001,alice.smith@university.edu,student,Alice Smith,2026A,8,2400,"{javascript,react}","[{""slug"":""first-chat"",""name"":""First Chat"",""earned_at"":""2025-09-20T10:00:00Z""}]"
student_002,bob.jones@university.edu,student,Bob Jones,2026A,5,1800,"{python,django}","[]"
```

### 2. Import using COPY:
```sql
COPY public.profiles (clerk_user_id, email, role, full_name, cohort, session_count, total_time_seconds, total_topics, achievements)
FROM '/path/to/profiles_bulk.csv'
DELIMITER ','
CSV HEADER;
```

## Troubleshooting

### Common Issues

**1. Unique Constraint Violations**
```
ERROR: duplicate key value violates unique constraint "profiles_clerk_user_id_key"
```
**Solution**: Ensure all `clerk_user_id` and `email` values are unique.

**2. Invalid JSON in achievements**
```
ERROR: invalid input syntax for type json
```
**Solution**: Validate JSON format. Use online JSON validators or:
```sql
SELECT '[]'::jsonb; -- Should return valid empty array
```

**3. Invalid Enum Value**
```
ERROR: invalid input value for enum app_role: "teacher"
```
**Solution**: Only use `'student'` or `'admin'` for the role field.

**4. Array Format Issues**
```
ERROR: malformed array literal
```
**Solution**: Use PostgreSQL array format: `'{"item1","item2"}'` or `ARRAY['item1','item2']`

### Validation Queries

Run these to verify your seed data:

```sql
-- Check total counts
SELECT role, COUNT(*) FROM public.profiles GROUP BY role;

-- Check cohort distribution  
SELECT cohort, COUNT(*) FROM public.profiles WHERE role = 'student' GROUP BY cohort;

-- Verify unique constraints
SELECT COUNT(*) as total_profiles, 
       COUNT(DISTINCT clerk_user_id) as unique_clerk_ids,
       COUNT(DISTINCT email) as unique_emails
FROM public.profiles;

-- Check for invalid data
SELECT clerk_user_id, email FROM public.profiles 
WHERE email NOT LIKE '%@%' OR full_name IS NULL;
```

## Smoke Test Checklist

After seeding, verify:

- [ ] At least 55 total users
- [ ] 2-3 different cohorts represented
- [ ] 2-3 admin users exist
- [ ] No duplicate `clerk_user_id` or `email` values
- [ ] All `achievements` fields contain valid JSON
- [ ] All `total_topics` arrays are properly formatted
- [ ] Session counts and time values are realistic (0-20 sessions, 0-7200 seconds)

## Integration with Clerk (Future Sprint)

**Note**: In Sprint 1, these are placeholder `clerk_user_id` values. In Sprint 2:
- Replace with real Clerk user IDs from your Clerk dashboard
- Set up Clerk webhooks to auto-create profiles
- Implement proper user sync between Clerk and your database

For now, the placeholder IDs work perfectly for testing the API routes and RLS policies.
