# select prdNombre, prdPrecio from productos;

/*
update productos
	set prdPrecio = 100 
    where idProducto = 4;
select prdNombre, prdPrecio from productos; 
*/

/*
update productos
	set prdPrecio = 100,
		prdNombre = 'Homepod mini test'
    where idProducto = 4;
select prdNombre, prdPrecio from productos;
*/

/*
update destinos
	set destPrecio = destPrecio * 1.02;
*/

/*
insert into destinos values
	(default, 'Cordoba (Ambrosio T)', 1, 37, 3, 3, 1 );
*/

/*    
delete from destinos where idDestino = 12;
select * from destinos;
*/

/*
alter table destinos
	change destAsientos Modificado tinyint not null;
*/

/*
alter table destinos
	change Modificado destAsientos tinyint not null;
*/

/*
alter table destinos
	modify destNombre varchar (60) not null;
*/

/*
alter table destinos
	modify destPrecio float (8,2) not null;
*/

/*
alter table destinos
	add fecha date not null default '2020-01-03';
*/

/*
alter table destinos
	add prueba varchar (20) not null after destActivo;
*/

/*
alter table destinos
	drop prueba
*/
