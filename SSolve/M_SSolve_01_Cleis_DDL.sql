
/*DDL M_SSolve*/
create database M_SSolve

use M_SSolve

Create table Clientes
(
	IdCliente INT IDENTITY NOT NULL PRIMARY KEY
	,NomeFantasia varchar(255)
	,CNPJ bigint
	,RazaoSocial varchar(255)
	,Endereco varchar(255)
);

Create table Pedidos
(
	IdPedido INT IDENTITY NOT NULL PRIMARY KEY
	,IdCliente int not null foreign key references Clientes (IdCliente)
	,Preco money not null
	,DataInicio DateTime
	,DataFinal DateTime
);

Create table Comodos
(
	IdComodo INT IDENTITY NOT NULL PRIMARY KEY
	,Nome varchar(255) not null
);

Create table TiposServicos
(
	IdTipoServico INT IDENTITY NOT NULL PRIMARY KEY
	,Nome varchar(255) not null
);


Create table PedidosComodos
(
	IdPedido int not null foreign key references Pedidos (IdPedido)
	,IdComodo int not null foreign key references Comodos (IdComodo)
);

Create table PedidosTiposServicos
(
	IdPedido int not null foreign key references Pedidos (IdPedido)
	,IdTipoServico int not null foreign key references TiposServicos (IdTipoSErvico)
);
