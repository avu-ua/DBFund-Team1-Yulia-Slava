-- HORIZONTAL
CREATE VIEW mp3_compositions
AS
	SELECT *
	FROM compositions
	WHERE file_format LIKE 'mp3';



-- VERTICAL
CREATE VIEW user_emails
AS
    SELECT first_name
    , last_name
    , user_email
    FROM users;



-- MIXED
CREATE VIEW unrestricted_compositions
AS
    SELECT title
    , text
    , access_restriction
    FROM compositions
    WHERE access_restriction LIKE 'unrestricted';

-- WITH JOINING
CREATE VIEW composition_genres
AS
    SELECT c.title
           , g.genre_name
    FROM   compositions AS c
           , genres AS g
    WHERE  c.composition_id = g.composition_id;



-- WITH SUBQUERY
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



-- WITH THE UNION
CREATE VIEW longest_and_shortest_track
AS 
    SELECT title, duration
      FROM compositions
     WHERE duration = (SELECT MIN(duration) FROM compositions)
    UNION
    SELECT title, duration
      FROM compositions
     WHERE duration = (SELECT MAX(duration) FROM compositions);



-- VIEW ON THE SELECT FROM ANOTHER ONE VIEW
CREATE VIEW hip_hop_compositions
AS 
    SELECT title
      FROM composition_genres
     WHERE genre_name LIKE 'hip_hop';



-- VIEW WITH CHECK OPTION
CREATE VIEW wav_compositions
AS 
    SELECT title
           , text
           , file_format
      FROM compositions
     WHERE file_format LIKE 'wav'
    WITH CHECK OPTION;