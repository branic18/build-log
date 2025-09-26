import { createClient } from '@supabase/supabase-js'
import dotenv from 'dotenv'

dotenv.config()

const supabase = createClient(
  process.env.SUPABASE_URL!, //  Tells the compiler “I promise this isn’t undefined” — no runtime check
  process.env.SUPABASE_SERVICE_ROLE_KEY!
)

async function seed() {
  // Define users and their sessions
  const users = [
    {
      email: '`aisha.rivera@example.com`',
      password: 'password123',
      first_name: 'Aisha',
      last_name: 'Rivera',
      cohort: '2026a',
      session_count: 3,
      sessions: [
        { start: '2025-09-20T08:00:00Z', end: '2025-09-20T08:45:00Z', session_time: 45, topics: ["HTML", "CSS"] },
        { start: '2025-09-21T09:30:00Z', end: '2025-09-21T10:10:00Z', session_time: 40, topics: ["JavaScript"]},
        { start: '2025-09-23T07:15:00Z', end: '2025-09-23T08:00:00Z', session_time: 45, topics: ["HTML", "JavaScript", "Node.js", "MongoDB"]}
      ],
      topics_learned: ["HTML", "CSS",  "JavaScript", "Node.js", "MongoDB"],
      total_time: 130,
      achievements_count: 3,
      achievements: [        
        {achievement_name: "First Chat", achievement_description: "Completed your first chatbot session."},
        {achievement_name: "First 30", achievement_description: "Spent 30+ minutes learning with the chatbot."},
        {achievement_name: "Deep Dive", achievement_description: "2+ hours of total chatbot learning."}
      ]
    },
    {
      email: 'jamal.okoro@example.com',
      password: 'password456',
      first_name: 'Jamal',
      last_name: 'Okoro',
      cohort: '2026a',
      session_count: 3,
      sessions: [
        { start: '2025-09-20T11:00:00Z', end: '2025-09-20T11:30:00Z', session_time: 30, topics: ["CSS", "JavaScript"]},
        { start: '2025-09-22T12:00:00Z', end: '2025-09-22T12:50:00Z', session_time: 50, topics: ["HTML", "CSS", "Node.js", "Express.js"]},
        { start: '2025-09-24T13:15:00Z', end: '2025-09-24T14:00:00Z', session_time: 30, topics: ["JavaScript"] }
      ],
      topics_learned: ["HTML", "CSS",  "JavaScript", "Node.js", "React.js"],
      total_time: 110,
      achievements_count: 3,
      achievements: [        
        {achievement_name: "First Chat", achievement_description: "Completed your first chatbot session."},
        {achievement_name: "First 30", achievement_description: "Spent 30+ minutes learning with the chatbot."},
        {achievement_name: "Frontend Finisher", achievement_description: "Completed all frontend topics."}
      ]
    }
  ]

  for (const user of users) {
    // Step 1: Create Auth user
    const { data: authUser, error: createError } = await supabase.auth.admin.createUser({
      email: user.email, // <--- ADD CREATED USER EMAIL HERE
      password: user.password, // <--- ADD CREATED USER PASSWORD HERE
      user_metadata: { name: user.name },
      email_confirm: true
    })

    if (createError) {
      console.error(`❌ Failed to create user ${user.email}:`, createError.message)
      continue
    }

    const userId = authUser.user.id
    console.log(`✅ Created user ${user.email} with ID: ${userId}`)

    // Step 2: Create sessions
    const sessionData = user.sessions.map((session) => ({
      user_id: userId, // <--- ADD CREATED USER ID HERE
      start_time: session.start,
      end_time: session.end
    }))

    // Inserting session date
    const { error: sessionError } = await supabase.from('sessions').insert(sessionData)

    if (sessionError) {
      console.error(`❌ Failed to insert sessions for ${user.email}:`, sessionError.message)
    } else {
      console.log(`✅ Inserted ${sessionData.length} sessions for ${user.email}`)
    }
  }

  console.log('🌱 Seeding complete.')
}

seed()
