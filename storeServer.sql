CREATE DATABASE storeServer;

DROP DATABASE storeServer

CREATE EXTENSION IF NOT EXISTS "pgcrypto";

CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    isDeleted BOOLEAN DEFAULT FALSE,
    createdAt TIMESTAMP DEFAULT NOW(),
    updatedAt TIMESTAMP DEFAULT NOW()
);

INSERT INTO
    users (name, email, password)
VALUES (
        'sadik',
        'sadik@gmail.com',
        'sadik00'
    )

SELECT * FROM users;

CREATE Table product (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid () name VARCHAR(400) NOT NULL,
    quality VARCHAR(500) NOT NULL,
    quantity INT NOT NULL DEFAULT (0),
    isDeleted BOOLEAN DEFAULT FALSE,
    createdAt TIMESTAMP DEFAULT NOW(),
    updatedAt TIMESTAMP DEFAULT NOW()
)

