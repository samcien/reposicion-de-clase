CREATE VIEW VistaProveedoresPartes AS
SELECT v.nombre AS proveedor, p.nombre AS parte, m.cantidad
FROM MovimientoPartes m
JOIN Proveedores v ON m.proveedor_id = v.id
JOIN Partes p ON m.parte_numero = p.numero_parte;
