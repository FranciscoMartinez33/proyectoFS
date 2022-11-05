use virtualtrends;

INSERT INTO medida_estandar VALUES 
('1','xs'),
('2','s'),
('3','m'),
('4','l'),
('5','xl'),
('6','xxl'),
('7','personalizada');

INSERT INTO categoria_producto VALUES
('1','accesorio'),
('2','calzado'),
('3','indumentaria unisex'),
('4','prenda superior masculina'),
('5','prenda inferior masculina'),
('6','monoprenda masculina'),
('7','prenda superior femenina'),
('8','prenda inferior femenina'),
('9','monoprenda femenina');

INSERT INTO forma_envio VALUES
('1','retiro en sucursal'),
('2','envio a domicilio');

INSERT INTO forma_pago VALUES
('1','contado'),
('2','tarjeta credito'),
('3','tarjeta debito'),
('4','contrareembolso');

INSERT INTO provincia VALUES
('1','Cordoba'),
('2','Corrientes'),
('3','Entre Rios'),
('4','Formosa'),
('5','Jujuy'),
('6','La Pampa'),
('7','La Rioja'),
('8','Mendoza'),
('9','Misiones'),
('10','Neuquen'),
('11','Rio Negro'),
('12','Salta'),
('13','San Juan'),
('14','San Luis'),
('15','Santa Cruz'),
('16','Santa Fe'),
('17','Santiago del Estero'),
('18','Tierra del Fuego'),
('19','Tucuman');

INSERT INTO usuario VALUES
('1','26067345','Jorge Francisco','Marquez','123456','3515348906','Paso 56','jorgemarquez@hotmail.com','1031','Cordoba','1'),
('2','32450226','Jose','Fernandez','112233','1532049623','Paso 235','josfer@yaya.com','1428','Rosario','16'),
('3','26365617','Ivana Soledad','Avalos','123321','03834231009','De la quintana 147','ivita_avalos@gmail.com','4700','San fernando','4'),
('4','26731564','Mariel','Montalbam','343343','03884222447','Lvalle 546','maritamontalbam@hotmail.com','4600','San salvador','5');

INSERT INTO medida_corporal_personal VALUES
('1','null','null','null','null','null','null','null','null','null','null','null','1');

INSERT INTO diseñador VALUES
('1','12343256','Rogelio','Paredes','111222','3764465740','corralon 2424','r.p46@yahoo.com.ar','4848','Posadas','9'),
('2','35231987','Armando','Cejas','676767','34244441543','Piedras 28','a.cejas@gmail.com','450','Santa fe','16'),
('3','20222412','Maria','Iriarte','898900','3431164531','Las flores 12','mariairiarte@gmail.com','2645','Concordia','3');

INSERT INTO producto VALUES
('1','remeraatr','4','null','4500','1'),
('2','remeraflow','7','null','4600','1'),
('3','buzo','3','buzo unisex','5600','2'),
('4','short','5','short urbano','2800','3'),
('5','camisa','4','null','3000','1'),
('6','sweter','4','null','2500','2');


INSERT INTO medidas_producto VALUES
('1','1'),
('1','2'),
('1','3'),
('1','4'),
('1','5'),
('1','6'),
('1','7'),
('2','1'),
('2','2'),
('3','1'),
('3','2'),
('3','3'),
('3','4'),
('3','5'),
('3','6'),
('3','7'),
('4','7'),
('5','5'),
('5','6'),
('6','7');

INSERT INTO carrito_compra VALUES
('1','1','1','1'),
('2','2','2','3'),
('3','2','2','4');

INSERT INTO carrito_compra_producto VALUES 
('1','1','1','4500','3','3'),
('2','1','1','9000','2','2'),
('3','3','1','5600','5','5');

