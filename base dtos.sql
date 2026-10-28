CREATE TABLE Producto (ProductosId INT PRIMARY KEY,

Nombre VARCHAR(50) NOT NULL,

Descripcion VARCHAR (50) NOT NULL,

Precio DECIMAL (10) NOT NULL,

Stock VARCHAR (4) not NULL,

CategoriaId INT NOT NULL,

FOREIGN key (CategoriaId) REFERENCES Categoria(CategoriaId));



CREATE TABLE Categoria (categoriaid INT PRIMARY KEY,

nombre VARCHAR (50) NOT NULL,

descripcion VARCHAR (50) NOT NULL);

CREATE TABLE Proveedor (ProveedorId INT PRIMARY KEY,

nombre VARCHAR (50) NOT NULL,

Telefono VARCHAR (10) NOT NULL,

Email VARCHAR (50) not null,

Direccion VARCHAR (50) NOT NULL,

FechaRegistro DATE (10) NOT NULL,

Estado VARCHAR (50) NOT NULL,

ProductoId INT NOT NULL,

GeneroId INT NOT NULL,

FOREIGN key (productoId) REFERENCES Producto(productoId)

FOREIGN key (generoId) REFERENCES Genero(generoId));


CREATE TABLE Genero (Generoid INT PRIMARY KEY,

Nombre VARCHAR (50) NOT NULL,

descripcion VARCHAR (50) NOT NULL);


INSERT INTO Genero (GeneroId, nombre,descripcion)

VALUES (1,'femenino', 'es el genero de una mujer');

INSERT INTO Genero (GeneroId,nombre,descripcion)

VALUES (2,'Masculino','es el genero de un hombre');

INsert INTO Genero (GeneroId, nombre , descripcion)

VALUES (3,'otro', ' otro genero');

SELECT * FROM Genero;






CREATE TABLE Pedidos (PedidosId int PRIMARY KEY,

UsurioId INT NOT NULL,

Fecha DATE (10) not null,

Estado VARCHAR (50) NOT NULL,

FOREIGN KEY (usurioId) REFERENCES usuario (usurioId));




create table Usuario (UsuarioId INT PRIMARY KEY,

Nombre VARCHAR (50) NOT NULL,

email varchar(50) not null,

Contraseña VARCHAR (50) NOT NULL,

telefono varchar (10) NOT NULL,

direccion varchar (50) not null,

GeneroId INT NOT NULL,

TipoDocumentoId INT NOT NULL,

NoDocumento VARCHAR (10)NOT NULL,

FOREIGN KEY(generoId) REFERENCES genero (generoId));



CREATE TABLE tipodocumento (tipodocumentoId INT PRIMARY KEY,

NoDocumento varchar (10) not null);