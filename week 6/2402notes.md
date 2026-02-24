Relational Data (E-R Diagrams) 

SQL 

SELECT * FROM particles WHERE mass > 10;

Entities (things we store data about)
Attributes (details about those things)
Relationships (How entities are connected)

Document / Object => JSON API 

Flat / Matrix => CSV, Dataframes 

Conceptual design -> ERD 
logical -> DBMS independent 
physical -> Implementation SQL, Postgres

Entities (Table)
Attributes (Columns) 
Relationshipe 

Primary Key (Unique key for each row), Foreign Key (Attribute that links a table to another table's primary key)


We could use SQL to process data from the reinforcement learning
Implement data design 

Relationship cardinality 

What should the structure of the database be?

JSON tree modelling 

SQL core commands: 

Create: INSERT INTO particles (mass, speed) VALUES (10.5, 299); 
Read:    SELECT * FROM particles WHERE mass > 10;
Update: UPDATE particles SET speed = 0 WHERE id = 1; 
Delete:  DELETE FROM particles WHERE id = 5;



