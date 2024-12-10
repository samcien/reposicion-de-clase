CREATE VIEW VistaProyectosPartes AS
SELECT pr.nombre AS proyecto, p.nombre AS parte, SUM(m.cantidad) AS cantidad_total
FROM MovimientoPartes m
JOIN Proyectos pr ON m.proyecto_id = pr.id_proyecto
JOIN Partes p ON m.parte_numero = p.numero_parte
GROUP BY pr.nombre, p.nombre;
