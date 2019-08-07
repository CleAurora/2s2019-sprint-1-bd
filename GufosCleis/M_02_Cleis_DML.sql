use M_Gufos

insert into Usuarios(Nome, Email, Senha, Permissao)
values ('Administrador', 'admin@admin.com', '123456', 'Administrador');

insert into Usuarios(Nome, Email, Senha, Permissao)
values ('Josias Cabele', 'jc@senai.com', '123456', 'Aluno');

insert into Presencas (IdEvento, IdUsuario) values (1,1)

insert into Categorias (Nome)
values ('Jogos'), ('Meetup'), ('Futebol');

select * from Categorias order by idCategoria desc;

insert into Eventos(Titulo, Descricao, DataEvento, Ativo, Localizacao, IdCategoria)
values ('Ping-Pong' 
		,'Campeonato de ping-pong redes contra dev'
		, GETDATE()
		, 1
		, 'Alameda Barão de Limeira, 539'
		,1
		);

insert into Eventos(Titulo, Descricao, DataEvento, Localizacao, IdCategoria)
values ('Meetup' 
		,'Bd Relacionais'
		, '2019-08-07T18:30:00'
		, 'Alameda Barão de Limeira, 539'
		,2
		);

insert into Eventos(Titulo, Descricao, DataEvento, Ativo, Localizacao, IdCategoria)
values ('Campeonato de Fifa' 
		,'Campeonato para professores'
		, '2019-08-17T05:01:10'
		,1
		, 'Alameda Barão de Limeira, 539'
		,1
		);
insert into Presencas (IdEvento, IdUsuario) values (1,2)

select * from Categorias order by Nome asc;
select * from Usuarios order by Nome asc;
select * from Eventos;
select * from Presencas;

