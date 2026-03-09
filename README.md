[clinica_mac_salud.sql](https://github.com/user-attachments/files/25832655/clinica_mac_salud.sql)

create database clinica_mac_salud;

use clinica_mac_salud;

-- tabla ambiente donde trabajan las enfermeras
create table Ambiente(
idAmb int primary key auto_increment,
nroAmb varchar(20),
ubicacionAmb varchar(150)
);

-- tabla enfermero con sus datos personales
create table Enfermero(
idE int primary key auto_increment,
tipoDocumE varchar(20),
nroDocumE varchar(20),
nombresE varchar(100),
paternoE varchar(100),
maternoE varchar(100),
fechaNacimientoE date,
generoE varchar(20)
);

create table Calendario(
idC int primary key auto_increment,
inicioC date,
finC date,
nombreC varchar(100)
);

create table Asistencia(
idA int primary key auto_increment,
fechaA date,
diaA varchar(20),
asistioA int,
tardoA int,
horaEntradaA time,
horaSalidaA time,
justificacionA varchar(200),
esDescansoA int,
idE int,
idAmb int,
idC int,
foreign key (idE) references Enfermero(idE),
foreign key (idAmb) references Ambiente(idAmb),
foreign key (idC) references Calendario(idC)
);

insert into Ambiente values(1, 'A-101', 'Piso 1 - Emergencias');
insert into Ambiente values(2, 'B-205', 'Piso 2 - Pediatria');
insert into Ambiente values(3, 'C-310', 'Piso 3 - Cirugia');
insert into Ambiente values(4, 'D-102', 'Piso 1 - Consulta Externa');
insert into Ambiente values(5, 'E-401', 'Piso 4 - UCI');

insert into Calendario values(1, '2025-03-01', '2025-03-31', 'Marzo 2025');
insert into Calendario values(2, '2025-04-01', '2025-04-30', 'Abril 2025');

insert into Enfermero values(1, 'DNI', '46781234', 'Ana', 'Ramos', 'Diaz', '1990-06-15', 'Femenino');
insert into Enfermero values(2, 'DNI', '52341876', 'Carlos', 'Paredes', 'Villena', '1988-11-22', 'Masculino');
insert into Enfermero values(3, 'DNI', '61209345', 'Rosa', 'Quispe', 'Huanca', '1995-03-08', 'Femenino');
insert into Enfermero values(4, 'DNI', '78902345', 'Sofia', 'Mendoza', 'Castro', '1992-07-30', 'Femenino');
insert into Enfermero values(5, 'DNI', '70456789', 'Jorge', 'Condori', 'Mamani', '1985-01-17', 'Masculino');

insert into Asistencia values(1,  '2025-03-03', 'Lunes',    1, 0, '07:00:00', '15:00:00', null, 0, 1, 1, 1);
insert into Asistencia values(2,  '2025-03-04', 'Martes',   1, 1, '07:18:00', '15:00:00', 'trafico', 0, 1, 1, 1);
insert into Asistencia values(3,  '2025-03-05', 'Miercoles',1, 0, '07:00:00', '15:00:00', null, 0, 1, 1, 1);
insert into Asistencia values(4,  '2025-03-06', 'Jueves',   0, 0, null, null, 'permiso medico', 0, 1, null, 1);
insert into Asistencia values(5,  '2025-03-07', 'Viernes',  0, 0, null, null, null, 1, 1, null, 1);

insert into Asistencia values(6,  '2025-03-03', 'Lunes',    1, 0, '14:00:00', '22:00:00', null, 0, 2, 3, 1);
insert into Asistencia values(7,  '2025-03-04', 'Martes',   1, 0, '14:00:00', '22:00:00', null, 0, 2, 3, 1);
insert into Asistencia values(8,  '2025-03-05', 'Miercoles',0, 0, null, null, null, 1, 2, null, 1);
insert into Asistencia values(9,  '2025-03-06', 'Jueves',   1, 0, '14:00:00', '22:00:00', null, 0, 2, 3, 1);
insert into Asistencia values(10, '2025-03-07', 'Viernes',  1, 1, '14:25:00', '22:00:00', 'problema con bus', 0, 2, 3, 1);

insert into Asistencia values(11, '2025-03-03', 'Lunes',    1, 0, '22:00:00', '06:00:00', null, 0, 3, 5, 1);
insert into Asistencia values(12, '2025-03-04', 'Martes',   1, 0, '22:00:00', '06:00:00', null, 0, 3, 5, 1);
insert into Asistencia values(13, '2025-03-05', 'Miercoles',1, 0, '22:00:00', '06:00:00', null, 0, 3, 5, 1);
insert into Asistencia values(14, '2025-03-06', 'Jueves',   0, 0, null, null, null, 1, 3, null, 1);
insert into Asistencia values(15, '2025-03-07', 'Viernes',  0, 0, null, null, null, 1, 3, null, 1);

insert into Asistencia values(16, '2025-03-03', 'Lunes',    1, 0, '07:00:00', '15:00:00', null, 0, 4, 2, 1);
insert into Asistencia values(17, '2025-03-04', 'Martes',   1, 0, '07:00:00', '15:00:00', null, 0, 4, 2, 1);
insert into Asistencia values(18, '2025-03-05', 'Miercoles',1, 1, '07:20:00', '15:00:00', 'imprevisto familiar', 0, 4, 2, 1);
insert into Asistencia values(19, '2025-03-06', 'Jueves',   1, 0, '07:00:00', '15:00:00', null, 0, 4, 2, 1);
insert into Asistencia values(20, '2025-03-07', 'Viernes',  1, 0, '07:00:00', '15:00:00', null, 0, 4, 2, 1);

insert into Asistencia values(21, '2025-03-03', 'Lunes',    0, 0, null, null, null, 1, 5, null, 1);
insert into Asistencia values(22, '2025-03-04', 'Martes',   0, 0, null, null, null, 1, 5, null, 1);
insert into Asistencia values(23, '2025-03-05', 'Miercoles',1, 0, '07:00:00', '15:00:00', null, 0, 5, 4, 1);
insert into Asistencia values(24, '2025-03-06', 'Jueves',   1, 0, '07:00:00', '15:00:00', null, 0, 5, 4, 1);
insert into Asistencia values(25, '2025-03-07', 'Viernes',  1, 0, '07:00:00', '15:00:00', null, 0, 5, 4, 1);

select * from Enfermero;
select * from Asistencia;
