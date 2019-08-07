Use M_SSolve

/*Inserindo linhas na tabela Clientes*/
insert into Clientes (NomeFantasia, CNPJ, RazaoSocial, Endereco)
values('Senai', 123456, 'Servico Nacional de Aprendizagem Industrial', 'Rua Bar�o de Limeira 539');

insert into Clientes (NomeFantasia, CNPJ, RazaoSocial, Endereco)
values('IFSP', 654321, 'Instituto Federal de Educa��o, Ci�ncias e Tecnologia', 'Rua Pedro Vicente 625');

insert into Clientes (NomeFantasia, CNPJ, RazaoSocial, Endereco)
values('Concrete', 213456, 'Concrete Solutions Ltda', 'Av. Na��es Unidas 2310');

/*Inserindo linhas na tabela Comodos*/
insert into Comodos (Nome)
values('SalaAula'), 
('Corredor'), 
('Banheiro'),
('Secretaria'), 
('Sala de Professores'),
('Sala Administrativa'),
('Refeit�rio'),
('Sala de Tecnologia');

/*Inserindo linhas na tabela TiposServi�os*/
insert into TiposServicos(Nome)
values	('Trocar a luz'), 
		('Trocar o Chuveiro'), 
		('Manuten��o do Quadro de Energia'),
		('Instala��o Cuba'), 
		('Instala��o Chuveiro'),
		('Manuten��o da Privada'),
		('Instala��o de Computadores'),
		('Instala��o de Quadro de Energia');

/*Inserindo linhas na tabela Pedidos*/
insert into Pedidos(IdCliente, Preco, DataInicio, DataFinal)
values	(1,  300.00, '2019-08-07T08:00:00', '2019-08-07T18:00:00'), 
		(1, 1000.00, '2019-08-15T08:00:00', '2019-08-18T18:00:00'), 
		(1,  500.00, '2019-08-09T08:00:00', '2019-08-11T19:00:00'); 

/*Inserindo linhas na tabela Pedidos/TiposServicos*/
insert into PedidosTiposServicos(IdPedido, IdTipoServico)
values	(2, 1), 
		(2, 3),
		(3, 8),
		(4, 4),
		(4, 5),
		(3, 6);

select * from Pedidos

/*Inserindo linhas na tabela PedidosComodos*/
insert into PedidosComodos(IdPedido, IdComodo)
values	(2, 1), 
		(2, 3),
		(3, 8),
		(3, 6),
		(4, 3),
		(4, 3),
		(4, 3);
