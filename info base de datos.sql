-- Insertar datos en Proveedores
INSERT INTO Proveedores (id, nombre, status, ciudad) VALUES
('V1', 'Smith', 20, 'Londres'),
('V2', 'Jones', 10, 'Paris'),
('V3', 'Blake', 30, 'Londres'),
('V4', 'Clark', 20, 'Londres'),
('V5', 'Adams', 30, 'Atenas');

-- Insertar datos en Partes
INSERT INTO Partes (numero_parte, nombre, color, peso, ciudad) VALUES
('P1', 'Tuerca', 'Rojo', 12.0, 'Londres'),
('P2', 'Perno', 'Verde', 17.0, 'Paris'),
('P3', 'Tornillo', 'Azul', 14.0, 'Londres'),
('P4', 'Tornillo', 'Rojo', 12.0, 'Londres'),
('P5', 'Leva', 'Azul', 12.0, 'Paris'),
('P6', 'Engrane', 'Rojo', 19.0, 'Londres');

-- Insertar datos en Proyectos
INSERT INTO Proyectos (id_proyecto, nombre, ciudad) VALUES
('Y1', 'Clasificador', 'Paris'),
('Y2', 'Monitor', 'Roma'),
('Y3', 'OCR', 'Atenas'),
('Y4', 'Consola', 'Atenas'),
('Y5', 'RAID', 'Londres'),
('Y6', 'EDS', 'Oslo'),
('Y7', 'Cinta', 'Londres');

-- Insertar datos en MovimientoPartes
INSERT INTO MovimientoPartes (proveedor_id, parte_numero, proyecto_id, cantidad) VALUES
('V1', 'P1', 'Y1', 200),
('V1', 'P1', 'Y4', 700),
('V2', 'P3', 'Y1', 400),
('V2', 'P3', 'Y2', 200),
('V2', 'P3', 'Y3', 200),
('V2', 'P3', 'Y4', 500),
('V2', 'P3', 'Y5', 600),
('V2', 'P3', 'Y6', 400),
('V2', 'P3', 'Y7', 800),
('V2', 'P5', 'Y2', 100),
('V3', 'P3', 'Y1', 200),
('V3', 'P4', 'Y2', 500),
('V4', 'P6', 'Y3', 300),
('V4', 'P6', 'Y7', 300),
('V5', 'P2', 'Y2', 200),
('V5', 'P2', 'Y4', 100),
('V5', 'P5', 'Y5', 500),
('V5', 'P5', 'Y7', 100),
('V5', 'P6', 'Y2', 200),
('V5', 'P1', 'Y4', 100),
('V5', 'P3', 'Y4', 200),
('V5', 'P4', 'Y4', 800),
('V5', 'P5', 'Y4', 400),
('V5', 'P6', 'Y4', 500);
