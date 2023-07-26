/*
Ejercicio: 
Supongamos que tienes una base de datos de una tienda de productos electrónicos que contiene las siguientes tablas:

- Tabla "Productos":
Columnas: ID_Producto (clave primaria), Nombre, Precio, Stock.

-Tabla "Clientes":
Columnas: ID_Cliente (clave primaria), Nombre, Apellido, Dirección, Teléfono.

-Tabla "Pedidos":
Columnas: ID_Pedido (clave primaria), ID_Cliente (clave foránea de la tabla "Clientes"), Fecha.

-Tu tarea es escribir consultas SQL para realizar las siguientes operaciones:

* Mostrar todos los productos de la tabla "Productos" junto con su precio.
* Mostrar los nombres de los clientes que hayan realizado algún pedido.
* Mostrar el nombre y apellido de los clientes que hayan realizado un pedido en una fecha específica (por ejemplo, el 1 de enero de 2023).
* Mostrar el nombre y dirección de los clientes que hayan realizado pedidos de productos cuyo precio sea mayor a $1000.

*/

CREATE DATABASE db_productosElectronicos;
USE db_productosElectronicos;

CREATE TABLE productos(
     id_producto INT AUTO_INCREMENT NOT NULL PRIMARY KEY, /*Para crear relaciones, indexar e identificar como unico*/
     nombre_producto VARCHAR (255) NOT NULL,
     precio_producto DECIMAL (10,2) NOT NULL,
     stock_producto INT NOT NULL
);

CREATE TABLE clientes(
    id_cliente INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre_cliente VARCHAR (255) NOT NULL,
    apellido_cliente VARCHAR (255) NOT NULL,
    direccion_cliente VARCHAR (255) NOT NULL,
    telefono_cliente VARCHAR (10) NOT NULL
);

CREATE TABLE pedidos(
    id_pedido INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_cliente_fk INT NOT NULL,
    id_producto_fk INT NOT NULL,
    id_cantidad_producto INT NOT NULL,
    fecha_pedido DATE NOT NULL,

    FOREIGN KEY (id_cliente_fk) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_producto_fk) REFERENCES productos(id_producto)
);

INSERT INTO clientes (nombre_cliente,apellido_cliente,direccion_cliente,telefono_cliente) VALUES ('pepito', 'perez','carrera 4 #3-45 barrio martires', '3212345632');
INSERT INTO clientes (nombre_cliente,apellido_cliente,direccion_cliente,telefono_cliente) VALUES ('aleja', 'ramirez','calle principal 123, barrio el dorado', '3123456789');
INSERT INTO clientes (nombre_cliente,apellido_cliente,direccion_cliente,telefono_cliente) VALUES ('alan', 'brito','avenida libertad 456, barrio san martín','3145678901');
INSERT INTO clientes (nombre_cliente,apellido_cliente,direccion_cliente,telefono_cliente) VALUES ('aitor', 'tilla','calle flores 789, barrio los pinos', '3109876543');
INSERT INTO clientes (nombre_cliente,apellido_cliente,direccion_cliente,telefono_cliente) VALUES ('ines', 'sesario','avenida central 987, barrio santa rosa', '3132109876');

INSERT INTO productos (nombre_producto,precio_producto,stock_producto) VALUES ('Camiseta',19.99,50);
INSERT INTO productos (nombre_producto,precio_producto,stock_producto) VALUES ('Auriculares inalámbricos',49.99,20);
INSERT INTO productos (nombre_producto,precio_producto,stock_producto) VALUES ('Libreta de notas',5.99,100);
INSERT INTO productos (nombre_producto,precio_producto,stock_producto) VALUES ('Botella de agua',3.49,75);
INSERT INTO productos (nombre_producto,precio_producto,stock_producto) VALUES ('Pendrive USB',12.99,30);


/*
  Author: Daniel Quintero Henriquez
  Follow Me: 
  - https://www.facebook.com/Daniel.quint...
  - https://twitter.com/DanielQuintHenr
  - https://github.com/Danielo27

*/