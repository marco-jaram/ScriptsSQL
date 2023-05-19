CREATE database  db_Crud;
use db_Crud;

CREATE table tb_tarea
(
id int auto_increment primary key,
tarea varchar(200),
finalizado bool
);

INSERT  INTO  tb_tarea (tarea, finalizado) values("Inicio de clase lunes | 8:00am", false);
INSERT  INTO  tb_tarea (tarea, finalizado) values("Realizar examen parcial", false);

SELECT * FROM tb_tarea  tt;
SELECT * FROM tb_tarea;
