--SELECT statement

CREATE OR REPLACE PROCEDURE get_user_by_id(user_id_param INTEGER)
LANGUAGE plpgsql
AS $$
BEGIN
    SELECT * FROM users WHERE user_id = user_id_param;
END;
$$;

CREATE OR REPLACE PROCEDURE get_composition_by_title(composition_title_param VARCHAR)
LANGUAGE plpgsql
AS $$
BEGIN
    SELECT * FROM compositions WHERE title = composition_title_param;
END;
$$;



--INSERT statement

CREATE OR REPLACE PROCEDURE insert_new_user(
    first_name_param VARCHAR,
    last_name_param VARCHAR,
    user_email_param VARCHAR,
    password_param VARCHAR,
    registration_date_param DATE default now()
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO users (first_name, last_name, user_email, registration_date, password)
    VALUES (first_name_param, last_name_param, user_email_param, registration_date_param, password_param);
END;
$$;


CREATE OR REPLACE PROCEDURE insert_new_composition(
    title_param VARCHAR,
    upload_date_param DATE,
    file_format_param VARCHAR,
    duration_param INTERVAL,
    text_param TEXT,
    access_restriction_param VARCHAR default 'unrestricted'
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO compositions (title, upload_date, file_format, duration, text, access_restriction)
    VALUES (title_param, upload_date_param, file_format_param, duration_param, text_param, access_restriction_param);
END;
$$;

