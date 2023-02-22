create database BONUS_TRACK;
use BONUS_TRACK;
create table agenda
	( 	IDContacto integer primary key, 
		Nombre varchar(20) NOT NULL, 
		Apellido varchar(15) NOT NULL,
		Domicilio varchar(50),
		Telefono integer NOT NULL);

desc agenda;
select *from agenda;

alter table agenda
	add mail varchar (50) not null;


insert into agenda values
	( 1, 'Sabrina', 'Colignon', 'Los Jilgueros 263', 343154465300, 'sabricolignon@hotmail.com' ),
    ( 2, 'Adriel', 'Irigoitia', ' E de Luca 101', 3434048771, 'adrielirigoitia@gmail.com'),
    ( 3, 'Josefina', 'Colignon', 'Belgrano 380', 343465298, 'josefinacolignon@hotmail.com' ),
    ( 4, 'Francisco', 'Colignon', 'I G Palma 1281', 3435204987, 'franciscocolignon@gmail.com');


