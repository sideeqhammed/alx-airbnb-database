
Database normalization is an essential procedure to avoid inconsistency in a relational database management system. It should be performed in the design phase. 
Normal forms are defined structures for relations with set of constraints that relations must satisfy in order to detect data redundancy and correct anomalies. 
There can be following anomalies while performing a database operation:

insert: data is known but can not be inserted
update: updating data requires modifications in multiple tuples (rows)
delete: deleting some data causes some other data to be lost

### First Normal Form (1NF)
First normal form (1NF) is the simplest level of normalization. It involves ensuring that each table in the database has a primary key and that each column in the table contains atomic values. 
In other words, each row in the table should have a unique identifier, and each value in the table should be indivisible.

### Second Normal Form (2NF)
Second normal form (2NF) builds on the foundation of 1NF and involves ensuring that each non-key column in a table is dependent on the primary key. 
In other words, there should be no partial dependencies in the table.

### Third Normal Form (3NF)
Third normal form (3NF) builds on the foundation of 2NF and involves ensuring that each non-key column in a table is not transitively dependent on the primary key. 
In other words, there should be no transitive dependencies in the table.
