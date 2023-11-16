--horizontal

CREATE VIEW track_for_all_users AS
SELECT *
FROM compositions
WHERE access_restriction = 'all registered users'

--vertical
  
CREATE VIEW users_names AS
SELECT user_id, first_name, last_name
FROM users
