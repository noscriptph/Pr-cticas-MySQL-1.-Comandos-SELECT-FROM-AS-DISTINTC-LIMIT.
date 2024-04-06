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
    
    
