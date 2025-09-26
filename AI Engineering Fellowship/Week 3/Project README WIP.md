
### Project Description

### Features

### Tech Stack

### Folder Structure

### Install Dependencies

### Set Up Environment Variables
Create a `.env.local` file with:
Never expose the `SERVICE_ROLE_KEY` or `OPENAI_API_KEY` to the frontend.

### Run the Dev Server
npm run dev

### 🧪 Testing

Coming soon — add unit/integration tests using your preferred tools (e.g. Jest, Playwright, Cypress).

### 🗃️ Supabase DB Setup
??? Use SQL editor to run schema migrations (`supabase/schema.sql`)
Run seed data- ????node supabase/seed.js

## 🛡️ Environment & Security

- Keep your `service_role_key` and `AI API keys` secret
- Protect API routes with user auth/session checking


### 📚 Useful Commands

| Command             | Description              |
| ------------------- | ------------------------ |
| `npm run dev`       | Start dev server         |
| `npm run build`     | Build for production     |
| `npm run seed`      | Run custom seed script   |
| `supabase db reset` | Reset and reapply schema |
