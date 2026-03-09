## 🛠️ What I worked on

- Communicating with people working on the frontend 
- Did more research on and thought about how Cursor could be implemented to make the frontend process easier, espcially for people not confident working in the frontend, but also keep things consistent

## 📚 What I learned

- Learned more about what would make for a better frontend process for future sprints.
- I was looking into using Headless UI a bit more, and we could use Tailwind + markdown design guidelines to help a Cursor skill generate components, but it comes with more moving parts. Headless UI has 16 logic-based components, so a Cursor skill would need to generate styled wrappers for almost everything and we’d need a markdown file for the Cursor skill to read from so it can implement consistent Tailwind styling. This increases complexity. With shadcn, the component logic and Tailwind styling are naturally built into the library, and it has 59 components to choose from. So we can add components ourselves, but use the Cursor skill to mainly focus on creating custom components or feature-specific compositions, which I think is more efficient. Since the components already exist concretely, the Cursor skill has a clearer reference than it would from a markdown design file, if it needed to create custom components. So I'm thinking shadcn might be more straightforward with it naturally having the logic + styling already built in, so it’s easier to jump in sprint to sprint

## 🌟 What went well

- Decided on a design system library- shadcn and a streamlined frontend flow for future sprints


## ⛔️ What blocked me

- The repo not being fully implemented, hard to know what the structure will look like and how my components will fit in

## ☀️ Next steps

- Start creating a Cursor skill to help keep the frontend consistent throughout the project
- Try to pull the remote branch that had the repo structure and try to work from that and start implementing shadcn components