CREATE OR REPLACE FUNCTION count_compositions_by_genre(genre_name_param VARCHAR)
RETURNS INTEGER AS $$
DECLARE
    genre_count INTEGER;
BEGIN
    SELECT COUNT(*)
    INTO genre_count
    FROM compositions c
    JOIN genres g ON c.composition_id = g.composition_id
    WHERE g.genre_name = genre_name_param;

    RETURN genre_count;
END;
$$ LANGUAGE plpgsql;




CREATE OR REPLACE FUNCTION count_registered_users_by_year(registration_year_param INTEGER)
RETURNS INTEGER AS $$
DECLARE
    user_count INTEGER;
BEGIN
    SELECT COUNT(*)
    INTO user_count
    FROM users
    WHERE EXTRACT(YEAR FROM registration_date) = registration_year_param;

    RETURN user_count;
END;
$$ LANGUAGE plpgsql;




CREATE OR REPLACE FUNCTION find_last_uploaded_composition_title()
RETURNS TABLE (title VARCHAR) AS $$
BEGIN
    RETURN QUERY
        SELECT title
        FROM compositions
        ORDER BY upload_date DESC
        LIMIT 1;
END;
$$ LANGUAGE plpgsql;

