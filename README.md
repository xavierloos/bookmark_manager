## User Stories

```
As a user
so I can see my bookmarks
I like to see the LIST of all my BOOKMARKS
```

<!-- ```
As a user
so I can mantain the bookmarks
I would like to add, delete and update a specific bookmark
```

```
As a user
so I can keep track
I would like to comment or add a description
```

```
As a user
so I can organize my bookmarks
I would like to tag my bookmarks into categories
```

```
As a user
so I can retreive specific bookmark
I would like to filter my bookmarks by TAG
```

```
As an user
I can only manage my own bookmarks
I would like to SIGN IN and SIGN OUT
``` -->

<img src="https://github.com/xavierloos/bookmark_manager/blob/master/Screenshot%202020-12-14%20at%2014.51.06.png"/>

## SQL instructions:

```
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
```

## Manipulating Table Data

:white_check_mark: List any existing rows in the bookmarks table.

```
bookmarks_manager=# SELECT * FROM bookmarks;
 id | url
----+------
(0 rows)
```

:white_check_mark: Create four link entries in the bookmarks table, with the following URLs: http://www.makersacademy.com, http://askjeeves.com, http://twitter.com, and http://www.google.com, using an INSERT statement.

```
bookmarks_manager=# INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');
INSERT 0 1
bookmarks_manager=# INSERT INTO bookmarks (url) VALUES ('http://askjeeves.com');
INSERT 0 1
bookmarks_manager=# INSERT INTO bookmarks (url) VALUES ('http://twitter.com');
INSERT 0 1
bookmarks_manager=# INSERT INTO bookmarks (url) VALUES ('http://www.google.com');
INSERT 0 1
```

:white_check_mark: List the four entries using a SELECT statement.

```
bookmarks_manager=# SELECT * FROM bookmarks;
 id |             url
----+------------------------------
  1 | http://www.makersacademy.com
  2 | http://askjeeves.com
  3 | http://twitter.com
  4 | http://www.google.com
(4 rows)
```

:white_check_mark: Delete the link with a URL of http://twitter.com using a DELETE statement.

```
bookmarks_manager=# DELETE FROM bookmarks WHERE url = 'http://twitter.com';
DELETE 1
bookmarks_manager=# SELECT * FROM bookmarks;
 id |             url
----+------------------------------
  1 | http://www.makersacademy.com
  2 | http://askjeeves.com
  4 | http://www.google.com
(3 rows
```

:white_check_mark: Update the http://askjeeves.com link to http://www.destroyallsoftware.com using an UPDATE statement.

```
bookmarks_manager=# UPDATE bookmarks SET url = 'http://www.destroyallsoftware.com' WHERE url = 'http://askjeeves.com';
UPDATE 1
bookmarks_manager=# SELECT * FROM bookmarks;
 id |                url
----+-----------------------------------
  1 | http://www.makersacademy.com
  4 | http://www.google.com
  2 | http://www.destroyallsoftware.com
(3 rows)
```

## SQL instructions for test database:

```
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager_test;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
```
