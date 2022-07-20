/* Populate tables */
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Andres', 'Guzman', 'andres@gmail.com', '2022-08-01', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('John', 'Doe', 'john.doe@gmail.com', '2022-08-02', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Leandro', 'Torvalds', 'linus.torvalds@gmail.com', '2022-08-03', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Jazmin', 'Doe', 'jane.doe@gmail.com', '2022-08-04', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Ramon', 'Lerdorf', 'ramon.lerdorf@gmail.com', '2022-08-05', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Erick', 'Gamma', 'erick.gamma@gmail.com', '2022-08-06', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Ricardo', 'Helm', 'ricardo.helm@gmail.com', '202-08-07', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Randolf', 'Johnson', 'randolf.johnson@gmail.com', '202-08-08', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('John', 'Vlissides', 'john.vlissides@gmail.com', '2022-08-09', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('James', 'Gosling', 'james.gosling@gmail.com', '2022-08-010', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Bruce', 'Lopez', 'bruce.lee@gmail.com', '2022-08-11', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Johnny', 'Doe', 'johnny.doe@gmail.com', '2022-08-12', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('John', 'Roe', 'john.roe@gmail.com', '202-08-13', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Jane', 'Roe', 'jane.roe@gmail.com', '2022-08-14', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Richard', 'Doe', 'richard.doe@gmail.com', '2022-08-15', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Janie', 'Doe', 'janie.doe@gmail.com', '2022-08-16', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Phillip', 'Webb', 'phillip.webb@gmail.com', '2022-08-17', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Stephane', 'Nicoll', 'stephane.nicoll@gmail.com', '2022-08-18', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Sam', 'Brannen', 'sam.brannen@gmail.com', '2022-08-19', '');  
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Juergen', 'Hoeller', 'juergen.Hoeller@gmail.com', '2022-08-20', ''); 
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Janie', 'Roe', 'janie.roe@gmail.com', '2022-08-21', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('John', 'Smith', 'john.smith@gmail.com', '2022-08-22', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Joe', 'Bloggs', 'joe.bloggs@gmail.com', '2022-08-23', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('John', 'Stiles', 'john.stiles@gmail.com', '2022-08-24', '');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Richard', 'Roe', 'stiles.roe@gmail.com', '2022-08-25', '');

/* Populate tabla productos */
INSERT INTO productos (nombre, precio, create_at) VALUES('Bianchi Bicicleta Aro 26', 329990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Bianchi Bicicleta Aro 20', 259990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Bianchi Bicicleta Aro 24', 319990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Bianchi Bicicleta Aro 27', 359990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Bianchi Bicicleta Aro 29', 499990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Bianchi Bicicleta Aro 19', 229990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Bianchi Bicicleta Aro 17', 199990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Bianchi Bicicleta Aro 15', 169990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Casco Protector', 69990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Pack Luces led', 4990, NOW());

/* Creamos algunas facturas */
INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES('Compra de Bicicletas Bianchi', null, 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 1);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(2, 1, 4);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 5);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 7);

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES('Compra de  Bicicleta', 'Pagada al contado!', 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(3, 2, 6);

/* Creamos algunos usuarios con sus roles */
INSERT INTO `users` (username, password, enabled) VALUES ('empleado','$2a$10$O9wxmH/AeyZZzIS09Wp8YOEMvFnbRVJ8B4dmAMVSGloR62lj.yqXG',1);
INSERT INTO `users` (username, password, enabled) VALUES ('admin','$2a$10$DOMDxjYyfZ/e7RcBfUpzqeaCs8pLgcizuiQWXPkU35nOhZlFcE9MS',1);

INSERT INTO `authorities` (user_id, authority) VALUES (1,'ROLE_USER');
INSERT INTO `authorities` (user_id, authority) VALUES (2,'ROLE_ADMIN');
INSERT INTO `authorities` (user_id, authority) VALUES (2,'ROLE_USER');