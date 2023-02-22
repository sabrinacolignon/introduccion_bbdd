#-------------------------------------- EJERCICIO 1 ------------------------------------

use bonus_track;
select * from top_spotify;
select artista, titulo, genero from top_spotify;
select artista, titulo, genero from top_spotify order by genero;
select artista, titulo, genero from top_spotify order by genero, artista;


#------------------------------------ EJERCICIO 2 ---------------------------------------

select artista, titulo, genero from top_spotify order by artista, titulo limit 10;
select artista, titulo, genero from top_spotify order by artista, titulo limit 5 offset 10;
select * from top_spotify where artista = 'Madonna';
select * from top_spotify where genero = 'POP' order by titulo;
select * from top_spotify where genero = 'POP' and ano = 2015 order by artista, titulo;
select * from top_spotify where ano < 2011 and genero = 'Dance Pop' order by titulo;
