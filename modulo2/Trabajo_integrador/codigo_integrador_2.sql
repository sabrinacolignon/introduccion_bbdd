/*
alter table clientes_neptuno
	modify IDCliente varchar (5) not null primary key;
alter table clientes_neptuno
	modify NombreCompania varchar (100) not null;
alter table clientes_neptuno
	modify Pais varchar (15) not null;
*/

/*
rename table clientes to contactos;
alter table contactos
	modify Cod_Cliente varchar (7) not null primary key;
alter table contactos
	modify Empresa varchar (100) not null;
alter table contactos
	modify Ciudad varchar (25) not null;
alter table contactos
	modify Telefono int unsigned not null;
alter table contactos
	modify Responsable varchar (30) not null;
*/

/*
alter table pedidos
	modify Numero_Pedido int unsigned not null primary key,
	modify Codigo_Cliente varchar (7) not null,
    modify Fecha_Pedido date not null,
	modify Forma_Pago enum ('CONTADO', 'APLAZADO', 'TARJETA'),
    modify Enviado enum ('SI', 'NO');
*/

/*
alter table productos
	modify Cod_Producto int unsigned not null primary key,
    modify Seccion varchar (20) not null,
    modify Nombre varchar (40) not null,
    modify Importado enum ('VERDADERO', 'FALSO'),
	modify Origen varchar (25) not null,
    modify Dia int unsigned not null,
    modify Mes int unsigned not null,
    modify Ano int unsigned not null;
*/

/*
select * from clientes_neptuno;

select 'NombreCompania', 'Ciudad', 'Pais' from clientes_neptuno;

select 'NombreCompania', 'Ciudad', 'Pais' from clientes_neptuno order by pais;

select 'NombreCompania', 'Ciudad', 'Pais' from clientes_neptuno order by pais, ciudad;

select 'NombreCompania', 'Ciudad', 'Pais' from clientes_neptuno order by pais, ciudad limit 10;

select 'NombreCompania', 'Ciudad', 'Pais' from clientes_neptuno order by pais, ciudad limit 5 offset 10;
*/

/*
select * from nacimientos where nacionalidad = 'EXTRANGERA';

select * from nacimientos where edad_madre < 18 order by edad_madre;

select * from nacimientos where edad_madre = edad_padre;

select * from nacimientos where edad_padre-edad_madre > 40;

select * from clientes_neptuno where pais = 'ARGENTINA';

select * from clientes_neptuno where not pais = 'ARGENTINA' order by pais;

select * from nacimientos where semanas < 20 order by semanas desc; 

select * from nacimientos where sexo = 'FEMENINO' and nacionalidad = 'EXTRANJERA' and estado_civil_madre = 'SOLTERA' and edad_madre > 40;

select * from clientes_neptuno where pais = 'Argentina' or pais = 'Venezuela' or pais = 'Brasil' order by pais, ciudad;

select * from nacimientos where semanas between 20 and 25 order by semanas;

select * from nacimientos where comuna in (1101, 3201, 5605, 8108, 9204, 13120, 15202) order by comuna;

select * from clientes_neptuno where idCliente like 'C%';

select * from clientes_neptuno where ciudad like 'B_____';

select * from nacimientos where hijos_total > 10;
*/
