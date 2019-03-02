# Problem statement \#1

Imagine a simple application that requires a database. Represent the application data in a relational structure and implement the structure in a SQL Server database. The database must contain at least: 10 tables, two 1:n relationships, one m:n relationship.

Before you start working, send an e-mail to the lab assistant with the application for which you want to create the database, along with a short description. In case of conflicts, first in the list wins, so check existing entries here to make sure your topic hasn’t already been chosen.


# Problem statement \#2

### SQL Queries

On the relational structure created for the first lab, write SQL statements that:

* insert data – for at least 4 tables; at least one statement should violate referential integrity constraints;
* update data – for at least 3 tables;
* delete data – for at least 2 tables.
* In the UPDATE / DELETE statements, use at least once: {AND, OR, NOT},  {<,<=,=,>,>=,<> }, IS \[NOT] NULL, IN, BETWEEN, LIKE.

On the same database, write the following SELECT queries:
* 2 queries with the union operation; use UNION \[ALL] and OR;
* 2 queries with the intersection operation; use INTERSECT and IN;
* 2 queries with the difference operation; use EXCEPT and NOT IN;
* 4 queries with INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN; one query will join at least 3 tables, while another one will join at least two many-to-many relationships;
* 2 queries using the IN operator to introduce a subquery in the WHERE clause; in at least one query, the subquery should include a subquery in its own WHERE clause;
* 2 queries using the EXISTS operator to introduce a subquery in the WHERE clause;
* 2 queries with a subquery in the FROM clause;
* 4 queries with the GROUP BY clause, 3 of which also contain the HAVING clause; 2 of the latter will also have a subquery in the HAVING clause; use the aggregation operators: COUNT, SUM, AVG, MIN, MAX;
* 4 queries using ANY and ALL to introduce a subquery in the WHERE clause; 2 of them should be rewritten with aggregation operators, while the other 2 should also be expressed with \[NOT] IN.

You need to use:

* arithmetic expressions in the SELECT clause in at least 3 queries;
* conditions with AND, OR, NOT, and parentheses in the WHERE clause in at least 3 queries;
* DISTINCT in at least 3 queries, ORDER BY in at least 2 queries, and TOP in at least 2 queries.
### Obs.
* You can use views in at most 3 queries.
* You can change the relational structure created for the first lab.
* The queries must be relevant to the problem domain and provide data of interest to a potential user.

### Practical exam bonus
You can earn an extra point on the practical exam if you submit an interesting, original query (along with a short description) to your lab assistant by the end of week 6. The query needs to be useful to a potential user. The bonus point will go to the most creative queries. Good luck!

