CREATE VIEW VistaTotalPartesProveedor AS
SELECT v.nombre AS proveedor, SUM(m.cantidad) AS total_suministrado
FROM MovimientoPartes m
JOIN Proveedores v ON m.proveedor_id = v.id
GROUP BY v.nombre;
