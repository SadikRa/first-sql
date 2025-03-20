-- Active: 1742403835853@@127.0.0.1@5432@ph@public

SELECT * FROM person2;

ALTER TABLE person2
ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

INSERT INTO person2 VALUES(5, 'test', 24, 'sadik@gmail.com')


ALTER TABLE person2
 DROP COLUMN email

 ALTER TABLE person2
 RENAME COLUMN age to user_age

 ALTER TABLE person2
  ALTER COLUMN user_name TYPE VARCHAR(50);

  ALTER Table person2
        ALTER COLUMN user_age set NOT NULL


  ALTER Table person2
        ALTER COLUMN user_age DROP NOT NULL


ALTER TABLE person2 
      ADD constraint unique_person2_user_age UNIQUE(user_age);

ALTER TABLE person2 
      DROP constraint unique_person2_user_age