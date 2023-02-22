
use laboratorio;

create table Varones
select * from Nacimientos where sexo = 'Masculino';

create table Mujeres
select * from Nacimientos where sexo = 'Femenino';

create table Indeterminado
select * from Nacimientos where sexo = 'Indeterminado';

drop table Nacimientos;

set SQL_SAFE_UPDATES = 0;
update clientes_neptuno
	set pais = 'USA' where pais = 'ESTADOS UNIDOS';

update clientes_neptuno
	set NombreCompania = upper(nombrecompania);

update clientes_neptuno
	set Ciudad = upper(ciudad) , Pais = upper(pais);

alter table empleados
	add nombre_empleado varchar(30) after IdEmpleado;
update empleados
	set nombre_empleado = concat(Apellidos, ', ', Nombre);
alter table empleados
	drop Apellidos,
    drop Nombre;

alter table clientes_neptuno
	add tipo varchar (3);
update clientes_neptuno set tipo = 'VIP' where ciudad = 'Madrid';

alter table contactos
	modify telefono varchar (20);
update contactos
	set telefono = concat ('+34-', telefono) where telefono is not null;

alter table productos
	add fecha date;
update productos
	set fecha = concat (ano, '-', mes, '-', dia);
alter table productos
	drop dia,
    drop mes,
    drop ano;
update productos
	set origen = 'España' where origen = 'Espana';

alter table productos_neptuno
	modify suspendido varchar (20);
update productos_neptuno
	set suspendido = if (suspendido = '0', 'NO', 'SI');

update productos_neptuno
	set preciounidad = round (preciounidad * 1.1, 2);

update proveedores
	set region = null where region = '';

update contactos
	SET CIUDAD = CONCAT(UPPER(LEFT(CIUDAD, 1)), LOWER(SUBSTRING(CIUDAD, 2, LENGTH(CIUDAD))));

create table productos_suspendidos
select * from productos_neptuno where suspendido = 'SI';


update productos_neptuno
	set suspendido = 'SI' where idproveedor = 1;
insert into productos_suspendidos
	(idproducto, nombreproducto, nombrecontacto, nombrecategoria, preciounidad, suspendido, idproveedor)
select idproducto, nombreproducto, nombrecontacto, nombrecategoria, preciounidad, suspendido, idproveedor
	from productos_neptuno where suspendido = 'SI';
delete from productos_neptuno where suspendido = 'SI';


set SQL_SAFE_UPDATES = 0;
delete from productos_neptuno where suspendido = 'SI';

