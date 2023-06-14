CREATE DATABASE comercializadora;
USE comercializadora;
CREATE TABLE Clientes (
  IDCliente INT AUTO_INCREMENT PRIMARY KEY,
  Nombre VARCHAR(50),
  Apellido VARCHAR(50),
  Direccion VARCHAR(100),
  Telefono VARCHAR(15),
  Email VARCHAR(100),
  Ciudad VARCHAR(50)
);
CREATE TABLE Productos (
  IDProducto INT AUTO_INCREMENT PRIMARY KEY,
  Nombre VARCHAR(50),
  Descripcion VARCHAR(200),
  Precio DECIMAL(10,2),
  Stock INT,
  Categoria VARCHAR(50)
);
CREATE TABLE Ventas (
  IDVenta INT AUTO_INCREMENT PRIMARY KEY,
  Fecha DATE,
  IDCliente INT,
  IDProducto INT,
  Cantidad INT,
  Total DECIMAL(10,2),
  FOREIGN KEY (IDCliente) REFERENCES Clientes(IDCliente),
  FOREIGN KEY (IDProducto) REFERENCES Productos(IDProducto)
);
INSERT INTO Clientes (Nombre, Apellido, Direccion, Telefono, Email, Ciudad)
VALUES
  ('Juan', 'Pérez', 'Calle 123, Ciudad A', '555-1234', 'juan.perez@email.com', 'Ciudad A'),
  ('María', 'López', 'Calle 456, Ciudad B', '555-5678', 'maria.lopez@email.com', 'Ciudad B'),
  ('Carlos', 'García', 'Calle 789, Ciudad A', '555-9876', 'carlos.garcia@email.com', 'Ciudad A'),
  ('Laura', 'Rodríguez', 'Calle 321, Ciudad C', '555-4321', 'laura.rodriguez@email.com', 'Ciudad C'),
  ('Ana', 'Martínez', 'Calle 654, Ciudad A', '555-8765', 'ana.martinez@email.com', 'Ciudad A'),
  ('Pedro', 'Sánchez', 'Calle 987, Ciudad B', '555-2198', 'pedro.sanchez@email.com', 'Ciudad B'),
  ('Sofia', 'Torres', 'Calle 852, Ciudad C', '555-7852', 'sofia.torres@email.com', 'Ciudad C');
INSERT INTO Productos (Nombre, Descripcion, Precio, Stock, Categoria)
VALUES
  ('Laptop', 'Laptop de última generación', 1000.00, 10, 'Electrónica'),
  ('Teléfono', 'Teléfono inteligente', 500.00, 20, 'Electrónica'),
  ('Camisa', 'Camisa de manga corta', 30.00, 50, 'Ropa'),
  ('Pantalón', 'Pantalón de mezclilla', 50.00, 30, 'Ropa'),
  ('Zapatos', 'Zapatos de cuero', 80.00, 15, 'Calzado'),
  ('Reloj', 'Reloj de pulsera', 100.00, 5, 'Accesorios'),
  ('Bolso', 'Bolso de mano', 70.00, 8, 'Accesorios'); 
