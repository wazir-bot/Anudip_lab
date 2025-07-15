mysql> CREATE DATABASE LibraryDB;
Query OK, 1 row affected (0.01 sec)

mysql>
mysql> USE LibraryDB;
Database changed
mysql>
mysql> CREATE TABLE Authors (
    ->     author_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     name VARCHAR(100) NOT NULL
    -> );
Query OK, 0 rows affected (0.04 sec)


mysql>
mysql> CREATE TABLE Books (
    ->     book_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     title VARCHAR(255) NOT NULL,
    ->     author_id INT,
    ->     FOREIGN KEY (author_id) REFERENCES Authors(author_id)
    -> );

Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO Authors (name) VALUES ('J.K. Rowling');
Query OK, 1 row affected (0.01 sec)


mysql> INSERT INTO Authors (name) VALUES ('George Orwell');
Query OK, 1 row affected (0.01 sec)


mysql> INSERT INTO Authors (name) VALUES ('J.R.R. Tolkien');
Query OK, 1 row affected (0.00 sec)


mysql>
mysql> INSERT INTO Books (title, author_id) VALUES ('Harry Potter', 1);
Query OK, 1 row affected (0.01 sec)


mysql> INSERT INTO Books (title, author_id) VALUES ('1984', 2);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO Books (title, author_id) VALUES ('The Hobbit', 3);
Query OK, 1 row affected (0.00 sec)

mysql> SELECT b.title, a.name AS author_name
    -> FROM Books b
    -> JOIN Authors a ON b.author_id = a.author_id;
+--------------+----------------+
| title        | author_name    |
+--------------+----------------+
| Harry Potter | J.K. Rowling   |
| 1984         | George Orwell  |
| The Hobbit   | J.R.R. Tolkien |
+--------------+----------------+
3 rows in set (0.00 sec)


mysql>