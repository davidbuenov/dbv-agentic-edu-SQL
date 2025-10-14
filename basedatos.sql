-- Crear tabla de clientes
CREATE TABLE clientes (
    id_cliente NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    email VARCHAR2(100),
    ciudad VARCHAR2(50)
);

-- Crear tabla de productos
CREATE TABLE productos (
    id_producto NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    precio NUMBER(10,2),
    categoria VARCHAR2(50)
);

-- Crear tabla de pedidos
CREATE TABLE pedidos (
    id_pedido NUMBER,
    id_cliente NUMBER REFERENCES clientes(id_cliente),
    id_producto NUMBER REFERENCES productos(id_producto),
    fecha_pedido DATE,
    cantidad NUMBER
);

ALTER TABLE PEDIDOS ADD CONSTRAINT PEDIDOS_PK PRIMARY KEY (ID_PEDIDO,ID_CLIENTE,ID_PRODUCTO);


-- Insertar datos en clientes
INSERT INTO clientes VALUES (1, 'Ana Gamez', 'ana@example.com', 'Malaga');
INSERT INTO clientes VALUES (2, 'Luis Martinez', 'luis@example.com', 'Sevilla');
INSERT INTO clientes VALUES (3, 'Carla Ruiz', 'carla@example.com', 'Granada');

-- Insertar datos en productos
INSERT INTO productos VALUES (101, 'Teclado mecanico', 59.99, 'Electrinica');
INSERT INTO productos VALUES (102, 'Raton inalambrico', 29.99, 'Electronica');
INSERT INTO productos VALUES (103, 'Mochila ergonomica', 45.00, 'Accesorios');

-- Insertar datos en pedidos
INSERT INTO pedidos VALUES (1001, 1, 101, TO_DATE('2025-10-01', 'YYYY-MM-DD'), 2);
INSERT INTO pedidos VALUES (1002, 2, 102, TO_DATE('2025-10-05', 'YYYY-MM-DD'), 1);
INSERT INTO pedidos VALUES (1003, 3, 103, TO_DATE('2025-10-10', 'YYYY-MM-DD'), 3);
INSERT INTO pedidos VALUES (1004, 1, 103, TO_DATE('2025-10-12', 'YYYY-MM-DD'), 1);

commit;
