create table if not exists olitech_backup (id uuid primary key default gen_random_uuid(), dados jsonb not null, created_at timestamp with time zone default now());
