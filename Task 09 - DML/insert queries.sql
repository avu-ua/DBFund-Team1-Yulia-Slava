INSERT INTO users (first_name, last_name, user_email, registration_date, password)
VALUES 
  ('John', 'Doe', 'john.doe@email.com', '2020-01-15', 'password123'),
  ('Alice', 'Smith', 'alice.smith@email.com', '2020-03-22', 'securepassword'),
  ('Bob', 'Johnson', 'bob.johnson@email.com', '2021-05-10', 'musiclover123'),
  ('Emma', 'Williams', 'emma.williams@email.com', '2021-08-07', 'password456'),
  ('David', 'Miller', 'david.miller@email.com', '2022-02-28', 'mysecretpass'),
  ('Olivia', 'Davis', 'olivia.davis@email.com', '2022-06-12', '1234olivia'),
  ('James', 'Taylor', 'james.taylor@email.com', '2023-09-05', 'taylorjam'),
  ('Sophia', 'Brown', 'sophia.brown@email.com', '2023-11-18', 'brownie456'),
  ('William', 'Moore', 'william.moore@email.com', '2020-07-03', 'password789'),
  ('Ava', 'Clark', 'ava.clark@email.com', '2021-12-30', 'clarky987');




INSERT INTO compositions (title, upload_date, file_format, duration, text, access_restriction)
VALUES 
  ('Song 1', '2020-01-15', 'mp3', '03:45:00', 'This is the first song about something.', 'unrestricted'),
  ('Jazz Improv', '2020-03-22', 'wav', '05:20:00', 'An improvisational jazz piece.', 'all registered users'),
  ('Rock Anthem', '2021-05-10', 'mp3', '04:10:00', 'A powerful rock anthem.', 'all registered users'),
  ('Electronic Beat', '2021-08-07', 'wav', '03:30:00', 'A catchy electronic beat.', 'all registered users'),
  ('Folk Ballad', '2022-02-28', 'mp3', '04:55:00', 'A heartfelt folk ballad.', 'all registered users'),
  ('Latin Rhythm', '2022-06-12', 'wav', '03:15:00', 'A lively Latin rhythm.', 'unrestricted'),
  ('Bluesy Tune', '2023-09-05', 'mp3', '04:40:00', 'A soulful bluesy tune.', 'unrestricted'),
  ('Acoustic Serenade', '2023-11-18', 'wav', '02:50:00', 'A soothing acoustic serenade.', 'author''s selection'),
  ('Hip Hop Groove', '2020-07-03', 'mp3', '03:20:00', 'A cool hip hop groove.', 'all registered users'),
  ('Dance Party', '2021-12-30', 'wav', '06:00:00', 'Get ready to dance all night.', 'unrestricted');
