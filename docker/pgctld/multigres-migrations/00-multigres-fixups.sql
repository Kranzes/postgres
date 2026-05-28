-- Multigres Docker init fixups — equivalents of Ansible after-create hooks.
-- Runs as supabase_admin (the migrations role) after all standard migrations.

-- init-scripts run as postgres, so pgcrypto and uuid-ossp extowners are postgres.
-- Standard supabase expected output has supabase_admin as extowner.
ALTER EXTENSION pgcrypto OWNER TO supabase_admin;
ALTER EXTENSION "uuid-ossp" OWNER TO supabase_admin;
