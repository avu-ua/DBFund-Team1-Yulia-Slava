-- Insertions into table "users"
INSERT INTO users (first_name, last_name, user_email, registration_date, password)
VALUES 
    ('John', 'Doe', 'john.doe@email.com', '2020-01-15', 'password123')
    , ('Alice', 'Smith', 'alice.smith@email.com', '2020-03-22', 'securepassword')
    , ('Bob', 'Johnson', 'bob.johnson@email.com', '2021-05-10', 'musiclover123')
    , ('Emma', 'Williams', 'emma.williams@email.com', '2021-08-07', 'password456')
    , ('David', 'Miller', 'david.miller@email.com', '2022-02-28', 'mysecretpass')
    , ('Olivia', 'Davis', 'olivia.davis@email.com', '2022-06-12', '1234olivia')
    , ('James', 'Taylor', 'james.taylor@email.com', '2023-09-05', 'taylorjam')
    , ('Sophia', 'Brown', 'sophia.brown@email.com', '2023-11-18', 'brownie456')
    , ('William', 'Moore', 'william.moore@email.com', '2020-07-03', 'password789')
    , ('Ava', 'Clark', 'ava.clark@email.com', '2021-12-30', 'clarky987')
	, ('Adam', 'Israelevich', 'apple@apple.org', '01-01-01', 'i_love_Eva')
	, ('Katso', 'Vinoshvilli', 'shashlik@tbiliso.ge', '2017-10-12', 'kindzmarauli')
	, ('James', 'Bond', '007@cia.gov', '1957-07-07', 'sEcReT_sErViCe')
	, ('Santa', 'Joulupukki', 'saariselka@lapland@fn', '2000-01-01', 'reindeer&snow')
	, ('Chingachcook', 'Python', 'cheroki@idaho.org', '2019-12-12', 'tomahawk-1')
	, ('Pedro', 'Rodriguez', 'pedro@copacobana.br', '2003-08-09', 'sombrero')
	, ('Mickey', 'Mouse', 'mick@pet.org', '2021-03-08', 'screw-cats')
	, ('Hanz', 'Muller', 'nuller@munich.de', '2020-11-28', 'Freundschaftsbeziehungen')
	, ('Pierre', 'Dubois', 'viva-la-france@marseille.fr', '2019-04-29', 'cherche_la_femme')
	, ('Singh', 'Singh', 'kama@sutra.in', '2009-02-06', 'gkdnsermytkts');


-- Insertions into table "compositions"
INSERT INTO compositions (title, upload_date, file_format, duration, text, access_restriction)
VALUES 
    ('Song 1', '2020-01-15', 'mp3', '03:45:00', 'This is the first song about something.', 'unrestricted')
    , ('Jazz Improv', '2020-03-22', 'wav', '05:20:00', 'An improvisational jazz piece.', 'all registered users')
    , ('Rock Anthem', '2021-05-10', 'mp3', '04:10:00', 'A powerful rock anthem.', 'all registered users')
    , ('Electronic Beat', '2021-08-07', 'wav', '03:30:00', 'A catchy electronic beat.', 'all registered users')
    , ('Folk Ballad', '2022-02-28', 'mp3', '04:55:00', 'A heartfelt folk ballad.', 'all registered users')
    , ('Latin Rhythm', '2022-06-12', 'wav', '03:15:00', 'A lively Latin rhythm.', 'unrestricted')
    , ('Bluesy Tune', '2023-09-05', 'mp3', '04:40:00', 'A soulful bluesy tune.', 'unrestricted')
    , ('Acoustic Serenade', '2023-11-18', 'wav', '02:50:00', 'A soothing acoustic serenade.', 'author''s selection')
    , ('Hip Hop Groove', '2020-07-03', 'mp3', '03:20:00', 'A cool hip hop groove.', 'all registered users')
    , ('Dance Party', '2021-12-30', 'wav', '06:00:00', 'Get ready to dance all night.', 'unrestricted')
    , ('Around the corner now', now(), 'mp3', '04:32:16', 'Remix of Queen', 'unrestricted')
	, ('Gotcha', '2023-11-09', 'mp3', '02:59:14', 'Could be in Eurovision final', 'unrestricted')
	, ('I''m not Russian', '2022-02-25', 'wav', '03:40:11', 'Anti-war song', 'all registered users')
	, ('Bunker grandpa', '2023-03-01', 'wma', '04:25:25', 'Satiric political song', 'unrestricted')
	, ('Pagarizantalli', '2023-09-09', 'wma', '06:02:12', 'Song about Georgian wine', 'author''s selection')
	, ('Goodwill gesture', '2023-08-23', 'mp3', '03:48:00', 'Saga about March 2022 events', 'author''s selection')
	, ('Meaningless', '2023-04-06', 'mp3', '04:23:14', 'The composition name speaks for itself', 'unrestricted')
	, ('And then I ate a mushroom', '2023-10-12', 'mp3', '03:56:58', 'Prequel of "Hop, hey, la-la-ley"', 'unrestricted')
	, ('Labuda-samba', '2023-07-31', 'wav', '04:31:24', 'The best latin vibes composition', 'unrestricted')
	, ('We are gong catch big one', '2023-03-08', 'mp3', '05:42:13', 'To all fishermen', 'unrestricted');


-- insertions into table "authors"
INSERT INTO authors (user_id, composition_id)
VALUES
    (11, 13)
    , (12, 15)
    , (13, 16)
    , (14, 12)
    , (15, 17)
    , (16, 19)
    , (18, 20)
    , (19, 11)
    , (20, 18)
    , (20, 19)
    , (13, 14)
    , (19, 14)
    , (1, 3)
    , (2, 6)
    , (3, 5)
    , (4, 2)
    , (5, 8)
    , (6, 9)
    , (8, 7)
    , (9, 7)
    , (7, 10)
    , (10, 10);


-- insertions into table "genres"
INSERT INTO genres(composition_id, genre_name)
VALUES 
    (11, 'rock')
    , (11, 'instrumental')
    , (12, 'hip_hop')
    , (12, 'reggae')
    , (13, 'hip_hop')
    , (14, 'alternative_rock')
    , (15, 'world_music')
    , (15, 'vocal_music')
    , (16, 'punk_rock')
    , (16, 'experimental_music')
    , (17, 'disco')
    , (18, 'indie_rock')
    , (19, 'pop_music')
    , (20, 'folk_music'),
    , (1, 'rock')
    , (1, 'instrumental')
    , (10, 'hip_hop')
    , (10, 'reggae')
    , (9, 'hip_hop')
    , (8, 'alternative_rock')
    , (7, 'world_music')
    , (7, 'vocal_music')
    , (4, 'punk_rock')
    , (4, 'experimental_music')
    , (3, 'disco')
    , (5, 'indie_rock')
    , (2, 'pop_music')
    , (6, 'folk_music');


-- insertions into table "playlists"
INSERT INTO playlists (composition_id, user_id)
VALUES 
    (19, 16)
    , (12, 16)
    , (13, 16)
    , (15, 16)
    , (19, 16)
    , (20, 16);

INSERT INTO playlists (composition_id, user_id)
VALUES 
    (15, 12)
    , (12, 12)
    , (17, 12)
    , (19, 12)
    , (20, 12);

INSERT INTO playlists (composition_id, user_id)
VALUES 
    (1, 6)
    , (2, 6)
    , (3, 6)
    , (5, 6)
    , (9, 6)
    , (10, 6);

INSERT INTO playlists (composition_id, user_id)
VALUES 
    (5, 2)
    , (2, 2)
    , (7, 2)
    , (9, 2)
    , (10, 2)
    , (8, 2);


-- insertions into table "limited_access_rights"
INSERT INTO limited_access_rights (composition_id, user_id)
VALUES
    (15, 12)
    , (15, 11)
    , (15, 14)
    , (15, 16)
    , (15, 18)
    , (15, 19)
    , (15, 20);

INSERT INTO limited_access_rights (composition_id, user_id)
VALUES
    (16, 13)
    , (16, 11)
    , (16, 14)
    , (16, 17)
    , (16, 19);

INSERT INTO limited_access_rights (composition_id, user_id)
VALUES
    (8, 1)
    , (8, 2)
    , (8, 4)
    , (8, 6)
    , (8, 8)
    , (8, 9)
    , (8, 10);


-- insertions into table "commentaries"
INSERT INTO commentaries (user_id, composition_id, comment_date, comment_text)
VALUES (16, 15, '2023-10-02', 'What a thrilling composition! Can author clarify where can I buy a bottle of that "Pagarizantalli" wine?');

INSERT INTO commentaries (parent_comment_id, user_id, composition_id, comment_date, comment_text)
VALUES (1, 12, 15, '2023-10-04', 'Wow, many thanks! My dear, ANY wine in Georgia is beatiful and will make you horizontal soon enough. But the idea is great, perhaps a wine with such trademark will soon appear on the shelves');

INSERT INTO commentaries (user_id, composition_id, comment_date, comment_text)
VALUES (14, 14, '2023-03-17', 'Why would any one want to write or listen a song about that moron?');

INSERT INTO commentaries (parent_comment_id, user_id, composition_id, comment_date, comment_text)
VALUES (3, 19, 14, '2023-03-21', 'Hey man, this is a satirical composition, don''t you get it?');

INSERT INTO commentaries (user_id, composition_id, comment_date, comment_text)
VALUES (14, 19, '2023-11-09', 'Anybody, do you like this composition? It''s been written by me');

INSERT INTO commentaries (user_id, composition_id, comment_date, comment_text)
VALUES (16, 18, '2023-10-31', 'Wonderful composition! Makes me feel happy!');

INSERT INTO commentaries (user_id, composition_id, comment_date, comment_text)
VALUES (5, 1, '2020-01-20', 'This track is pure magic! I can''t stop listening to it.');

INSERT INTO commentaries (parent_comment_id, user_id, composition_id, comment_date, comment_text)
VALUES (7, 3, 1, '2020-01-25', 'Thank you so much! I''m thrilled you find the track magical. Your support means the world to me.');

INSERT INTO commentaries (user_id, composition_id, comment_date, comment_text)
VALUES (7, 3, '2021-05-17', 'The lyrics speak to my soul. This track is an emotional journey.');

INSERT INTO commentaries (parent_comment_id, user_id, composition_id, comment_date, comment_text)
VALUES (9, 5, 3, '2021-05-21', 'It warms my heart to hear that the lyrics connect with you. Music is a universal language, and I''m grateful for the connection.');

INSERT INTO commentaries (user_id, composition_id, comment_date, comment_text)
VALUES (9, 10, '2022-01-02', 'The beats in this song are absolutely infectious. It''s my new favorite!');

INSERT INTO commentaries (user_id, composition_id, comment_date, comment_text)
VALUES (8, 10, '2022-01-05', 'This is the perfect song to unwind and relax. It has a calming vibe that I love.');