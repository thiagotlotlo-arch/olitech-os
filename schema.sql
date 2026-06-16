-- OLITECH ERP V44 - SCHEMA SUPABASE OPCIONAL
create table if not exists olitech_backup (
  id uuid primary key default gen_random_uuid(),
  user_id text,
  tipo text default 'backup',
  dados jsonb not null,
  created_at timestamp with time zone default now()
);

create table if not exists olitech_config (
  id text primary key default 'default',
  dados jsonb not null default '{}'::jsonb,
  updated_at timestamp with time zone default now()
);
