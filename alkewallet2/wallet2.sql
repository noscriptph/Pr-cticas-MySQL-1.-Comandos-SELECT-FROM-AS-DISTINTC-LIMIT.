-- CREANDO BASE DE DATOS Wallet2
CREATE DATABASE IF NOT EXISTS Alke_wallet;
USE Alke_wallet;


-- CREANDO TABLAS SOLICITADAS
CREATE TABLE IF NOT EXISTS Usuarios(
	user_id int auto_increment primary key,
	nombre varchar(100)NOT NULL,
	correo_electronico varchar(100) NOT NULL,
    contrasenia varchar(100) NOT NULL,
    saldo decimal(10,2)NOT NULL,
    -- indica que la fecha es actual al momento de realizarse de forma predeterminada
    fecha_creacion timestamp default current_timestamp

	);
    
    CREATE TABLE IF NOT EXISTS Transacciones(
	transaccion_id int auto_increment primary key,
    sender_user_id int,
    receiver_user_id int,
    valor decimal(10,2)NOT NULL,
    transation_date timestamp default current_timestamp,
    foreign key(sender_user_id) references Usuarios(user_id),
    foreign key(receiver_user_id) references Usuarios(user_id)
    );
    
    CREATE TABLE IF NOT EXISTS Monedas(
currency_id int auto_increment primary key,
currency_name varchar(50) NOT NULL,
currency_symbol varchar(5) 
);


-- Popular entidad Monedas
INSERT INTO Monedas (currency_name, currency_symbol)
VALUES
    ('Dolar', '$'),
    ('Euro', 'Є'),
    ('Libra Esterlina', '£'),
    ('Peso Chileno', '$'),
    ('Dolar Canadiense', 'Є'),
    ('Yen Japonés', '¥'),
    ('Franco Suizo', 'CHF'),
    ('Peso Argentino', '$'),
    ('Real Brasileño', 'R$'),
    ('Won Surcoreano', '₩');


-- agregar columna a usuario para asignar una clave foranea
ALTER TABLE Usuarios ADD COLUMN moneda_id INT,
ADD CONSTRAINT fk_usuario_moneda FOREIGN KEY (moneda_id) REFERENCES Monedas(currency_id);

-- Insertar datos en la tabla Usuarios con contraseñas hasheadas usando SHA-256
-- Insertar datos en la tabla Usuarios con una moneda específica para todos los usuarios
INSERT INTO Usuarios (nombre, correo_electronico, contrasenia, saldo, moneda_id)
VALUES
    ('Juan Pérez', 'juan@example.com', SHA2('contraseña123', 256), 1000.00, 2),
    ('María López', 'maria@example.com', SHA2('clave456', 256), 500.50, 3),
    ('Pedro Ramírez', 'pedro@example.com', SHA2('password789', 256), 750.25, 6),
    ('Laura Martínez', 'laura@example.com', SHA2('secreto123', 256), 3000.75, 1),
    ('Carlos González', 'carlos@example.com', SHA2('segura456', 256), 1500.00, 2),
    ('Ana Gómez', 'ana@example.com', SHA2('contraseña789', 256), 200.50, 3),
    ('Luis Rodríguez', 'luis@example.com', SHA2('clave123', 256), 400.25, 2),
    ('Sofía Fernández', 'sofia@example.com', SHA2('password456', 256), 800.75, 6),
    ('Miguel Sánchez', 'miguel@example.com', SHA2('secreta789', 256), 600.00, 3),
    ('Elena Pérez', 'elena@example.com', SHA2('clave456', 256), 950.25, 9);
    
 -- Insertar datos en la tabla Transacciones con usuarios asignados manualmente y valores múltiplos de 1000, donde al menos la mitad de las transacciones tienen valores decimales distintos de cero
INSERT INTO Transacciones (sender_user_id, receiver_user_id, valor)
VALUES
    (3, 8, 10000.00),
    (2, 7, 20000.00),
    (5, 10, 5000.00),
    (1, 6, 10000.00),
    (4, 9, 15000.00),
    (8, 2, 7000.00),
    (10, 4, 25000.00),
    (6, 1, 4000.00),
    (9, 5, 20000.00),
    (7, 3, 15000.00),
    (1, 10, 17500.00),
    (5, 9, 20000.00),
    (3, 6, 45000.00),
    (8, 4, 30000.00),
    (2, 7, 15000.00),
    (4, 1, 20000.00),
    (10, 3, 50000.00),
    (6, 8, 32500.00),
    (9, 2, 27500.00),
    (7, 5, 15000.00),
    (1, 9, 20000.00),
    (3, 4, 40000.00),
    (5, 6, 60000.00),
    (8, 10, 20000.00),
    (2, 1, 15000.00),
    (4, 3, 20000.00),
    (10, 7, 20000.00),
    (6, 9, 20000.00),
    (9, 8, 20000.00),
    (7, 10, 20000.00),
    (1, 5, 20000.00),
    (8, 3, 15500.50),
    (4, 10, 2000.75),
    (6, 7, 10050.25),
    (3, 8, 10500.00),
    (2, 7, 20200.00),
    (5, 10, 5500.00),
    (1, 6, 10700.00),
    (4, 9, 15750.00),
    (8, 2, 7200.00),
    (10, 4, 25500.00),
    (6, 1, 4050.00),
    (9, 5, 20250.00),
    (7, 3, 15750.00),
    (1, 10, 17250.00),
    (5, 9, 20500.00),
    (3, 6, 45750.00),
    (8, 4, 30250.00),
    (2, 7, 15750.00),
    (4, 1, 20250.00),
    (10, 3, 50500.00),
    (6, 8, 32750.00),
    (9, 2, 27750.00),
    (7, 5, 15250.00),
    (1, 9, 20250.00),
    (3, 4, 40250.00),
    (5, 6, 60250.00),
    (8, 10, 20250.00),
    (2, 1, 15250.00),
    (4, 3, 20250.00),
    (10, 7, 20250.00),
    (6, 9, 20250.00),
    (9, 8, 20250.00),
    (7, 10, 20250.00),
    (1, 5, 20250.00),
    (8, 3, 15500.25),
    (4, 10, 2000.50),
    (6, 7, 10050.75);

-- script comprobado en MySQL y docker
-- diagrama er adjunto en nota Desarrollo.md en mi repositorio
-- link https://github.com/noscriptph/PracticasMySQLComandosYWallet/blob/29676ba30a5a970cdf0e8de4e1a33bfe91a63fe6/alkewallet2/Desarrollo.md
