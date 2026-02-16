-- profiles_seed.sql
-- Sample data for AI Learning Platform (Sprint 1)
-- Creates 55+ users across 3 cohorts with realistic placeholder data

-- Clear existing data (uncomment if needed)
-- DELETE FROM public.profiles;

-- Insert admin users (2 admins)
INSERT INTO public.profiles 
  (clerk_user_id, email, role, full_name, cohort, session_count, total_time_seconds, total_topics, achievements)
VALUES 
  ('admin_001', 'admin@learningplatform.com', 'admin', 'Dr. Sarah Johnson', NULL, 0, 0, '{}', '[]'),
  ('admin_002', 'instructor@learningplatform.com', 'admin', 'Prof. Michael Chen', NULL, 0, 0, '{}', '[]');

-- Cohort 2026A Students (20 students)
INSERT INTO public.profiles 
  (clerk_user_id, email, role, full_name, cohort, session_count, total_time_seconds, total_topics, achievements, last_session_ended_at)
VALUES 
  ('student_001', 'alice.smith@university.edu', 'student', 'Alice Smith', '2026A', 8, 2400, '{"javascript","react"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-20T10:00:00Z"}]', '2025-09-25T14:30:00Z'),
  ('student_002', 'bob.jones@university.edu', 'student', 'Bob Jones', '2026A', 5, 1800, '{"python","django"}', '[]', '2025-09-24T16:45:00Z'),
  ('student_003', 'carol.davis@university.edu', 'student', 'Carol Davis', '2026A', 12, 3600, '{"javascript","nodejs","express"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-18T09:15:00Z"},{"slug":"ten-minutes","name":"Ten Minutes","earned_at":"2025-09-19T11:30:00Z"}]', '2025-09-25T13:20:00Z'),
  ('student_004', 'david.wilson@university.edu', 'student', 'David Wilson', '2026A', 3, 900, '{"html","css"}', '[]', '2025-09-23T12:00:00Z'),
  ('student_005', 'emma.taylor@university.edu', 'student', 'Emma Taylor', '2026A', 15, 4200, '{"react","typescript","graphql"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-15T14:00:00Z"}]', '2025-09-25T17:10:00Z'),
  ('student_006', 'frank.miller@university.edu', 'student', 'Frank Miller', '2026A', 7, 2100, '{"javascript","vue"}', '[]', '2025-09-24T11:15:00Z'),
  ('student_007', 'grace.anderson@university.edu', 'student', 'Grace Anderson', '2026A', 4, 1200, '{"python","flask"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-21T15:30:00Z"}]', '2025-09-25T09:45:00Z'),
  ('student_008', 'henry.thomas@university.edu', 'student', 'Henry Thomas', '2026A', 11, 3300, '{"java","spring","hibernate"}', '[]', '2025-09-25T16:20:00Z'),
  ('student_009', 'isabel.jackson@university.edu', 'student', 'Isabel Jackson', '2026A', 6, 1800, '{"javascript","angular"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-19T13:00:00Z"}]', '2025-09-24T14:30:00Z'),
  ('student_010', 'james.white@university.edu', 'student', 'James White', '2026A', 9, 2700, '{"python","fastapi","postgresql"}', '[]', '2025-09-25T12:00:00Z'),
  ('student_011', 'kate.harris@university.edu', 'student', 'Kate Harris', '2026A', 2, 600, '{"html","css","bootstrap"}', '[]', '2025-09-22T10:30:00Z'),
  ('student_012', 'liam.martin@university.edu', 'student', 'Liam Martin', '2026A', 13, 3900, '{"javascript","react","redux","mongodb"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-16T11:00:00Z"},{"slug":"ten-minutes","name":"Ten Minutes","earned_at":"2025-09-17T14:15:00Z"}]', '2025-09-25T15:45:00Z'),
  ('student_013', 'maya.garcia@university.edu', 'student', 'Maya Garcia', '2026A', 5, 1500, '{"python","django","sqlite"}', '[]', '2025-09-23T16:00:00Z'),
  ('student_014', 'noah.rodriguez@university.edu', 'student', 'Noah Rodriguez', '2026A', 8, 2400, '{"javascript","nodejs","express","jwt"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-20T09:30:00Z"}]', '2025-09-25T11:20:00Z'),
  ('student_015', 'olivia.lee@university.edu', 'student', 'Olivia Lee', '2026A', 10, 3000, '{"react","typescript","testing"}', '[]', '2025-09-24T13:45:00Z'),
  ('student_016', 'peter.walker@university.edu', 'student', 'Peter Walker', '2026A', 4, 1200, '{"java","maven"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-22T08:15:00Z"}]', '2025-09-24T17:30:00Z'),
  ('student_017', 'quinn.hall@university.edu', 'student', 'Quinn Hall', '2026A', 7, 2100, '{"python","machine-learning","numpy"}', '[]', '2025-09-25T10:15:00Z'),
  ('student_018', 'ruby.allen@university.edu', 'student', 'Ruby Allen', '2026A', 6, 1800, '{"javascript","svelte"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-21T12:45:00Z"}]', '2025-09-24T15:20:00Z'),
  ('student_019', 'sam.young@university.edu', 'student', 'Sam Young', '2026A', 14, 4200, '{"javascript","react","nextjs","vercel"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-17T10:30:00Z"},{"slug":"ten-minutes","name":"Ten Minutes","earned_at":"2025-09-18T13:20:00Z"}]', '2025-09-25T18:00:00Z'),
  ('student_020', 'tara.king@university.edu', 'student', 'Tara King', '2026A', 3, 900, '{"html","css","sass"}', '[]', '2025-09-23T14:10:00Z');

-- Cohort 2026B Students (20 students)  
INSERT INTO public.profiles 
  (clerk_user_id, email, role, full_name, cohort, session_count, total_time_seconds, total_topics, achievements, last_session_ended_at)
VALUES 
  ('student_021', 'adam.wright@university.edu', 'student', 'Adam Wright', '2026B', 6, 1800, '{"python","flask","sqlalchemy"}', '[]', '2025-09-24T10:30:00Z'),
  ('student_022', 'bella.lopez@university.edu', 'student', 'Bella Lopez', '2026B', 9, 2700, '{"java","spring","mysql"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-22T08:45:00Z"}]', '2025-09-25T15:20:00Z'),
  ('student_023', 'caleb.hill@university.edu', 'student', 'Caleb Hill', '2026B', 4, 1200, '{"javascript","electron"}', '[]', '2025-09-23T11:00:00Z'),
  ('student_024', 'diana.scott@university.edu', 'student', 'Diana Scott', '2026B', 11, 3300, '{"python","data-science","pandas"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-19T14:20:00Z"}]', '2025-09-25T12:40:00Z'),
  ('student_025', 'ethan.green@university.edu', 'student', 'Ethan Green', '2026B', 7, 2100, '{"javascript","react","material-ui"}', '[]', '2025-09-24T16:15:00Z'),
  ('student_026', 'fiona.adams@university.edu', 'student', 'Fiona Adams', '2026B', 5, 1500, '{"ruby","rails","postgresql"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-21T10:00:00Z"}]', '2025-09-24T13:30:00Z'),
  ('student_027', 'gabriel.baker@university.edu', 'student', 'Gabriel Baker', '2026B', 8, 2400, '{"javascript","vue","vuex"}', '[]', '2025-09-25T14:45:00Z'),
  ('student_028', 'hannah.gonzalez@university.edu', 'student', 'Hannah Gonzalez', '2026B', 12, 3600, '{"python","django","redis","celery"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-18T12:30:00Z"},{"slug":"ten-minutes","name":"Ten Minutes","earned_at":"2025-09-19T15:45:00Z"}]', '2025-09-25T17:20:00Z'),
  ('student_029', 'ivan.nelson@university.edu', 'student', 'Ivan Nelson', '2026B', 3, 900, '{"go","gin"}', '[]', '2025-09-22T09:15:00Z'),
  ('student_030', 'jade.carter@university.edu', 'student', 'Jade Carter', '2026B', 10, 3000, '{"javascript","react","graphql","apollo"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-20T11:20:00Z"}]', '2025-09-25T13:50:00Z'),
  ('student_031', 'kyle.mitchell@university.edu', 'student', 'Kyle Mitchell', '2026B', 6, 1800, '{"rust","actix"}', '[]', '2025-09-24T12:10:00Z'),
  ('student_032', 'luna.perez@university.edu', 'student', 'Luna Perez', '2026B', 9, 2700, '{"javascript","nodejs","socket-io"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-21T14:40:00Z"}]', '2025-09-25T16:30:00Z'),
  ('student_033', 'mason.roberts@university.edu', 'student', 'Mason Roberts', '2026B', 4, 1200, '{"php","laravel"}', '[]', '2025-09-23T15:25:00Z'),
  ('student_034', 'nora.turner@university.edu', 'student', 'Nora Turner', '2026B', 13, 3900, '{"python","fastapi","docker","kubernetes"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-17T13:15:00Z"},{"slug":"ten-minutes","name":"Ten Minutes","earned_at":"2025-09-18T16:30:00Z"}]', '2025-09-25T18:15:00Z'),
  ('student_035', 'oscar.phillips@university.edu', 'student', 'Oscar Phillips', '2026B', 7, 2100, '{"javascript","angular","rxjs"}', '[]', '2025-09-24T14:20:00Z'),
  ('student_036', 'penny.campbell@university.edu', 'student', 'Penny Campbell', '2026B', 5, 1500, '{"swift","ios"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-22T11:50:00Z"}]', '2025-09-24T17:40:00Z'),
  ('student_037', 'quincy.parker@university.edu', 'student', 'Quincy Parker', '2026B', 8, 2400, '{"kotlin","android","jetpack"}', '[]', '2025-09-25T11:35:00Z'),
  ('student_038', 'rose.evans@university.edu', 'student', 'Rose Evans', '2026B', 11, 3300, '{"javascript","react","nextjs","tailwind"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-19T10:25:00Z"}]', '2025-09-25T15:55:00Z'),
  ('student_039', 'simon.edwards@university.edu', 'student', 'Simon Edwards', '2026B', 2, 600, '{"html","css"}', '[]', '2025-09-21T16:20:00Z'),
  ('student_040', 'tina.collins@university.edu', 'student', 'Tina Collins', '2026B', 14, 4200, '{"python","django","aws","terraform"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-09-16T09:40:00Z"},{"slug":"ten-minutes","name":"Ten Minutes","earned_at":"2025-09-17T12:55:00Z"}]', '2025-09-25T19:10:00Z');

-- Cohort 2025-Fall Students (15 students - older cohort with more experience)
INSERT INTO public.profiles 
  (clerk_user_id, email, role, full_name, cohort, session_count, total_time_seconds, total_topics, achievements, last_session_ended_at)
VALUES 
  ('student_041', 'alex.stewart@university.edu', 'student', 'Alex Stewart', '2025-Fall', 18, 5400, '{"javascript","react","nodejs","mongodb","aws"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-08-15T10:00:00Z"},{"slug":"ten-minutes","name":"Ten Minutes","earned_at":"2025-08-16T11:00:00Z"}]', '2025-09-20T14:00:00Z'),
  ('student_042', 'blake.sanchez@university.edu', 'student', 'Blake Sanchez', '2025-Fall', 16, 4800, '{"python","django","postgresql","docker"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-08-20T09:30:00Z"}]', '2025-09-19T16:45:00Z'),
  ('student_043', 'chloe.morris@university.edu', 'student', 'Chloe Morris', '2025-Fall', 20, 6000, '{"java","spring","microservices","kafka"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-08-12T14:20:00Z"},{"slug":"ten-minutes","name":"Ten Minutes","earned_at":"2025-08-13T10:15:00Z"}]', '2025-09-18T13:30:00Z'),
  ('student_044', 'derek.rogers@university.edu', 'student', 'Derek Rogers', '2025-Fall', 15, 4500, '{"javascript","vue","nuxt","firebase"}', '[]', '2025-09-17T11:20:00Z'),
  ('student_045', 'elena.reed@university.edu', 'student', 'Elena Reed', '2025-Fall', 17, 5100, '{"python","machine-learning","tensorflow","jupyter"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-08-18T13:45:00Z"}]', '2025-09-21T15:10:00Z'),
  ('student_046', 'felix.cook@university.edu', 'student', 'Felix Cook', '2025-Fall', 19, 5700, '{"rust","webassembly","blockchain"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-08-14T11:30:00Z"},{"slug":"ten-minutes","name":"Ten Minutes","earned_at":"2025-08-15T14:45:00Z"}]', '2025-09-22T12:40:00Z'),
  ('student_047', 'gina.bailey@university.edu', 'student', 'Gina Bailey', '2025-Fall', 14, 4200, '{"go","grpc","kubernetes","helm"}', '[]', '2025-09-16T17:25:00Z'),
  ('student_048', 'hugo.rivera@university.edu', 'student', 'Hugo Rivera', '2025-Fall', 16, 4800, '{"javascript","react","graphql","prisma"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-08-19T12:10:00Z"}]', '2025-09-20T10:50:00Z'),
  ('student_049', 'iris.cooper@university.edu', 'student', 'Iris Cooper', '2025-Fall', 18, 5400, '{"python","fastapi","celery","redis","elasticsearch"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-08-16T15:20:00Z"},{"slug":"ten-minutes","name":"Ten Minutes","earned_at":"2025-08-17T09:35:00Z"}]', '2025-09-23T14:15:00Z'),
  ('student_050', 'jack.richardson@university.edu', 'student', 'Jack Richardson', '2025-Fall', 15, 4500, '{"swift","swiftui","core-data"}', '[]', '2025-09-18T16:30:00Z'),
  ('student_051', 'kira.cox@university.edu', 'student', 'Kira Cox', '2025-Fall', 17, 5100, '{"kotlin","android","room","retrofit"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-08-21T10:40:00Z"}]', '2025-09-19T13:55:00Z'),
  ('student_052', 'leo.ward@university.edu', 'student', 'Leo Ward', '2025-Fall', 19, 5700, '{"javascript","angular","ngrx","cypress"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-08-13T16:25:00Z"},{"slug":"ten-minutes","name":"Ten Minutes","earned_at":"2025-08-14T12:50:00Z"}]', '2025-09-24T11:20:00Z'),
  ('student_053', 'mia.torres@university.edu', 'student', 'Mia Torres', '2025-Fall', 20, 6000, '{"python","django","celery","rabbitmq","prometheus"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-08-11T14:15:00Z"},{"slug":"ten-minutes","name":"Ten Minutes","earned_at":"2025-08-12T11:30:00Z"}]', '2025-09-25T17:45:00Z'),
  ('student_054', 'nick.peterson@university.edu', 'student', 'Nick Peterson', '2025-Fall', 16, 4800, '{"javascript","nodejs","express","mongodb","socket-io"}', '[]', '2025-09-21T12:10:00Z'),
  ('student_055', 'olga.gray@university.edu', 'student', 'Olga Gray', '2025-Fall', 18, 5400, '{"java","spring-boot","hibernate","junit","maven"}', '[{"slug":"first-chat","name":"First Chat","earned_at":"2025-08-17T13:55:00Z"}]', '2025-09-22T15:35:00Z');

-- Verify the seed data
SELECT 
    'Total Users' as metric, 
    COUNT(*) as count 
FROM public.profiles
UNION ALL
SELECT 
    'Students', 
    COUNT(*) 
FROM public.profiles 
WHERE role = 'student'
UNION ALL
SELECT 
    'Admins', 
    COUNT(*) 
FROM public.profiles 
WHERE role = 'admin'
UNION ALL
SELECT 
    'Cohort 2026A', 
    COUNT(*) 
FROM public.profiles 
WHERE cohort = '2026A'
UNION ALL
SELECT 
    'Cohort 2026B', 
    COUNT(*) 
FROM public.profiles 
WHERE cohort = '2026B'
UNION ALL
SELECT 
    'Cohort 2025-Fall', 
    COUNT(*) 
FROM public.profiles 
WHERE cohort = '2025-Fall';
