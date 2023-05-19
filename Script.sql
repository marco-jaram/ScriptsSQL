CREATE DATABASE db_datos;
USE db_datos;

-- Primera tabla Clientes
CREATE TABLE IF NOT EXISTS db_datos.cliente (
    idCliente INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombreCliente VARCHAR(50) UNIQUE,
    apellidoPaterno VARCHAR(40),
    apellidoMaterno VARCHAR(40),
    Telefono VARCHAR(30)
);
INSERT INTO cliente VALUES (0, 'Marco', 'Jaramillo', 'Castro', '6643111577');
INSERT INTO cliente VALUES (0, 'Martha' , 'Villa' , 'Perez' ,'664399504');
INSERT INTO cliente VALUES (0, 'Andrea' , 'Gomez' , 'Valdez' , '6648554775');
SELECT * FROM cliente;