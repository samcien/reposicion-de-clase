DELIMITER $$

CREATE PROCEDURE ObtenerPartesProveedor(IN proveedor_id VARCHAR(10))
BEGIN
    SELECT p.nombre, m.cantidad
    FROM MovimientoPartes m
    JOIN Partes p ON m.parte_numero = p.numero_parte
    WHERE m.proveedor_id = proveedor_id;
END $$

DELIMITER ;
