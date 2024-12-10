CREATE DATABASE Taller;

USE Taller;

-- Tabla de proveedores
CREATE TABLE Proveedores (
    id VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50),
    status INT,
    ciudad VARCHAR(50)
);

-- Tabla de partes
CREATE TABLE Partes (
    numero_parte VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50),
    color VARCHAR(20),
    peso DECIMAL(5,2),
    ciudad VARCHAR(50)
);

-- Tabla de proyectos
CREATE TABLE Proyectos (
    id_proyecto VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50),
    ciudad VARCHAR(50)
);

-- Tabla de movimiento de partes
CREATE TABLE MovimientoPartes (
    proveedor_id VARCHAR(10),
    parte_numero VARCHAR(10),
    proyecto_id VARCHAR(10),
    cantidad INT,
    FOREIGN KEY (proveedor_id) REFERENCES Proveedores(id),
    FOREIGN KEY (parte_numero) REFERENCES Partes(numero_parte),
    FOREIGN KEY (proyecto_id) REFERENCES Proyectos(id_proyecto)
);
