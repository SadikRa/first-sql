 CREATE DATABASE storeServer;

 CREATE Table 'users' (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    
 )


--  CREATE TABLE users (
--     id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
--     name VARCHAR(100) NOT NULL,
--     email VARCHAR(150) UNIQUE NOT NULL,
--     password VARCHAR(255) NOT NULL,
--     isDeleted BOOLEAN DEFAULT FALSE,
--     createdAt TIMESTAMP DEFAULT NOW(),
--     updatedAt TIMESTAMP DEFAULT NOW()
-- );