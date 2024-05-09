Create table estado(
	idestado serial primary key,
	nomeestado varchar(100) not null,
	siglaestado varchar(2) not null
);

insert into estado(nomeestado, siglaestado) values ('São Paulo', 'SP');
select * from estado;

create table cidade(
    idcidade serial primary key,
    nomecidade varchar(100) not null,
    situacao varchar(1) not null,
    idestado int not null,
    constraint fk_estado foreign key (idestado) references estado(idestado)
);

insert into cidade(nomecidade, situacao, idestado) values ('Fernandopolis', 'A', 1);
insert into cidade(nomecidade, situacao, idestado) values ('Jales', 'A', 1);

SELECT * FROM cidade;
