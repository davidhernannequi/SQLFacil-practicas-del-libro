

--Insercion de registros en las tablas


--Insercion de Equipos

insert into Equipos (Equipo) values ('Las Palmas');
insert into Equipos (Equipo) values ('Xerez');
insert into Equipos (Equipo) values ('Getafe');
insert into Equipos (Equipo) values ('Nastic');
insert into Equipos (Equipo) values ('Celta');
insert into Equipos (Equipo) values ('Alcorcón');


--Insercion de Jornadas

insert into Jornadas (Nombre, Fecha, Disputada) values ('Jornada 1', '20100110', 'S');
insert into Jornadas (Nombre, Fecha, Disputada) values ('Jornada 2', '20100117', 'S');
insert into Jornadas (Nombre, Fecha, Disputada) values ('Jornada 3', '20100124', 'S');
insert into Jornadas (Nombre, Fecha, Disputada) values ('Jornada 4', '20100207', 'S');
insert into Jornadas (Nombre, Fecha, Disputada) values ('Jornada 5', '20100214', 'S');
insert into Jornadas (Nombre, Fecha, Disputada) values ('Jornada 6', '20100221', 'S');
insert into Jornadas (Nombre, Fecha, Disputada) values ('Jornada 7', '20100307', 'S');
insert into Jornadas (Nombre, Fecha, Disputada) values ('Jornada 8', '20100321', 'N');
insert into Jornadas (Nombre, Fecha, Disputada) values ('Jornada 9', '20100404', 'N');
insert into Jornadas (Nombre, Fecha, Disputada) values ('Jornada 10', '20100418', 'N');


----Insercion de Eventos

insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (1, 1, 5, 1, '1');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (1, 2, 2, 3, '1');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (1, 3, 4, 6, '1');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (2, 1, 1, 2, '2');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (2, 2, 3, 4, '1');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (2, 3, 6, 5, '2');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (3, 1, 1, 4, 'X');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (3, 2, 3, 5, '2');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (3, 3, 6, 2, '1');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (4, 1, 3, 6, '2');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (4, 2, 2, 4, '2');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (4, 3, 1, 5, '1');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (5, 1, 1, 3, '1');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (5, 2, 5, 2, '2');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (5, 3, 6, 4, '1');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (6, 1, 2, 1, 'X');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (6, 2, 4, 3, '1');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (6, 3, 5, 6, '2');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (7, 1, 3, 2, 'X');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (7, 2, 4, 5, '1');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (7, 3, 6, 1, 'X');
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (8, 1, 3, 1, NULL);
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (8, 2, 2, 6, NULL);
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (8, 3, 5, 4, NULL);
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (9, 1, 1, 6, NULL);
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (9, 2, 5, 3, NULL);
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (9, 3, 4, 2, NULL);
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (10, 1, 6, 3, NULL);
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (10, 2, 4, 1, NULL);
insert into Eventos(Id_Jornada, Id_Evento, Localista, Visitante, Resultado) values (10, 3, 2, 5, NULL);


----Insercion de Quinielas

insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(1, 'Quini 1.1', 'S', 0);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(1, 'Quini 1.2', 'S', 1);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(1, 'Quini 1.3', 'S', 0);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(2, 'Quini 2.1', 'S', 1);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(2, 'Quini 2.2', 'S', 1);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(3, 'Quini 3.1', 'S', 1);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(3, 'Quini 3.2', 'S', 1);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(3, 'Quini 3.3', 'S', 3);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(3, 'Quini 3.4', 'S', 2);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(4, 'Quini 4.1', 'S', 2);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(4, 'Quini 4.2', 'S', 0);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(4, 'Quini 4.3', 'S', 0);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(5, 'Quini 5.1', 'S', 2);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(5, 'Quini 5.2', 'S', 2);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(6, 'Quini 6.1', 'S', 0);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(6, 'Quini 6.2', 'S', 1);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(6, 'Quini 6.3', 'S', 0);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(7, 'Quini 7.1', 'S', 1);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(7, 'Quini 7.2', 'S', 1);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(8, 'Quini 8.1', 'N', NULL);
insert into Quinielas (Id_Jornada,Nombre,Escrutada,Aciertos) values(8, 'Quini 8.2', 'N', NULL);


----Insercion de Pronosticos

insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 1, 1, 1, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 1, 1, 2, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 1, 1, 3, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 2, 1, 1, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 2, 1, 2, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 2, 1, 3, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 3, 1, 1, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 3, 1, 2, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 3, 1, 3, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 4, 2, 1, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 4, 2, 2, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 4, 2, 3, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 5, 2, 1, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 5, 2, 2, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 5, 2, 3, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 6, 3, 1, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 6, 3, 2, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 6, 3, 3, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 7, 3, 1, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 7, 3, 2, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 7, 3, 3, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 8, 3, 1, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 8, 3, 2, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 8, 3, 3, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 9, 3, 1, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 9, 3, 2, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 9, 3, 3, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 10, 4, 1, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 10, 4, 2, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 10, 4, 3, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 11, 4, 1, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 11, 4, 2, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 11, 4, 3, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 12, 4, 1, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 12, 4, 2, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 12, 4, 3, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 13, 5, 1, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 13, 5, 2, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 13, 5, 3, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 14, 5, 1, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 14, 5, 2, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 14, 5, 3, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 15, 6, 1, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 15, 6, 2, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 15, 6, 3, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 16, 6, 1, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 16, 6, 2, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 16, 6, 3, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 17, 6, 1, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 17, 6, 2, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 17, 6, 3, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 18, 7, 1, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 18, 7, 2, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 18, 7, 3, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 19, 7, 1, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 19, 7, 2, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 19, 7, 3, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 20, 8, 1, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 20, 8, 2, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 20, 8, 3, '2');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (1, 21, 8, 1, 'X');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (2, 21, 8, 2, '1');
insert into Pronosticos (Id_Pronostico, Id_Quiniela, Id_Jornada, Id_Evento, Pronostico) values (3, 21, 8, 3, '2');

