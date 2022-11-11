use virtualtrends;

#UPDATE
#en ls siguiente sentencia se actualiza el domicilio del usuario id=1
UPDATE usuario
SET dirección='Libertad 1328'
WHERE id_usuario=1;

#en la siguiente sentencia se actualiza la medida de cintura del usuario id=2
UPDATE medida_corporal_personal
SET cintura='71'
WHERE id_usuario=2;

#en la siguiente sentencia se actualiza la forma de pago en el carrito de compra del usuario id=3
UPDATE carrito_compra
SET id_forma_pago=4
WHERE id_usuario=3;

#DELETE
#en la siguiente sentencia se elimina el registro de medida corporal del usuario id=1
DELETE FROM medida_corporal_personal
WHERE id_usuario=1;

#SELECT
#en la siguiente sentencia se busca leer,mediante el uso de alias,los nombres de los productos y precios del diseñador id=1
SELECT nombre_producto nombre,precio_producto producto
FROM producto
WHERE id_diseñador=1;

#en la siguiente sentencia se busca leer la cantidad de usuarios registrados de la provincia de cordoba
SELECT count(*)
FROM usuario
WHERE id_provincia=1;

#en la siguiente sentencia se busca leer la cantidad de registros de medida corporal personal que tiene la bd
SELECT count(*)
FROM medida_corporal_personal;