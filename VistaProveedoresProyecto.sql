CREATE VIEW VistaProveedoresProyecto AS
SELECT v.nombre AS proveedor, pr.nombre AS proyecto, SUM(m.cantidad) AS total_partes
FROM MovimientoPartes m
JOIN Proveedores v ON m.proveedor_id = v.id
JOIN Proyectos pr ON m.proyecto_id = pr.id_proyecto
GROUP BY v.nombre, pr.nombre;
