use test;
CREATE TABLE IF NOT EXISTS persona(
 id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    nombre VARCHAR(50) UNIQUE,
    apellido VARCHAR(40),
    email VARCHAR(40),
    telefono VARCHAR(30)
    
);
insert into persona  values (0, 'Marco',  'Jaramillo', 'marco@gmail.com',  '6643111567');
insert into persona  values (0, 'Andrea', 'Gonzalez ', 'andy@gmail.com' ,  '6644987500');
insert into persona  values (0, 'Martha', 'Castro ',   'math@hotmail.com', '6648762555');
insert into persona  values (0, 'Dulce',  'Rodriguez', 'dul@hotmail',      '6648869583');
insert into persona  values (0, 'Pedro',  'Perez',     'peter@gmail.com',  '6645998834');
insert into persona  values (0, 'Pablo',  'Sanchez',     'psanch@gmail.com','309477123');
SELECT * from persona;
