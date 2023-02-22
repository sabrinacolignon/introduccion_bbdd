# ----------------------------------- ETAPA UNO ---------------------------------------------------------------------
/*
create database LABORATORIO;
use LABORATORIO;

create table facturas (
	letra char,
	numero int,
	clienteid int,
	articuloid int,
	fecha date,
	monto double,
	primary key (letra, numero)
					);

create table articulos (
	articuloid integer primary key,
	nombre varchar(50),
	precio double,
	stock integer
						);
                        
create table clientes      (
	clienteid integer primary key,
	nombre varchar(25),
	apellido varchar(25),
	cuit char(16),
	dirección varchar(50),
	comentarios varchar(50)
							);
                            */
# ----------------------------------- ETAPA DOS ---------------------------------------------------------------------

/* MODIFICO TABLA FACTURAS
alter table facturas
	change clienteid idcliente int,
    change articuloid idarticulo int;
alter table facturas
	modify monto double unsigned;
*/
/* MODIFICO TABLA ARTICULOS
alter table articulos
	change articuloid idarticulo integer;
alter table articulos
	modify nombre varchar(75),
	modify precio double unsigned not null,
	modify stock integer unsigned not null;
*/
/* MODIFICO TABLA CLIENTES
alter table clientes
	change clienteid idcliente integer;
alter table clientes
	modify nombre varchar (30) not null,
	modify apellido varchar (25) not null;
alter table clientes
	change comentarios observaciones varchar (50);
alter table clientes
    modify observaciones varchar (255);
*/

#---------------------------------------- ETAPA TRES --------------------------------------------------------------	
/* AGREGO VALORES A LAS 3 TABLAS: 
insert into facturas values
	( 'A', 28, 14, 335, '2021-03-18', 1589.50 ), 
    ( 'A', 39, 26, 157, '2021-04-12', 979.75 ),
    ( 'B', 8, 17, 95, '2021-04-25', 513.35 ),
	( 'B', 12, 5, 411, '2021-05-03', 2385.70 ),
    ( 'B', 19, 50, 157, '2021-05-26', 979.75 );
    
insert into articulos values
	( 95, 'Webcam con Micrófono Plug & Play', 513.35, 39 ),
    ( 157, 'Apple AirPods Pro', 979.75, 152 ),
    ( 335, 'Lavasecarropas Automático Samsung', 1589.50, 12 ),
    ( 411, 'Gloria Trevi / Gloria / CD+DVD', 2385.70,2 );
    
insert into clientes values
	( 5, 'Santiago', 'González', '23-24582359-9', 'Uriburu 558 - 7ºA', 'VIP' ),
    ( 14, 'Gloria', 'Fernández', '23-35965852-5', 'Constitución 323', 'GBA' ),
	( 17, 'Gonzalo', 'López', '23-33587416-0', 'Arias 2624', 'GBA' ),
	( 26, 'Carlos', 'García', '23-42321230-9', 'Pasteur 322 - 2ºC', 'VIP' ),
    ( 50, 'Micaela', 'Altieri', '23-22885566-5', 'Santamarina 1255', 'GBA' );
    
    */
    