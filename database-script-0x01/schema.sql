
--- create user table
CREATE TABLE User (
  user_id: Primary Key, UUID, Indexed,
  first_name: VARCHAR, NOT NULL,
  last_name: VARCHAR, NOT NULL,
  email: VARCHAR, UNIQUE, NOT NULL,
  password_hash: VARCHAR, NOT NULL,
  phone_number: VARCHAR, NULL,
  role: ENUM (guest, host, admin), NOT NULL,
  created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
);
