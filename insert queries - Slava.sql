INSERT INTO users (first_name, last_name, user_email, registration_date, password)
VALUES 
	('Adam', 'Israelevich', 'apple@apple.org', '01-01-01', 'i_love_Eva')
	, ('Katso', 'Vinoshvilli', 'shashlik@tbiliso.ge', '2017-10-12', 'kindzmarauli')
	, ('James', 'Bond', '007@cia.gov', '1957-07-07', 'sEcReT_sErViCe')
	, ('Santa', 'Joulupukki', 'saariselka@lapland@fn', '2000-01-01', 'reindeer&snow')
	, ('Chingachcook', 'Python', 'cheroki@idaho.org', '2019-12-12', 'tomahawk-1')
	, ('Pedro', 'Rodriguez', 'pedro@copacobana.br', '2003-08-09', 'sombrero')
	, ('Mickey', 'Mouse', 'mick@pet.org', '2021-03-08', 'screw-cats')
	, ('Hanz', 'Muller', 'nuller@munich.de', '2020-11-28', 'Freundschaftsbeziehungen')
	, ('Pierre', 'Dubois', 'viva-la-france@marseille.fr', '2019-04-29', 'cherche_la_femme')
	, ('Singh', 'Singh', 'kama@sutra.in', '2009-02-06', 'gkdnsermytkts');
	
INSERT INTO compositions (title, upload_date, file_format, duration, text, access_restriction)
VALUES 
	('Around the corner now', now(), 'mp3', '04:32:16', 'Remix of Queen', 'unrestricted')
	, ('Gotcha', '2023-11-09', 'mp3', '02:59:14', 'Could be in Eurovision final', 'unrestricted')
	, ('I''m not Russian', '2022-02-25', 'wav', '03:40:11', 'Anti-war song', 'all registered users')
	, ('Bunker grandpa', '2023-03-01', 'wma', '04:25:25', 'Satiric political song', 'unrestricted')
	, ('Pagarizantalli', '2023-09-09', 'wma', '06:02:12', 'Song about Georgian wine', 'author''s selection')
	, ('Goodwill gesture', '2023-08-23', 'mp3', '03:48:00', 'Saga about March 2022 events', 'author''s selection')
	, ('Meaningless', '2023-04-06', 'mp3', '04:23:14', 'The composition name speaks for itself', 'unrestricted')
	, ('And then I ate a mushroom', '2023-10-12', 'mp3', '03:56:58', 'Prequel of "Hop, hey, la-la-ley"', 'unrestricted')
	, ('Labuda-samba', '2023-07-31', 'wav', '04:31:24', 'The best latin vibes composition', 'unrestricted')
	, ('We are gong catch big one', '2023-03-08', 'mp3', '05:42:13', 'To all fishermen', 'unrestricted');