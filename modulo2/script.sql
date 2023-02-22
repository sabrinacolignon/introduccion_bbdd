#crear base de datos:
#create database introDB;
#activar base de datos para interactuar sobre ella:
use introDB;
#crear tabla:
/*create table billeteras 
	(
		ID int primary key auto_increment not null,	#numero entero autoincremental
        nombre varchar (30) not null,
        precio float (9,2) not null, #(9,2): cantidad maxima de caracteres que puede almacenar: 9 (por el millon) , 2:cantidad de decimales
        stock int not null 
	); */
    
#mostrar tablas que hay:
#show tables;

#ver informacion de la tabla:
#desc billeteras; #desc == describe

#insertar elementos a una tabla:
/*insert into billeteras (ID, nombre, precio, stock) values
	(1, 'Ledger Nano S', 16000.00, 30),
    (2, 'Trezor One', 19500.00, 30),
    (3, 'Trezor T', 78000.00, 20),
    (4, 'Ledger Nano X', 58000.00, 20);*/

/*insert into billeteras ( nombre, precio, stock) values
	('Ledger Nano S', 16000.00, 30),
    ('Trezor One', 19500.00, 30),
    ('Trezor T', 78000.00, 20),
    ('Ledger Nano X', 58000.00, 20);*/

/*insert into billeteras values
	(default, 'Ledger Nano S', 16000.00, 30),
    (default, 'Trezor One', 19500.00, 30),
    (default, 'Trezor T', 78000.00, 20),
    (default, 'Ledger Nano X', 58000.00, 20);*/

#ver lo que hay dentro de la tabla:
#select *from billeteras;

#-----------------------------------------------------------------------------------------------
/*create table regiones
	( 
		idRegion tinyint primary key auto_increment not null,
        regNombre varchar (30) not null
	);

insert into regiones values
	(default, 'América del Sur'),
    (default, 'América Central'),
    (default, 'México y Caribe'),
    (default, 'América del Norte'),
    (default, 'Europa Occidental'),
    (default, 'Europa del Este'),
    (default, 'Asia'),
    (default, 'Oceanía');*/

# select *from regiones; # * == all

/*create table destinos 
	(
		idDestino tinyint primary key auto_increment not null,
        destNombre varchar (45) not null,
        idRegion tinyint not null,
        destPrecio float (9,2) not null,
        destAsientos tinyint not null,
        destDisponibles tinyint not null,
        destActivo boolean not null
	); 

INSERT INTO destinos
(idDestino, destNombre, idRegion, destPrecio, destAsientos, destDisponibles, destActivo)
VALUES
    (1, 'Londres (Heathrow)', 5, '9711', 5, 5, 1),
    (2, 'Amsterdam (Schiphol)', 5, '6231', 5, 5, 1),
    (3, 'Miami (Wilcox Field)', 4, '6517', 5, 5, 1),
    (4, 'Tokio (Narita)', 7, '8704', 5, 5, 1),
    (5, 'Kuala Lumpur (KLIA)', 8, '8570', 5, 5, 1),
    (6, 'Bangkok (Suvarnabhumi)', 8, '8469', 5, 5, 1),
    (7, 'París (Charles de Gaulle)', 5, '7713', 5, 5, 1),
    (8, 'Cancún (Cancún)', 3, '6494', 5, 5, 1),
    (9, 'Milán (Malpensa)', 5, '6756', 5, 5, 1);*/

# select *from destinos; -- traer toda la info


#ALIAS: renombrar el titulo de la columna:
/* select destNombre as Destino,
 destPrecio as 'Precio contado',
 destPrecio * 1.05 as 'Precio de lista'
 from destinos; -- selecciono que campos quiero traer
*/

#------------------------------------- SIGUIENTE CLASE -------------------------------------------------

#select regNombre from regiones;
#select destNombre, destPrecio from destinos;
#select destNombre, destPrecio from destinos order by destPrecio desc;
#select destNombre, destPrecio from destinos where destPrecio <= 8000;
#select destNombre, destPrecio from destinos where destPrecio <= 8000 and destPrecio <=6600;
#select destNombre, destPrecio from destinos where destPrecio between 6600 and 8000;
#select destNombre, destPrecio from destinos where idRegion = 5;
#select destNombre, destPrecio from destinos where idRegion = 5 or idRegion = 8;
#select destNombre, destPrecio from destinos where idRegion = 5 or idRegion = 8 order by destPrecio;
#select destNombre, destPrecio from destinos where  ( idRegion = 5 or idRegion = 8 ) and destPrecio <= 8000;
#select max(destPrecio) from destinos;
#select min(destPrecio) from destinos;
#select destNombre, destPrecio from destinos where destPrecio = ( select min(destPrecio) from destinos ); #SUBCONSULTA
#select destNombre, destPrecio, regNombre from destinos, regiones where destinos.idRegion = regiones.idRegion;
#select destNombre, destPrecio, regNombre, destinos.idRegion from destinos, regiones where destinos.idRegion = regiones.idRegion;
#select destNombre, destPrecio, destPrecio*1.05 from destinos;
#select destNombre as Destino, destPrecio as 'Precio contado', destPrecio*1.05 as 'Precio de lista' from destinos;
#select destNombre, destPrecio, regNombre, d.idRegion from destinos as d, regiones as r where d.idRegion = r.idRegion;
#select destNombre Destino, destPrecio Precio, regNombre region, d.idRegion 'Id region' from destinos as d, regiones as r where d.idRegion = r.idRegion;
#select destNombre Destino, destPrecio Precio, regNombre region, d.idRegion 'Id region' from destinos d, regiones r where d.idRegion = r.idRegion;

#------------------------------------------------ SIGUIENTE CLASE --------------------------------------------------------------
