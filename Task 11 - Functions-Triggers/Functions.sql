CREATE FUNCTION count_hip_hop_compositions()
RETURNS INTEGER AS
BEGIN
    RETURN (
        SELECT COUNT(*)
        FROM compositions c
        JOIN genres g ON c.genre_id = g.genre_id
        WHERE g.genre_name = 'hip-hop'
    );
END;


CREATE FUNCTION count_registered_users_2020()
RETURNS INTEGER AS
BEGIN
    RETURN (
        SELECT COUNT(*)
        FROM users
        WHERE DATE_PART('year', registration_date) = 2020
    );
END;


CREATE FUNCTION find_last_uploaded_composition_title()
RETURNS TABLE (title VARCHAR) AS
BEGIN
    RETURN QUERY
        SELECT title
        FROM compositions
        ORDER BY upload_date DESC
        LIMIT 1;
END;
