## Database Normalization
Database normalization is an essential procedure to avoid inconsistency in a relational database management system. It should be performed in the design phase. 
Normal forms are defined structures for relations with set of constraints that relations must satisfy in order to detect data redundancy and correct anomalies. 
There can be following anomalies while performing a database operation:

insert: data is known but can not be inserted
update: updating data requires modifications in multiple tuples (rows)
delete: deleting some data causes some other data to be lost

### First Normal Form (1NF)

A table is in 1NF if: 
- Each row in the table should have a unique identifier
- Each value in the table is indivisible.
- All entries in a column are of the same type.

### Second Normal Form (2NF)

Second normal form (2NF) builds on the foundation of 1NF 

A table is in 2NF if:
- The table is in 1NF
- Each non-key column in the table is dependent on the primary key (i.e. no partial dependencies in the table).

### Third Normal Form (3NF)
Third normal form (3NF) builds on the foundation of 2NF 

a table is in 2NF if: 
- The table is in 2NF
- Each non-key column in a table is not transitively dependent on the primary key (i.e. no transitive dependencies). 
