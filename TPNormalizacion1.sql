Create Database TPNormalizacion
GO
Use TPNormalizacion
go
Create Table Idiomas(
	idIdioma int not null primary key identity (1, 1),
	Idioma varchar(50) not null
)
go
Create Table Editoriales(
	idEditorial int not null primary key identity (1, 1),
	Editorial varchar (50) not null
)
go
Create Table Generos(
	idGenero int not null primary key identity (1, 1),
	Genero varchar (50) not null
)
go
Create Table Sexo(
	idSexo int not null primary key identity (1, 1),
	Inicial char not null
)
go
Create Table Pais(
	idPais int not null primary key identity (1, 1),
	Pais varchar(50) not null
)
go
Create Table Autores(
	idAutor int not null primary key identity (1, 1),
	Nombre varchar(50) not null,
	Apellido varchar(50) not null,
	Fecha date not null,
	idSexo int not null foreign key references Sexo(idSexo),
	idPais int not null foreign key references Pais(idPais)
)
go
Create Table Libros(
    idLibro int not null primary key identity (1, 1),
    Titulo varchar(100) not null,
    idIdioma int null foreign key references Idiomas(idIdioma),
	Paginas bigint null,
	Fecha date null,
	idEditorial int null foreign key references Editoriales(idEditorial)
)
go
Create Table autoresXlibros(
	idLibro int not null foreign key references Libros(idLibro),
	idAutor int not null foreign key references Autores(idAutor),
	primary key (idLibro,idAutor)
)
go
Create Table generosXlibros(
	idLibro int not null foreign key references Libros(idLibro),
	idGenero int not null foreign key references Generos(idGenero),
	primary key (idLibro, idGenero)

)
