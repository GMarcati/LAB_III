Create Database ActividadClase
Go
Use ActividadClase
Go
Create Table Idiomas(
	IDIdioma int not null primary key identity(1, 1),
	Idioma varchar(15) not null
)
Go
Create Table Personas(
	IDPersona bigint not null primary key identity(1, 1),
	Nombre varchar(50) not null
)
Go
Create Table Niveles(
	IDNivel int not null primary key identity(1, 1),
	Nivel varchar(30) not null
)
Go
Create Table Idiomas_X_Persona(
	IDIdioma int not null foreign key references Idiomas(IDIdioma),
	IDPersona bigint not null foreign key references Personas(IDPersona),
	primary key (IDIdioma, IDPersona),
	IDNivel int not null foreign key references Niveles(IDNivel)
)

