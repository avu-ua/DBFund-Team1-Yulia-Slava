CREATE TABLE compositions (
	composition_id serial,
	title varchar(100) NOT NULL,
	upload_date DATE NOT NULL DEFAULT now(),
	file_format varchar(10),
	duration TIME,
	logo bytea,
	text varchar(255),
	access_restriction varchar(25) NOT NULL DEFAULT 'unrestricted'
							check (access_restriction IN ('unrestricted', 'all registered users', 'author''s selection')), 
	CONSTRAINT compositions_pk PRIMARY KEY (composition_id)
);



CREATE TABLE users (
	user_id serial,
	first_name varchar(20) NOT NULL,
	last_name varchar(50) NOT NULL,
	user_email varchar(50) NOT NULL,
	registration_date DATE NOT NULL DEFAULT now(),
	password varchar(255) NOT NULL,
	CONSTRAINT users_pk PRIMARY KEY (user_id)
);



CREATE TABLE authors (
	author_id serial,
	user_id integer NOT NULL,
	composition_id integer NOT NULL,
	CONSTRAINT authors_pk PRIMARY KEY (author_id)
);



CREATE TABLE genres (
	composition_id integer NOT NULL,
	genre_name varchar(30) DEFAULT 'unclassified'
                           check (genre_name IN ('pop_music', 'jazz', 'country_music', 'classical_music',
                           'reggae', 'world_music', 'alternative_rock', 'vocal_music', 'industrial_music',
                           'rock', 'electronic_music', 'blues', 'punk_rock', 'electronic_dance_music',
                           'folk_music', 'dance_music', 'latin_music', 'instrumental', 'christian_gospel',
                           'acoustic_music', 'hip_hop', 'heavy_metal', 'indie_rock', 'experimental_music',
                           'disco', 'techno', 'soundtrack', 'dubstep', 'latin_pop', 'folk_music', 'hard_rock',
                           'unclassified')) 
);



CREATE TABLE limited_access_rights (
	composition_id integer NOT NULL,
	user_id integer NOT NULL
);



CREATE TABLE playlists (
	playlist_id serial,
	composition_id integer NOT NULL,
	user_id integer NOT NULL,
	CONSTRAINT playlists_pk PRIMARY KEY (playlist_id)
);



CREATE TABLE commentaries (
	commentary_id serial,
	parent_comment_id integer,
	user_id integer NOT NULL,
	composition_id integer NOT NULL,
	comment_date timestamp with time zone NOT NULL DEFAULT now(),
	comment_text varchar(255) NOT NULL,
	CONSTRAINT commentaries_pk PRIMARY KEY (commentary_id)
);





ALTER TABLE authors ADD CONSTRAINT authors_fk0 FOREIGN KEY (user_id) REFERENCES users(user_id);
ALTER TABLE authors ADD CONSTRAINT authors_fk1 FOREIGN KEY (composition_id) REFERENCES compositions(composition_id);

ALTER TABLE genres ADD CONSTRAINT genres_fk0 FOREIGN KEY (composition_id) REFERENCES compositions(composition_id);

ALTER TABLE limited_access_rights ADD CONSTRAINT limited_access_rights_fk0 FOREIGN KEY (composition_id) REFERENCES compositions(composition_id);
ALTER TABLE limited_access_rights ADD CONSTRAINT limited_access_rights_fk1 FOREIGN KEY (user_id) REFERENCES users(user_id);

ALTER TABLE playlists ADD CONSTRAINT playlists_fk0 FOREIGN KEY (composition_id) REFERENCES compositions(composition_id);
ALTER TABLE playlists ADD CONSTRAINT playlists_fk1 FOREIGN KEY (user_id) REFERENCES users(user_id);

ALTER TABLE commentaries ADD CONSTRAINT commentaries_fk0 FOREIGN KEY (parent_comment_id) REFERENCES commentaries(commentary_id);
ALTER TABLE commentaries ADD CONSTRAINT commentaries_fk1 FOREIGN KEY (user_id) REFERENCES users(user_id);
ALTER TABLE commentaries ADD CONSTRAINT commentaries_fk2 FOREIGN KEY (composition_id) REFERENCES compositions(composition_id);





