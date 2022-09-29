create database db_lista1_exer1_rh;

use db_lista1_exer1_rh;

create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(255) not null,
    tel int not null,
    cargo varchar(255) not null,
    salario decimal(6,2) not null,
    primary key (id)
);
insert into tb_funcionarios(nome,tel,cargo,salario) values("Maria",956482145,"Assistente",2000.00);
insert into tb_funcionarios(nome,tel,cargo,salario) values("Fabio",958723266,"Estagiario",1400.00);
insert into tb_funcionarios(nome,tel,cargo,salario) values("Roberta",91235678,"Gerente",6000.00);
insert into tb_funcionarios(nome,tel,cargo,salario) values("Caresvaldo",977563985,"Cordenador",4000.00);
insert into tb_funcionarios(nome,tel,cargo,salario) values("Cleyton",827665432,"tecnico",2500.00);

select *  from tb_funcionarios where salario >= 2500.00;

select *  from tb_funcionarios where salario < 2500.00;

update tb_funcionarios set salario = 2200.00 where id = 1;






