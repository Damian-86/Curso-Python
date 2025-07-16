-- EAEAEEA PEPEPEP

USE Neptuno

-- MOSTRAR DATOS, NO LOS MODIFICA
--ES DE LECTURA, TIENE DOS PARTES
--SUJETO Y PREDICADO, EL SUJETO ES LA SENTENCIA HASTA EL FROM
-- EL PREDICADO DESPUES DEL FROM
SELECT * FROM Pedidos
SELECT Cargo, Destinatario FROM Pedidos;
SELECT Destinatario as Cliente FROM Pedidos;
SELECT * FROM Pedidos ORDER BY Destinatario ASC
SELECT * FROM Pedidos ORDER BY Destinatario DESC
-- EL FILTRADO
SELECT * FROM Pedidos WHERE PaísDestinatario = 'Alemania'
-- filtrar mas ordenar
SELECT * FROM Pedidos WHERE PaísDestinatario = 'Alemania' 
ORDER BY CiudadDestinatario
--ver los primeros en elementos
SELECT TOP 5* FROM Pedidos	
-- Cunado el nombre de un nombre tiene espacios en blanco
SELECT * FROM [Detalles de pedidos]
--Calcular un campo
SELECT PrecioUnidad, Cantidad, (PrecioUnidad*Cantidad)as Importe FROM [Detalles de pedidos]




