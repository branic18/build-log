I'm on the integration team and this was my ticket: 

Integration - Engineer 18 - Developer documentation + demo prep
- Developer documentation (setup + contribution guide).
- Demo prep (seed users, sample lessons).

To start off my ticket, I broke this down into what exactly I needed to know to understand how to complete the ticket.

#### Issue Breakdown:

- Before I start: Understand how my work fits into my teammates tickets
    - Teammate 1- Testing the entire integration to see if everything works; fix if there are bugs
    - Teammate 2- Backend refinement
- Developer documentation (setup + contribution guide)
    - Create a rough developer documentation (setup, architecture overview, and contribution guidelines)
    - Get installation steps from teammate 1 when they’re done, so I can add it to the developer documentation
- Demo prep (seed users, sample lessons).
    - Understand HOW the data is relevant to the user journey and how it interconnects with other persona data
        - Break down the product features and purpose to better understand the user journey based on the persona; create 2 personas and 2 user flows
            - Deliverables:
                - Narrative script (giving overview of user journey)
                - **Visual step-by-step user journey**, showing:
                    - Screens they’ll interact with
                    - AI input/output
                    - Key decisions or actions
                - Mini demo presentation slides (create a branded presentation based off of RC)
        - Outcome: Understand WHAT data is needed
    - Understand WHERE to load the data
        - Outcome: Understand HOW the data will be loaded to determine WHAT format it should be in; the database design
            - **Demo Seed Data / Config (add where and how dev should add this seed data)**
                - JSON files for mock users, lessons, tasks, etc.
                - Pre-filled forms or default selections

### Starting Off

Met up with teammates to discuss tickets and how they relate to each other.

- Completed visually mapping out the data flow for the AI project to understand how the database structure will be and therefore what data could be loaded to the frontend. Completed the student data, still drawing out how the student data will be transmitted into the instructor view.
- Created a low-fi design of the AI learning platform based on the PRD. Then I created a hi-fi design. I wanted to simulate ChatGPT and other AI chatbot because I wanted to utilize Jakob’s Law- “that **users prefer interfaces that align with their established experiences and habits from other, familiar products and websites”.** We wanted a seamless onboarding experience for RC students to quickly enable them to reap the benefit of the tool, while not being concerned with how to use it.
- Read 3 articles about conversation design. Top insights being: conversation design isn’t interface or visual based, it’s language-based. This was interesting. It talk, not pun-intended, about how conversation design is used to build trust with a company’s user base. Different elements support this like being able to adapt to the user’s communication style and being aware of pattern changes in the conversation to better address the user’s frustration. It’s leaning more into content design than typical user experience, which shows and highlights that conversation and relationship-building a key part to support the business bottom-line. If the customer feels like they’re appropriately supported in their task, they’ll come back again. Also on the business-side of the frustration or stress, conversational AI supports help desk technicians filter out the smaller customer issues and focus on the ones that may need human advisory, whereas an AI would not be as efficient or wanted.
- I’m excited for what’s to come in this AI project, and hope to work more in the conversational design

### Understanding more of the seed data

- Seeding data means loading sample data into the database
- I would use a local script to run seed logic
- We’re going to have 2 different user accounts: student and instructor. That’s 2 different sign-ins. But 3 seed data files, to account for 2 students and 1 instructor to test the resulting logic for the instructor view.
    - “Supabase allows for seeding of authentication-related data, such as user records, within its database seeding process”
- Student mock data is completed, saved in word document. Instructor mock data is finalized with rough criteria for total active students, student completion, students struggling, and student hot topics. There aren't any defined criteria for this yet, but created them to provide some sort of guidance as we start the project.
- Going to figure out how to seed the mock data into the Supabase database.

### How do we load the seed data?

Are there specific configurations?: By default, if no specific configuration is provided, the system will look for a seed file matching the pattern `supabase/seed.sql`.

We’re using Supabase as the backend, I'll be using SQL, so I’ll have the seed data in that format.

Injecting it directly into Supabase using SQL scripting will work, but it's not repeatable. I'll be populating it using local scripts:


This is what I found from a quick Google search:

**Using `supabase/seed.sql` (Automated Seeding for Local Development):**

This is the recommended approach for populating your local Supabase database with initial data when using the Supabase CLI.

- [**Create or Edit `supabase/seed.sql`:**](https://www.google.com/search?client=safari&cs=1&sca_esv=3d074f00401c233b&sxsrf=AE3TifN3qkIh_xtNdBx07WKv71eg3jDhgQ%3A1758808881193&q=Create+or+Edit+supabase%2Fseed.sql&sa=X&ved=2ahUKEwiVs6DUifSPAxXvDDQIHW19J2AQxccNegQICBAD&mstk=AUtExfDv_v4A8DIOq4XfLjKkz5geV3NBF6BadKbFSS6bRyeRPYuUX4_rSqf2HaCf4428smuj5rLtwl8HGOyCgy7Vsxk6FvoK4V3wDOggJWSPe1_cd5JC6AVcF2x16hLrSbDx6aKCpuZ-m_5z5E-_ztRUruZaybMCEkuQflTVBPrnS4ULSEI&csui=3) Inside your Supabase project's root directory, there's a `supabase/seed.sql` file. This file will be automatically executed whenever you start your local Supabase instance using `supabase start` or `npm run supabase:start`.
- [**Add SQL INSERT Statements:**](https://www.google.com/search?client=safari&cs=1&sca_esv=3d074f00401c233b&sxsrf=AE3TifN3qkIh_xtNdBx07WKv71eg3jDhgQ%3A1758808881193&q=Add+SQL+INSERT+Statements&sa=X&ved=2ahUKEwiVs6DUifSPAxXvDDQIHW19J2AQxccNegQIDxAD&mstk=AUtExfDv_v4A8DIOq4XfLjKkz5geV3NBF6BadKbFSS6bRyeRPYuUX4_rSqf2HaCf4428smuj5rLtwl8HGOyCgy7Vsxk6FvoK4V3wDOggJWSPe1_cd5JC6AVcF2x16hLrSbDx6aKCpuZ-m_5z5E-_ztRUruZaybMCEkuQflTVBPrnS4ULSEI&csui=3) Populate this file with SQL `INSERT` statements to add data to your tables. For example:

Code

```
`INSERT INTO countries (name, code) VALUES ('United States', 'US'), ('Canada', 'CA');    INSERT INTO cities (name, country_id) VALUES ('New York', 1), ('Toronto', 2);`
```

- **Run Supabase:** When you run `supabase start`, the `seed.sql` file will be executed, and your database will be populated with the specified data.

==As a best practice, only include data insertions in your seed files, and avoid adding schema statements.==

Thus far I was convinced I had to use SQL, but after some digging into how the seed data would be affected by authentication, I found that SQL insertions are good for if you're not using Supabase Auth. Using Supabase Auth requires actual code, because it has more protection, so I'll have to use the Supabase Admin API or CLI. So: `auth.users` must be populated via code — **not** SQL.

The plan is to create the authenticated users and load the seed data within one file.

I loaded all of the mock data into a single script, so all of the seed data is in 1 file. I want to double check the syntax.

### Define the user schema

When the user schema is done I’ll be populating it with seed data. I met up with the person who was working on the user schema and we got aligned on what data it should take in. I shared the rough data flow diagrams I created to help them build the foundation and adjust items as needed.


### Implementation

1. ✅ Create mock data
2. Review the Supabase database to see what tables are created so I can accurately map the data to the database
3. Install dependencies: npm install dotenv @supabase/supabase-js
4. Create file for user authentication and insert mock data to be seeded into Supabase
5. Get environment variables:
	1. SUPABASE_URL
	2. SUPABASE_SERVICE_ROLE_KEY
6. Terminal command: npx tsx supabase/seed.ts
7. Check Supabase
8. Add to `package.json` scripts to make it easy to re-run:
	1. `"scripts": {   "seed": "node supabase/seed.js" }`
	2. Then run with: `npm run seed`
