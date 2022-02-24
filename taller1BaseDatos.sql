CREATE TABLE producto (
codigo INT PRIMARY KEY, 
nombreProducto VARCHAR(50),
tipoProducto VARCHAR(50),
stockProducto INT,
valorProducto VARCHAR (50)
)

INSERT INTO producto VALUES (2,'Jabon','Aseo', 130, 2000);
INSERT INTO producto VALUES (3,'Arroz','Comida',150, 2800);
INSERT INTO producto VALUES (4,'Aceite','Comida',80, 4100);
INSERT INTO producto VALUES (5,'Colgate','Aseo',150, 1800);
INSERT INTO producto VALUES (6,'Azucar','Comida',80, 1800);
INSERT INTO producto VALUES (7,'Guantes','Aseo',50, 5100);
INSERT INTO producto VALUES (8,'Gaseosas','Comida',60, 2500)

SELECT * FROM producto

CREATE VIEW productos_mayor_inventario AS(
SELECT * FROM producto ORDER BY stockproducto desc limit 3
)

SELECT * FROM productos_mayor_inventario



CREATE TABLE categoriaProducto(
idCategoriaProducto INT PRIMARY KEY,
nombreCategoria VARCHAR(50),
nombreProveedorProducto VARCHAR(50),
produccion_Anual INT
)

INSERT INTO categoriaProducto VALUES (100,'Aseo', 'Brilla King', 70000);
INSERT INTO categoriaProducto VALUES (200,'Comida', 'Arroz Diana',80000);
INSERT INTO categoriaProducto VALUES (300,'Bebidas', 'Coca cola',150000);
INSERT INTO categoriaProducto VALUES (400,'Tecnologia', 'Samsung',40000);
INSERT INTO categoriaProducto VALUES (500,'Moda', 'Koaj',75000);

SELECT * FROM categoriaProducto

CREATE VIEW mayor_produccion_producto AS (
SELECT * FROM categoriaProducto ORDER BY produccion_anual desc limit 3
)

SELECT * FROM mayor_produccion_producto


CREATE TABLE administradoresAplicacion (
idAdministradoresAplicacion INT PRIMARY KEY,
cantidadUsuarios VARCHAR (50),
stockAlmacen VARCHAR(50),
aprobacionProveedor VARCHAR(50),
nombreProveedor VARCHAR (50)
)

DROP TABLE administradoresAplicacion

INSERT INTO administradoresAplicacion VALUES (1,'8', '50', 'NO','Brilla King');
INSERT INTO administradoresAplicacion VALUES (2,'4', '805', 'SI','COCA COLA');
INSERT INTO administradoresAplicacion VALUES (3,'3', '740', 'SI','SAMSUNG');

SELECT * FROM administradoresAplicacion

CREATE TABLE compradores(
idCompradores INT PRIMARY KEY,
nombreComprador VARCHAR (50),
tipoPago VARCHAR (50),
cantidadProductosComprados VARCHAR (50),
telefono VARCHAR (50),
correoElectronico VARCHAR (45),
direccion VARCHAR (45),
ciudad VARCHAR (45)
)

INSERT INTO compradores VALUES (1,'Juan Perez', 'EFECTIVO', '8','3145258644','askjs@gmail.com','CR 8 - 3', 'BOGOTA');
INSERT INTO compradores VALUES (2,'DANIEL', 'TARJETA DEBITO', '20','3145785644','asFR@gmail.com','CR 5 - 3', 'CALI');
INSERT INTO compradores VALUES (3,'Jesus', 'TARJETA DEBITO', '7','3115257844','kjask@gmail.com','CR 7 - 10', 'BOGOTA');
INSERT INTO compradores VALUES (4,'Sebastian', 'EFECTIVO', '50','3102547863','pwesas@gmail.com','CR 72 - 52', 'ARMENIA');
INSERT INTO compradores VALUES (5,'Luis', 'TARJETA CREDITO', '50','9587452','basjelw@gmail.com','CR 85 - 96', 'MEDELLIN');
INSERT INTO compradores VALUES (6,'Diego', 'TARJETA CREDITO', '15','3215478963','jkaliw@gmail.com','Cll 9 - 8', 'BOGOTA');
INSERT INTO compradores VALUES (7,'Mario','EFECTIVO' , '8','NO TIENE','skjkas@gmail.com','CR 75 - 3', 'BOGOTA');

SELECT * FROM compradores

CREATE VIEW pago_compradores AS (
SELECT * FROM compradores WHERE tipopago ='EFECTIVO'
)


SELECT * FROM pago_compradores

CREATE TABLE Proveedor (
idProveedor INT PRIMARY KEY,
nombreProveedorProducto VARCHAR (50),
direccionProveedor VARCHAR (50),
ciudadProveedor VARCHAR (50),
telefonoProveedor VARCHAR (50)
)

DROP TABLE Proveedor

INSERT INTO Proveedor VALUES (1,'COCA COLA', 'CRA 87 # 5', 'Bogota','3145258644');
INSERT INTO Proveedor VALUES (2,'BRILLA KING', 'CRA 187 # 55', 'CALI','3187452314');
INSERT INTO Proveedor VALUES (3,'KOAJ', 'CRA 78 # 45', 'Bogota','3147569812');
INSERT INTO Proveedor VALUES (4,'SAMSUNG', 'CRA 10 # 5', 'NEW YORK','3207418523');

SELECT * FROM Proveedor

CREATE VIEW ciudadProveedor AS (
SELECT * FROM proveedor WHERE ciudadProveedor = 'Bogota'
)

SELECT * FROM ciudadProveedor







