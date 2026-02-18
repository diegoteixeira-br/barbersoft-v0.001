
-- 1. Delete the duplicate company (no units/related data exist)
DELETE FROM companies WHERE id = 'f50d4ea9-474a-48cd-9d6d-f1c374abd44a';

-- 2. Add unique constraint to prevent future duplicates
ALTER TABLE companies ADD CONSTRAINT unique_owner_user_id UNIQUE (owner_user_id);
