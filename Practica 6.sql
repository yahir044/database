Create Database EmpresaV


use EmpresaV

Create Table Proveedores
(
P# Varchar(2) Primary Key NOT NULL,
PNOMBRE nchar (30) Not Null,
CATEGORIA Int Not Null,
CIUDAD nchar (20) Not Null
)

Create Table Componentes 
(
C# Varchar(2) Primary Key NOT NULL ,
CNOMBRE Varchar (30) Not Null,
COLOR nchar (15) Not Null,
PESO Int Not Null,
CIUDAD nchar (30) Not Null
)


Create Table Articulos
(
I# Varchar (2) Primary Key NOT NULL,
INOMBRE nchar (20) Not Null,
CIUDAD nchar (15) Not Null
)

Create Table Envios
(
E# Int Primary Key Identity,
P# Varchar (2) ,
C# Varchar (2),
I# Varchar (2),
CANTIDAD Int Not Null
Constraint FK_Proveedores FOREIGN KEY (P#) References Proveedores (P#),
Constraint FK_Componentes FOREIGN KEY (C#) References Componentes (C#),
Constraint FK_Articulos FOREIGN KEY (I#) References Articulos (I#)
)

/*Proveedores*/
Insert into Proveedores
values ('P1', 'Carlos', '20', 'Sevilla');
Insert into Proveedores
values ('P2', 'Juan', '10', 'Madrid');
Insert into Proveedores
values ('P3', 'Jose', '30', 'Sevilla');
Insert into Proveedores
values ('P4', 'Inma', '20', 'Sevilla');
Insert into Proveedores
values ('P5', 'Eva', '30', 'Caceres');

/*Componentes*/
Insert into Componentes
values ('C1', 'X3A', 'Rojo', '12', 'Sevilla');
Insert into Componentes
values ('C2', 'B85', 'Verde', '17', 'Madrid');
Insert into Componentes
values ('C3', 'C4B', 'Azul', '17', 'Malaga');
Insert into Componentes
values ('C4', 'C4B', 'Rojo', '14', 'Sevilla');
Insert into Componentes
values ('C5', 'VT8', 'Azul', '12', 'Madrid');
Insert into Componentes
values ('C6', 'C30', 'Rojo', '19', 'Sevilla');

/*Articulos*/
Insert into Articulos
values ('T1', 'Clasificadora', 'Madrid');
Insert into Articulos
values ('T2', 'Perforadora', 'Malaga');
Insert into Articulos
values ('T3', 'Lectora', 'Caceres');
Insert into Articulos
values ('T4', 'Consola', 'Caceres');
Insert into Articulos
values ('T5', 'Mezcladora', 'Sevilla');
Insert into Articulos
values ('T6', 'Terminal', 'Barcelona');
Insert into Articulos
values ('T7', 'Cinta', 'Sevilla');


/*Envio*/
Insert into Envios
values ('P1','C1','I1','200')
