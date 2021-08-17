USE pocket_rocket;

-- ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234567890';

DROP TABLE IF EXISTS movies;
CREATE TABLE movies (
  movieId integer NOT NULL,
  movieName varchar(255),
  releaseYear varchar(5),
  genres varchar(255),
  PRIMARY KEY (movieId)
);
SELECT * FROM movies;

DROP TABLE IF EXISTS links;
CREATE TABLE links (
  id integer NOT NULL AUTO_INCREMENT,
  movieId integer,
  imdbId varchar(10),
  tmdbId varchar(10),
  PRIMARY KEY (id)
);
SELECT * FROM links;

DROP TABLE IF EXISTS ratings;
CREATE TABLE ratings (
  id integer NOT NULL AUTO_INCREMENT,
  userId integer,
  movieId integer,
  rating float,
  timestamp bigint,
  PRIMARY KEY (id)
);
SELECT * FROM ratings;


-- home/collection
select m.movieId, movieName, releaseYear, substring_index(genres, '|', 1) as main_genre, round(avg_rating, 2)
from movies m
join (
select movieId, avg(rating) as avg_rating
from ratings
group by movieId
) t
on m.movieId = t.movieId
where substring_index(genres, '|', 1) = 'Crime'
order by avg_rating desc;



-- movie details
select * from 
(select m.movieId, m.movieName, m.releaseYear, substring_index(genres, '|', 1) as genres, imdbId
from movies m
join links l on l.movieId = m.movieId
where m.movieId = 1) movie_info
join
(select round(avg(rating), 2) as rating
from ratings
where movieId = 1) avg_rating
join
(select GROUP_CONCAT(userId) as favoredByUsers
from (
	select movieId, userId, rating
	from ratings
	where movieId = 1
	order by rating desc
	limit 5
) t
group by movieId
) favoredByUsers;


-- user details
select * from (
select userId, count(rating) as watchedCount, round(avg(rating), 2) as avgRating,
max(rating) as highestRating, min(rating) as lowestRating
from ratings
where userId = 184) user_rating_info
join
(select genres as favGenres, count(genres) as favGenresCount from (
	select m.movieId, substring_index(genres, '|', 1) as genres, rating, userId
	from movies m
	join ratings r
	on m.movieId = r.movieId
	where userId = 184
	) t
group by genres
order by count(genres) desc
limit 1) user_fav_genre;


-- user watched
select m.movieId, movieName, releaseYear, round(avg_rating, 2) as rating
from movies m
join (
select movieId, avg(rating) as avg_rating
from ratings
where movieId in (
	select movieId from ratings r
	where userId = 184
	order by timestamp desc
)
group by movieId
) t
on m.movieId = t.movieId;

-- user not watched
select distinct movieId from ratings
where movieId not in (
select m.movieId from movies m
join ratings r
on m.movieId = r.movieId
where userId = 5
)
order by movieId; 


-- get Movie details with given movieId
select r.movieId, round(avg_rating, 2) as rating, movieName, releaseYear from(
select movieId, avg(rating) as avg_rating
from ratings
where movieId in (850, 872, 75)
group by movieId
)r
join(
select movieId, movieName, releaseYear
from movies
) m
on r.movieId = m.movieId
order by avg_rating desc;