CREATE TABLE users (
  id   SERIAL PRIMARY KEY,
  email VARCHAR(255) NOT NULL UNIQUE,
  phone VARCHAR(50) NOT NULL UNIQUE,
  address VARCHAR(255) NOT NULL DEFAULT '',
  created_at TIMESTAMP NOT NULL DEFAULT now(),
  updated_at TIMESTAMP NOT NULL DEFAULT now()
);
CREATE TABLE validation_codes (
    id SERIAL PRIMARY KEY,
    code VARCHAR(20) NOT NULL,
    email VARCHAR(255) NOT NULL,
    used_at TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);
CREATE TYPE kind AS ENUM ('expenses', 'in_come');
CREATE TABLE items (
  id   SERIAL PRIMARY KEY,
  user_id SERIAL NOT NULL,
  amount INTEGER NOT NULL,
  tag_ids INTEGER[] NOT NULL,
  kind kind NOT NULL,
  happened_at TIMESTAMP NOT NULL DEFAULT now(),
  created_at TIMESTAMP NOT NULL DEFAULT now(),
  updated_at TIMESTAMP NOT NULL DEFAULT now()
);
