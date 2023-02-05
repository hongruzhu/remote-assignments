-- 1. Write an SQL statement to select all articles with their author’s email.
SELECT author, email, content AS 'article content' FROM article;

-- 2. Write another SQL statement to select articles from 7th to 12th sorted by id.
SELECT id AS 'article id', content AS 'article content' FROM article WHERE id BETWEEN 7 and 12;