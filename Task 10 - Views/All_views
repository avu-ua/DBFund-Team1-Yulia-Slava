--horizontal

CREATE VIEW mp3_compositions
AS
	SELECT *
	FROM compositions
	WHERE file_format LIKE 'mp3';

CREATE VIEW track_for_all_users AS
  SELECT *
  FROM compositions
  WHERE access_restriction = 'all registered users';

--vertical

CREATE VIEW user_emails
AS
    SELECT first_name
    , last_name
    , user_email
    FROM users;

CREATE VIEW users_names AS
  SELECT user_id, first_name, last_name
  FROM users;

--mixed

CREATE VIEW unrestricted_compositions
AS
    SELECT title
    , text
    , access_restriction
    FROM compositions
    WHERE access_restriction LIKE 'unrestricted';

CREATE VIEW mp3_compositions AS
  SELECT title, duration, text
  FROM compositions
  WHERE file_format LIKE 'mp3';

--with joining

CREATE VIEW composition_genres
AS
    SELECT c.title
           , g.genre_name
    FROM   compositions AS c
           , genres AS g
    WHERE  c.composition_id = g.composition_id;

CREATE VIEW authors_name_comp AS   
   SELECT
    a.user_id AS author_id,
    u.first_name,
    u.last_name,
    c.title AS composition_title
    FROM authors a
    JOIN users u ON a.user_id = u.user_id
    JOIN compositions c ON a.composition_id = c.composition_id;

--with subquery

CREATE VIEW D_Miller_comments
AS 
    SELECT comps.title
           , comms.comment_text
      FROM compositions AS comps
           , commentaries AS comms
     WHERE comps.composition_id = comms.composition_id
       AND comms.user_id =
            (
            SELECT u.user_id
              FROM users AS u
             WHERE u.last_name LIKE 'Miller'
               AND u.first_name LIKE 'David'
            );

 CREATE VIEW rock_songs AS
   SELECT c.title
   FROM compositions c 
   WHERE c.composition_id in (
       SELECT g.composition_id
 	     FROM genres g 
	     WHERE genre_name = 'rock');

--with UNION

CREATE VIEW longest_and_shortest_track
AS 
    SELECT title, duration
      FROM compositions
     WHERE duration = (SELECT MIN(duration) FROM compositions)
    UNION
    SELECT title, duration
      FROM compositions
     WHERE duration = (SELECT MAX(duration) FROM compositions);


CREATE VIEW all_comments AS
	SELECT comment_text
	FROM commentaries
	WHERE parent_comment_id IS NULL
	UNION
	SELECT comment_text
	FROM commentaries
	WHERE parent_comment_id IS NOT NULL;

--view on the select from another one view

CREATE VIEW hip_hop_compositions
AS 
    SELECT title
      FROM composition_genres
     WHERE genre_name LIKE 'hip_hop';

CREATE VIEW james_songs AS	
	SELECT first_name, last_name, composition_title
	FROM authors_name_comp
	WHERE first_name = 'James';

--view with check option

CREATE VIEW wav_compositions
AS 
    SELECT title
           , text
           , file_format
      FROM compositions
     WHERE file_format LIKE 'wav'
    WITH CHECK OPTION;

CREATE VIEW long_duration_compositions AS
  SELECT *
  FROM compositions
  WHERE duration > '05:00:00'
  WITH CHECK OPTION;
