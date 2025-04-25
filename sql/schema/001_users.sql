-- +goose Up
CREATE TABLE users (
  id UUID Primary Key,
  created_at Timestamp Not Null,
  updated_at Timestamp Not Null,
  name TEXT Not Null,
  unique (name)
);

-- +goose Down
DROP TABLE users;
