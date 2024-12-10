DELIMITER $$

CREATE PROCEDURE ObtenerMovimientoPartes()
BEGIN
    SELECT p.nombre, pr.nombre AS proyecto, m.cantidad
    FROM MovimientoPartes m
    JOIN Partes p ON m.parte_numero = p.numero_parte
    JOIN Proyectos pr ON m.proyecto_id = pr.id_proyecto;
END $$

DELIMITER ;
