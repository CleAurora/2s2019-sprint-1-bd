create database M_Gufos

use M_Gufos

Create table Usuarios
(
	IdUsuario INT IDENTITY NOT NULL PRIMARY KEY
	, Nome varchar(255) not null
	, Email varchar(255) not null unique
	, Senha varchar(255) not null 
	, Permissao varchar(255) not null
); 

Create table Categorias
(
	IdCategoria INT IDENTITY NOT NULL PRIMARY KEY
	, Nome varchar(255) not null unique
);

Create table Eventos
(
	IdEventos INT IDENTITY NOT NULL PRIMARY KEY
	, Titulo varchar(255) not null
	, Descricao Text 
	, DataEvento DateTime not null
	, Localizacao varchar(255) null
	,Ativo Bit not null Default(1)
	,IdCategoria INT foreign key references Categorias (IdCategoria)
);



Exec sp_rename 'Eventos.IdEventos', 'IdEvento', 'Column';

Create table Presencas
(
	IdUsuario INT foreign key references Usuarios(IdUsuario)
	, IdEvento INT foreign key references Eventos(IdEvento)
);

