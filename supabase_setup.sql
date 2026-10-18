-- Supabase Dashboard > SQL Editor > New query, paste this and click Run.
create table if not exists public.portfolios (
  id text primary key,
  user_id uuid not null references auth.users(id) on delete cascade,
  data jsonb not null,
  updated_at timestamptz not null default now()
);
alter table public.portfolios enable row level security;
drop policy if exists "Users can view own portfolios" on public.portfolios;
create policy "Users can view own portfolios" on public.portfolios for select to authenticated using (auth.uid() = user_id);
drop policy if exists "Users can add own portfolios" on public.portfolios;
create policy "Users can add own portfolios" on public.portfolios for insert to authenticated with check (auth.uid() = user_id);
drop policy if exists "Users can update own portfolios" on public.portfolios;
create policy "Users can update own portfolios" on public.portfolios for update to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
drop policy if exists "Users can delete own portfolios" on public.portfolios;
create policy "Users can delete own portfolios" on public.portfolios for delete to authenticated using (auth.uid() = user_id);
