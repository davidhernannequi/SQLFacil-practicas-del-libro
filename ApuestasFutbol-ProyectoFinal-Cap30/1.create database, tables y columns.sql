
--Creacion de base de datos QuinieraFutbolisticaDB_SQLFacil

create database QuinieraFutbolisticaDB_SQLFacil;
go

--Estableciendo el uso la base de datos 

use QuinieraFutbolisticaDB_SQLFacil;
go

--Creacion de tablas, columnas, tipos de datos y restricciones

create table Equipos (
Id_Equipo int IDENTITY (1,1) not null,
Equipo varchar(30) not null,
CONSTRAINT PK_Equipo PRIMARY KEY (Id_Equipo)
);

create table Jornadas (
Id_Jornada int IDENTITY (1,1) not null,
Nombre varchar(30) not null,
Fecha date not null,
Disputada varchar(1) not null default 'N',
CONSTRAINT CHK_Disputada CHECK (Disputada IN ('S', 'N')),
CONSTRAINT PK_Jornada PRIMARY KEY (Id_Jornada)
);

create table Eventos (
Id_Evento int not null,
Id_Jornada int not null,
Localista int not null,
Visitante int not null,
Resultado varchar(1) null,
CONSTRAINT CHK_Resultado CHECK (Resultado IN ('1', '2', 'X')),
CONSTRAINT PK_Eventos PRIMARY KEY (Id_Evento, Id_Jornada)
);

create table Quinielas (
Id_Quiniela int not null,
Id_Jornada int not null,
Nombre varchar(30) not null,
Escrutada varchar(1) not null DEFAULT 'N',
Aciertos int null,
CONSTRAINT PK_Quiniela PRIMARY KEY (Id_Quiniela),
CONSTRAINT CHK_Escrutada CHECK (Escrutada IN ('S', 'N'))
);

create table Pronosticos (
Id_Pronostico int not null,
Id_Quiniela int not null,
Id_Jornada int not null,
Id_Evento int not null,
Pronostico varchar(1) not null,
CONSTRAINT CHK_Pronostico CHECK (Pronostico IN('1', '2', 'X')),
CONSTRAINT PK_Pronostico PRIMARY KEY (Id_Pronostico,Id_Quiniela)
);


-- Agregar las restricciones de clave foránea

alter table Eventos
ADD
CONSTRAINT FK_Eventos_Id_Local FOREIGN KEY(Localista) REFERENCES Equipos(Id_Equipo),
CONSTRAINT FK_Eventos_Id_Visitante FOREIGN KEY(Visitante) REFERENCES Equipos(Id_Equipo),
CONSTRAINT FK_Eventos_Id_Jornada_Evento FOREIGN KEY(Id_Jornada) REFERENCES Jornadas(Id_Jornada);

alter table Quinielas
ADD CONSTRAINT FK_Quinielas_Id_Jornada_Quiniela FOREIGN KEY(Id_Jornada) REFERENCES Jornadas(Id_Jornada);

alter table Pronosticos
ADD
CONSTRAINT FK_Pronostico_Id_Quiniela FOREIGN KEY(Id_Quiniela) REFERENCES Quinielas(Id_Quiniela),
CONSTRAINT FK_Pronostico_Id_Jornada_Id_Evento FOREIGN KEY(Id_Evento,Id_Jornada) REFERENCES Eventos(Id_Evento,Id_Jornada);