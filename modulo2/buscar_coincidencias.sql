#BUSCAR COINCIDENCIAS DE PALABRAS O PARTES DE PALABRAS:
-- que en el nombre contenga 'marshall'
#select prdNombre, prdPrecio from productos where prdNombre like 'Marshall%'; #like: que contenga algo, %: comodin de caracteres
#select prdNombre, prdPrecio from productos where prdNombre like '%acton%';
#select prdNombre, prdPrecio, prdDescripcion from productos where prdDescripcion like 'Altavoz%'; #que comience con altavoz
#select prdNombre, prdPrecio, prdDescripcion from productos where prdDescripcion like 'Altavoz%'
/*
select prdNombre, mkNombre, prdPrecio, prdDescripcion from productos, marcas
where productos.idMarca = marcas.idMarca and prdDescripcion like '%smart%' */

/*
select prdNombre, prdPrecio, mkNombre, catNombre, prdDescripcion from productos, marcas, categorias
where  productos.idMarca = marcas.idMarca and productos.idCategoria = categorias.idCategoria
and prdDescripcion like 'Altavoz%';
*/

/*
select prdNombre, prdPrecio, mkNombre, catNombre
from productos
join marcas
	on productos.idMarca = marcas.idMarca
join categorias
	on productos.idCategoria = categorias.idCategoria
where prdDescripcion like '%bluetooth%';
*/
