/* Scripts basicos para la creacion de una Base de Datos, luego agregar una Tabla y rellenar los datos */

/* Crear Base de Datos */
create database UPI;

/* Borrar table */
 drop table tab_users;

/* Usar la Base de datos */
use UPI;

/* Crear la tabla en la DB */
create table tab_personas(
var_ID int auto_increment primary key, 
var_nombre_1 varchar(20),
var_nombre_2 varchar(20),
var_apellido_1 varchar(20),
var_apellido_2 varchar(20),
var_cedula varchar(20),
var_sexo int, /*Hombre = 0, Mujer = 1*/
fk_genero int
)

/* Agregar los valores a la Tabla de la DB */
insert into tab_personas(var_nombre_1, var_nombre_2, var_apellido_1, var_apellido_2, var_cedula, var_sexo, fk_genero) values ('Jose', 'Javier', 'Mata', 'Guerrero', '326545', '0', '1')
 
 /* Mostrar la Tabla de la DB */
 select * from tab_personas;
 
  /* Borrar objeto de la Tabla de la DB en base a el ID*/
 delete from genero where var_ID = 3
 
 /*Actualizar*/
 UPDATE tabla SET tabla.nombre = 'Carlos', tabla.apellido = 'Gonzalez' where var_ID = ?
 
 
   /* Crear backup de la tabla*/
   create table personas_bk like personas
   insert into personas_bk select * from personas
   
