-- Bandas brasileiras
select band_name from band where country = 'Brazil';

-- Discos que têm 15 ou mais músicas
select album_title from album where number_of_songs >= 15;

-- Músicas que têm mais de 10 minutos
select song_name from song where duration > 10.0;

-- Discos que tem o mesmo nome da banda e ano de lançamento dos mesmos
select album_title, release_year from band inner join album
on band.band_id = album.band_id
where band_name = album_title;

-- Banda que tem a música mais duradoura
select band_name, song_name, duration
from band inner join album
	on band.band_id = album.band_id
    inner join song
		on album.album_id = song.album_id
group by duration desc
limit 1;

-- Total de discos de cada banda 
select band_name, count(album_id) as number_of_albuns
from band join album 
on band.band_id = album.band_id
group by band_name
order by number_of_albuns desc;

-- Total de músicas de cada banda
select band_name, count(song_id) as number_of_songs
from band join album 
	on band.band_id = album.band_id
    join song
		on album.album_id = song.album_id
group by band_name
order by number_of_songs desc;

-- Total de discos feitos por ano
select release_year, count(album_title) from album 
group by release_year;

-- Total de bandas de cada país
select country, count(band_id) as total_of_bands from band
group by country;

-- Banda que tem o hit mais longo
select band_name, song_name, max(duration), hit
from band join album
	on band.band_id = album.band_id
    join song
		on album.album_id = song.album_id
where hit = 1
group by duration desc
limit 1;

-- Quantos hits tem em cada disco
select album_title, count(song_id) as number_of_hits
from album inner join song
	on album.album_id = song.album_id
where hit = 1
group by album_title;

-- Definindo condição para a duração das músicas
select song_name, round(duration, 2) as duration, 
case
	when duration < 2.00 then 'Pequena'
    when duration < 5.00 then 'Média'
    else 'Longa'
end as song_length
from song;

-- Número de bandas de Rock Progressivo 
select count(*) from band
group by gender
having gender = 'Progressive Rock';

-- Duração de cada álbum dos anos 70
select album_title, release_year, sum(round(duration, 2)) as duration
from album inner join song
on album.album_id = song.album_id
group by album_title
having release_year between 1970 and 1979
order by release_year;
