-- CREANDO BASE DE DATOS Wallet2
CREATE DATABASE IF NOT EXISTS Alke_wallet;
USE Alke_wallet;


-- CREANDO TABLAS SOLICITADAS
CREATE TABLE IF NOT EXISTS Usuarios(
	user_id int auto_increment primary key,
	nombre varchar(100)NOT NULL,
	correo_electronico varchar(100) NOT NULL,
    contrasenia varchar(100) NOT NULL,
	foreign key(fk_selected_curreny) references Monedas(currency_id),
    foreign key(fk_selected_curreny_name) references Monedas(currency_name),
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
    foreign key(fk_sender_user_id) references Usuarios(user_id),
    foreign key(fk_receiver_user_id) references Usuarios(user_id)
);
    
CREATE TABLE IF NOT EXISTS Monedas(
	pk_currency_id int auto_increment primary key,
	currency_name varchar(50) NOT NULL,
	currency_symbol varchar(5) 
);

-- POPULANDO LAS TABLAS
-- Leer explicacion en repositorio, en el archivo Desarrollo.md

-- para confirmar si la entidad se populo con datos ejecuta la siguiente linea

SELECT * FROM Alke_wallet.Usuarios;
    
SELECT * FROM Alke_wallet.Transacciones;   

-- Popular entidad Monedas
INSERT INTO Monedas (currency_name, currency_symbol)
VALUES
	("Dolar","$"),
    ("Euro", "Є"),
    ("Libra Esterlina", "£"),
    ("Peso Chileno","$"),
    ("Dolar Canadiense","Є");

select * from monedas; 