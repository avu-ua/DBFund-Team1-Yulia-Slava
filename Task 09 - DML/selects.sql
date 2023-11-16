-- demo for table 'users' 
select * 
from users;



-- demo for table 'compositions'
select * 
from compositions;



-- demo for table 'authors'
select *
from authors;


select a.author_id
	, u.last_name || ', ' || u.first_name as author
	, c.title as composition
from authors a
join users u on u.user_id = a.user_id
join compositions c on c.composition_id = a.composition_id
order by u.last_name;



-- demo for table 'genres'
select *
from genres;


select g.genre_name as genre
	, c.title as composition
from genres g
join compositions c on c.composition_id = g.composition_id 
order by genre;



-- demo for table playlists
select *
from playlists;


select p.playlist_number
, u.last_name || ', ' || u.first_name as playlist_owner
	, c.title as composition
from playlists p 
join compositions c on c.composition_id = p.composition_id 
join users u on u.user_id = p.user_id 
order by p.playlist_number
	, u.last_name
	, c.title;



-- demo for table 'commentaries'
select *
from commentaries;


select c.commentary_id as comment_number
	, c.parent_comment_id as response_to_comment
	, u.first_name || ' ' || u.last_name as commentator_name
	, comp.title as composition
	, date(c.comment_date)
	, c.comment_text 
from commentaries c 
join users u on u.user_id = c.user_id 
join compositions comp on comp.composition_id = c.composition_id;



-- demo for table limited_access_rights
select * 
from limited_access_rights;


select c.title as composition
	, u.first_name || ' ' || u.last_name as person_with_access
from limited_access_rights lar 
join compositions c on c.composition_id = lar.composition_id 
join users u on u.user_id = lar.user_id
order by c.title;