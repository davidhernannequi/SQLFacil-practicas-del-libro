
-- Que calendario tiene en la competicion el Xerez, equipo de identificador 2:

Select J.Nombre AS 'Jornada', format( J.Fecha, 'dd-MM-yyyy') AS Fecha, L.Equipo AS 'Local', V.Equipo AS 'Visitante'
From Jornadas J
inner join Eventos Ev on J.Id_Jornada = Ev.Id_Jornada
inner join Equipos L on Ev.Localista = L.Id_Equipo
inner join Equipos V on Ev.Visitante = V.Id_Equipo
where Ev.Localista = 2 or Ev.Visitante = 2
order by J.Fecha


--1) Desarrolle un informe que muestre los pronosticos de una quiniela
	-- Pruebe su funcionamiento con la quiniela de identificador 4

Select P.Id_Quiniela, P.Id_Evento, L.Equipo AS 'Local', V.Equipo AS 'Visitante', P.Pronostico
From Pronosticos P
inner join Quinielas Q on P.Id_Quiniela = Q.Id_Quiniela
inner join Eventos Ev on P.Id_Evento = Ev.Id_Evento and Ev.Id_Jornada = P.Id_Jornada
inner join Equipos L on L.Id_Equipo = Ev.Localista
inner join Equipos V on Ev.Visitante = V.Id_Equipo
where Q.Id_Quiniela = 4


--2) Desarrolle un informe que muestre la combinacion ganadora de una jornada
	-- Pruebe su funcionamiento con la jornada de identificador 3

Select Ev.Id_Jornada, Ev.Id_Evento, L.Equipo AS 'Local', V.Equipo AS 'Visitante', Ev.Resultado
From Eventos Ev
inner join Equipos L  on Ev.Localista = L.Id_Equipo
inner join Equipos V on Ev.Visitante = V.Id_Equipo
where Ev.Id_Jornada = 3


--3.1) Desarrolle un informe que escrute la quiniela, es decir,
	--que muestre los eventos en los que se acertó el resultado
	-- Pruebe su funcionamiento con la quiniela de identificador 6

Select Q.Id_Quiniela, Q.Id_Jornada, Ev.Id_Evento,
L.Equipo AS 'Local', V.Equipo AS 'Visitante',
Ev.Resultado,
P.Pronostico, 
Case
	When Ev.Resultado = P.Pronostico Then 'Si'
	Else 'No'
End AS 'Acierto'
From Quinielas Q
inner join Pronosticos P on Q.Id_Quiniela = P.Id_Quiniela
inner join Eventos Ev on Ev.Id_Jornada = Q.Id_Jornada AND Ev.Id_Evento = P.Id_Evento
inner join Equipos L  on Ev.Localista = L.Id_Equipo
inner join Equipos V on Ev.Visitante = V.Id_Equipo
Where Q.Id_Quiniela = 6


--3.2.1) Desarrolle una consulta que calcule los aciertos de las quinielas
	-- es decir, que escrute las quinielas
	-- Agrupe los datos por quiniela.
	-- Si una quiniela no tiene aciertos no es necesario que aparezca

Select distinct Q.Id_Quiniela, Q.Aciertos
From Quinielas Q
inner join Pronosticos p ON Q.Id_Quiniela = P.Id_Quiniela
where Q.Aciertos is not null AND Q.Aciertos > 0

--3.2.2) Construya una instrucción UPDATE,
	-- donde deberá incorporar una subconsulta,
	-- para actualizar el campo ACIERTOS de la tabla QUINIELAS.
	-- Esta instrucción UPDATE es de hecho la que escruta las quinielas.
	-- solo deberá adaptarla para incluir las referencias del registro en curso de la tabla QUINIELAS
	-- que está actualizando la instrucción UPDATE.
	-- No es un problema volver a escrutar quinielas ya escrutadas,
	-- pero no escrute quinielas de jornadas no disputadas.
	-- No olvide que si la quiniela que se está escrutando no presenta aciertos,
	-- es decir, la subconsulta no devuelve ningún registro, debe guardarse un cero y no NULL

--UPDATE Quinielas
--SET ACIERTOS = ISNULL(
--    (
--        SELECT COUNT(1)
--        FROM EVENTOS E
--        INNER JOIN PRONOSTICOS P ON E.ID_JORNADA = P.ID_JORNADA AND E.ID_EVENTO = P.ID_EVENTO
--		inner join Quinielas Q on Q.Id_Quiniela = p.Id_Quiniela
--        WHERE P.PRONOSTICO = E.RESULTADO
--    ), 0)
--FROM QUINIELAS Q
--WHERE EXISTS (
--    SELECT 1
--    FROM JORNADAS J
--    WHERE J.ID_JORNADA = Q.ID_JORNADA
--    AND J.DISPUTADA = 'S'
--);


--3.3) Desarrolle una consulta que calcule los aciertos de las quinielas
	-- pero esta vez considerando las quinielas que no presentan ningún acierto.

Select distinct Q.Id_Quiniela,Q.Aciertos
From Quinielas Q
inner join Pronosticos p ON Q.Id_Quiniela = P.Id_Quiniela


--4) Desarrolle un informe que muestre la media de aciertos agrupado por jornada.
	-- No considere quinielas de jornadas no disputadas.
	-- No es necesario recalcular los aciertos de las quinielas,
	-- en su lugar use el campo ACIERTOS de la tabla QUINIELAS.

Select Q.Id_Jornada, Count(Q.Id_Quiniela) AS 'Quinielas',
format(AVG(CAST(Q.Aciertos AS FLOAT)),'N2') AS Media_Aciertos
From Quinielas Q
inner join Jornadas J on J.Id_Jornada = Q.Id_Jornada
where J.Disputada = 'S'
group by Q.Id_Jornada


--5) Desarrolle un informe que muestre la media de aciertos agrupado por meses.
	-- No considere quinielas de jornadas no disputadas,
	-- ni recalcule los aciertos de las quinielas.

Select format(J.Fecha, 'MM-yyyy') AS 'Mes', Count(Q.Id_Quiniela) AS 'Quinielas',
format(AVG(CAST(Q.Aciertos AS FLOAT)),'N2') AS Media_Aciertos
From Quinielas Q
inner join Jornadas J on J.Id_Jornada = Q.Id_Jornada
where J.Disputada = 'S'
group by format(J.Fecha, 'MM-yyyy')

