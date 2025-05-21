1.Puzzle 1: Finding Distinct Values
Question: Explain at least two ways to find distinct values based on two columns.

Input table (InputTbl):
1.Method 1: Using DISTINCT in SQL
2.Method 2: Using GROUP BY in SQL

2.Puzzle 2: Removing Rows with All Zeroes
Question: If all the columns have zero values, then don’t show that row. In this case, we have to remove the 5th row while selecting data.

Table Schema:
SELECT *
FROM TestMultipleZero
WHERE NOT (A = 0 AND B = 0 AND C = 0 AND D = 0);
3.Puzzle 3: Find those with odd ids
SELECT *
FROM section1
WHERE id % 2 = 1;
4.Puzzle 4: Person with the smallest id (use the table in puzzle 3)
SELECT *
FROM section1
WHERE id = (SELECT MIN(id) FROM section1);
5.Puzzle 5: Person with the highest id (use the table in puzzle 3)
SELECT *
FROM section1
WHERE id = (SELECT MAX(id) FROM section1);
6.Puzzle 6: People whose name starts with b (use the table in puzzle 3)
SELECT *
FROM section1
WHERE name LIKE 'b%' OR name LIKE 'B%';

SELECT *
FROM section1
WHERE LOWER(name) LIKE 'b%';
7.Puzle 7: Write a query to return only the rows where the code contains the literal underscore _ (not as a wildcard).
  SELECT *
FROM ProductCodes
WHERE Code LIKE '%\_%' ESCAPE '\';





