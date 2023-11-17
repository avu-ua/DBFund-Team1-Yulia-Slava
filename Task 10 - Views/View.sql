--horizontal

CREATE VIEW track_for_all_users AS
SELECT *
FROM compositions
WHERE access_restriction = 'all registered users'

--vertical
  
CREATE VIEW users_names AS
SELECT user_id, first_name, last_name
FROM users

--mixed
  
CREATE VIEW mp3_compositions AS
SELECT title, duration, text
FROM compositions
WHERE file_format LIKE 'mp3';

--with joining

CREATE VIEW authors_name_comp AS   
   SELECT
    a.user_id AS author_id,
    u.first_name,
    u.last_name,
    c.title AS composition_title
    FROM authors a
    JOIN users u ON a.user_id = u.user_id
    JOIN compositions c ON a.composition_id = c.composition_id

--with subquery

 CREATE VIEW rock_songs AS
 SELECT c.title
 FROM compositions c 
 WHERE c.composition_id in (
       SELECT g.composition_id
 	     FROM genres g 
	     WHERE genre_name = 'rock')

--with UNION

CREATE VIEW all_comments AS
	SELECT comment_text
	FROM commentaries
	WHERE parent_comment_id IS NULL
	UNION
	SELECT comment_text
	FROM commentaries
	WHERE parent_comment_id IS NOT NULL

--view on the select from another one view

CREATE VIEW james_songs AS	
	SELECT first_name, last_name, composition_title
	FROM authors_name_comp
	WHERE first_name = 'James'

--view with check option
  
CREATE VIEW long_duration_compositions AS
SELECT *
FROM compositions
WHERE duration > '05:00:00'
WITH CHECK OPTION


