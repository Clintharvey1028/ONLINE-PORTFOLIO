# FolioFlow Portfolio Generator

A responsive portfolio builder with login and registration, three templates (Simple, Modern, Creative), preview/export, and Supabase cloud storage.

## Files
- `index.html` — pages and forms
- `style.css` — responsive visual design
- `script.js` — authentication, portfolio functions, and Supabase connection
- `supabase_setup.sql` — database table and row-level security rules

## Setup
1. Create a Supabase project.
2. In Supabase **SQL Editor**, run the contents of `supabase_setup.sql`.
3. Open `script.js` and replace `YOUR_SUPABASE_PROJECT_URL` and `YOUR_SUPABASE_PUBLISHABLE_KEY` with the Project URL and Publishable key from Supabase Project Settings / API.
4. Save the file, then open `index.html` with VS Code Live Server.
5. Register an account. If Supabase email confirmation is enabled, check your email before logging in.

Use only the **Publishable** key in browser code. Never use a secret or `service_role` key. This is a learning/demo project; use appropriate privacy settings and avoid entering sensitive personal information into public portfolios.
