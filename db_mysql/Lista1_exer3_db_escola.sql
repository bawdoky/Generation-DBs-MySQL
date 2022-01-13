use db_lista1_exer3_escola;

create table tb_estudantes(
	id bigint auto_increment,
    nome varchar(255) not null,
    idade int not null,
    periodo varchar(255) not null,
    turma int not null,
	nota decimal (3,2) not null,
    primary key (id)
);


insert into tb_estudantes(nome,idade,periodo,turma,nota) values("Lucas",25,"Matutino",41,5.0);
insert into tb_estudantes(nome,idade,periodo,turma,nota) values("Rovercleyson",31,"Noturno",40,7.6);
insert into tb_estudantes(nome,idade,periodo,turma,nota) values("Ednelson",22,"Matutino",41,4.0);
insert into tb_estudantes(nome,idade,periodo,turma,nota) values("predosmar",24,"Matutino",42,3.9);
insert into tb_estudantes(nome,idade,periodo,turma,nota) values("Dayane",26,"Noturno",40,1.0);
insert into tb_estudantes(nome,idade,periodo,turma,nota) values("Leandro",22,"Noturno",41,7.2);
insert into tb_estudantes(nome,idade,periodo,turma,nota) values("Larissa",25,"Matutino",41,9.3);
insert into tb_estudantes(nome,idade,periodo,turma,nota) values("Marcia",21,"Matutino",41,8.5);

select * from tb_estudantes where nota > 7;

select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 9 where id = 1;