
create database polleria_los_angeless;

use polleria_los_angeless;

create table Categoria(
idCat int primary key auto_increment,
nombreCat varchar(100),
descripcionCat varchar(200)
);

create table Producto(
idP int primary key auto_increment,
nombreP varchar(100),
decripcionP varchar(200),
precioReferencialP decimal(10,2),
idCat int,
foreign key (idCat) references Categoria(idCat)
);

create table Cliente(
idC int primary key auto_increment,
tipoDocumC varchar(20),
nroDocumC varchar(20),
nombresC varchar(100),
paternoC varchar(100),
maternoC varchar(100),
celularC varchar(15)
);

create table Comprobante(
idComp int primary key auto_increment,
fechaHoraComp datetime,
totalComp decimal(10,2),
idC int,
foreign key (idC) references Cliente(idC)
);

create table Detalle(
idDet int primary key auto_increment,
cantidadDet int,
precioRealUnitarioDet decimal(10,2),
subtotalDet decimal(10,2),
idComp int,
idP int,
foreign key (idComp) references Comprobante(idComp),
foreign key (idP) references Producto(idP)
);

insert into Categoria values(1, 'Pollos a la brasa', 'pollos preparados a la brasa');
insert into Categoria values(2, 'Bebidas', 'gaseosas y jugos');
insert into Categoria values(3, 'Guarniciones', 'papas y ensaladas');
insert into Categoria values(4, 'Postres', 'helados y tortas');
insert into Categoria values(5, 'Combos', 'combos completos');

insert into Producto values(1, 'Pollo entero', 'pollo entero a la brasa con papas', 42.00, 1);
insert into Producto values(2, '1/4 de pollo', 'cuarto de pollo con papas', 13.50, 1);
insert into Producto values(3, '1/2 pollo', 'medio pollo con papas', 22.00, 1);
insert into Producto values(4, 'Papas fritas', 'porcion grande de papas', 8.00, 3);
insert into Producto values(5, 'Ensalada', 'ensalada de verduras', 5.50, 3);
insert into Producto values(6, 'Gaseosa 1.5L', 'inca kola o coca cola', 7.00, 2);
insert into Producto values(7, 'Gaseosa 500ml', 'botella pequeña', 3.50, 2);
insert into Producto values(8, 'Combo familiar', 'pollo entero mas papas mas gaseosa', 52.00, 5);
insert into Producto values(9, 'Combo pareja', 'medio pollo mas papas mas 2 gaseosas', 32.00, 5);
insert into Producto values(10, 'Helado', 'helado de lucuma', 6.00, 4);

insert into Cliente values(1, 'DNI', '45123678', 'Carlos', 'Quispe', 'Mamani', '987654321');
insert into Cliente values(2, 'DNI', '32876541', 'Maria', 'Huanca', 'Torres', '976543210');
insert into Cliente values(3, 'RUC', '20601234567', 'Jorge', 'Vargas', 'Cardenas', '965432109');
insert into Cliente values(4, 'DNI', '71234890', 'Lucia', 'Condori', 'Flores', '954321098');
insert into Cliente values(5, 'DNI', '87654321', 'Pedro', 'Sanchez', 'Rojas', '943210987');

insert into Comprobante values(1, '2025-03-01 12:30:00', 60.00, 1);
insert into Comprobante values(2, '2025-03-02 13:15:00', 32.00, 2);
insert into Comprobante values(3, '2025-03-03 20:00:00', 86.00, 3);
insert into Comprobante values(4, '2025-03-04 14:45:00', 19.50, 4);
insert into Comprobante values(5, '2025-03-05 19:30:00', 52.00, 5);

insert into Detalle values(1, 1, 22.00, 22.00, 1, 3);
insert into Detalle values(2, 2, 8.00, 16.00, 1, 4);
insert into Detalle values(3, 1, 7.00, 7.00, 1, 6);
insert into Detalle values(4, 1, 15.00, 15.00, 1, 5);

insert into Detalle values(5, 1, 32.00, 32.00, 2, 9);

insert into Detalle values(6, 1, 52.00, 52.00, 3, 8);
insert into Detalle values(7, 1, 22.00, 22.00, 3, 3);
insert into Detalle values(8, 2, 3.50, 7.00, 3, 7);
insert into Detalle values(9, 1, 5.00, 5.00, 3, 5);

insert into Detalle values(10, 1, 13.50, 13.50, 4, 2);
insert into Detalle values(11, 1, 3.50, 3.50, 4, 7);
insert into Detalle values(12, 1, 6.00, 6.00, 4, 10);

insert into Detalle values(13, 1, 52.00, 52.00, 5, 8);

select * from Cliente;
select * from Comprobante;
select * from Detalle;
