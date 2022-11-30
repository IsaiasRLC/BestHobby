create database BestHobby;


use BestHobby;

create table usuario (
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
senha varchar(10),
 constraint checkEmail CHECK (email like '%@%')
 );
 
 
 
  insert into usuario values 
 (null, 'murilo', 'murilo@gmail.com', '321');
 
  insert into usuario values 
 (null, 'yago', 'yago@gmail.com', '123');
 
  insert into usuario values 
 (null, 'leticia', 'leticia@gmail.com', '987');
 
 insert into usuario values 
 (null, 'isaias', 'isaias@gmail.com', '123'),
 (null, 'jerfferson', 'jef@gmail.com', '321'), 
 (null, 'nauana', 'na@gmail.com', '123'),
 (null, 'resende', 'resende@gmail.com', '321');

insert into usuario values 
 (null, 'daniel', 'daniel@gmail.com', '555');

select * from usuario;

create table franquia (
idFranquia int primary key auto_increment,
nome varchar (45)
constraint checkNome CHECK (nome in('marvel', 'dc', 'one peice', 'star Wars'))
);

 insert into franquia values 
 (null, 'marvel'),
  (null, 'dc'), 
  (null, 'star Wars'),
  (null, 'one peice');
 
 create table voto (
 idVoto int auto_increment,
 DataRegistro datetime default CURRENT_TIMESTAMP,
 fkUsuario int unique,
 foreign key (fkUsuario) references usuario (idUsuario),
 fkFranquia int,
 foreign key (fkFranquia) references franquia (idFranquia),
 primary key (idVoto, fkUsuario, fkFranquia)
 );
  
 insert into voto  (fkUsuario,fkFranquia) values
 ( 8, 1 );
 
 insert into voto (idVoto, fkUsuario,fkFranquia) values
 (7, 7, 3 );
 select * from voto;
 insert into voto (idVoto, fkUsuario,fkFranquia) values
 (2, 2, 2);
 
 insert into voto (idVoto, fkUsuario,fkFranquia) values
 (3, 3, 1);
 
 insert into voto (idVoto, fkUsuario,fkFranquia) values
 (4, 4, 1);
 
 insert into voto (idVoto, fkUsuario,fkFranquia) values
 (5, 5, 4);
 
 
 
 
 select* from usuario;
 select* from franquia;
 select* from voto;
 
 select * from 	voto  right join  usuario
	on idUsuario = fkUsuario;

	

 
select* from usuario left join  voto
	on idUsuario = fkUsuario  
		join  franquia 
			on idFranquia = fkFranquia order by usuario.nome desc;
 
 
 
 
 
	

 
 

