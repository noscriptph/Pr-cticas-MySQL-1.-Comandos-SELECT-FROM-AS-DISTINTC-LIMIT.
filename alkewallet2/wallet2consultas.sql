USE Alke_wallet;

-- consultare por el usuario con id 3
SELECT u.nombre AS nombre_usuario, m.currency_name AS nombre_moneda
FROM Usuarios u
JOIN Monedas m ON u.moneda_id = m.currency_id
WHERE u.user_id = 3;
-- la respuesta fue pedro ramirez y yen japones

-- Consulta para obtener las transacciones realizadas por un usuario específico
SELECT * FROM Transacciones WHERE sender_user_id = 3;

-- Consulta para obtener todos los usuarios registrados sin repetir sus nombres en el resultado
SELECT DISTINCT nombre FROM Usuarios;

-- Consulta para obtener todas las monedas registradas
SELECT DISTINCT currency_name FROM Monedas;

-- Consulta para obtener todas las transacciones registradas
SELECT * FROM Transacciones;

-- Consulta para obtener las transacciones realizadas hacia un usuario específico
SELECT * FROM Transacciones WHERE receiver_user_id = 3;

-- Sentencia DML para modificar el campo correo electrónico de un usuario específico
UPDATE Usuarios
SET correo_electronico = 'nuevo_correo@nuevo.com'
WHERE user_id = 3;

-- Sentencia para eliminar los datos de una transacción (eliminado de la fila completa)
DELETE FROM Transacciones WHERE transaccion_id = 3;

-- Sentencia para DDL modificar el nombre de la columna correo_electronico por email
ALTER TABLE Usuarios CHANGE COLUMN correo_electronico email varchar(100) NOT NULL;

SELECT * FROM Transacciones WHERE sender_user_id != receiver_user_id;

DELIMITER //

CREATE TRIGGER evitar_transferencia_propia
BEFORE INSERT ON Transacciones
FOR EACH ROW
BEGIN
    IF NEW.sender_user_id = NEW.receiver_user_id THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se puede transferir dinero a uno mismo';
    END IF;
END //

DELIMITER ;

ALTER TABLE Transacciones
DROP FOREIGN KEY fk_transacciones_moneda;