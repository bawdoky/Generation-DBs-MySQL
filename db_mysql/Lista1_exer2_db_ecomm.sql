create database db_lista1_exer2_ecommerce;

use db_lista1_exer2_ecommerce;

create table tb_produtos(
	id bigint auto_increment,
	nome varchar(255) not null,
    quantidade int not null,
    preco decimal(7,2) not null,
    cor varchar(255) not null,
    primary key (id)
);

insert into tb_produtos (nome,quantidade,preco,cor) values("Geladeira",8,2000.00,"inox");
insert into tb_produtos (nome,quantidade,preco,cor) values("Geladeira",12,1600.00,"Branca");
insert into tb_produtos (nome,quantidade,preco,cor) values("Radio",3,800.00,"Preto");
insert into tb_produtos (nome,quantidade,preco,cor) values("notebook",2,5000.00,"Dourado");
insert into tb_produtos (nome,quantidade,preco,cor) values("Armario",16,3200.00,"Mogno");
insert into tb_produtos (nome,quantidade,preco,cor) values("Armario",2,3000.00,"Preto");
insert into tb_produtos (nome,quantidade,preco,cor) values("Fogao 6b",5,1200.00,"Prata");
insert into tb_produtos (nome,quantidade,preco,cor) values("Smart TV 42",10,2300.00,"Preto");

select * from tb_produtos where preco > 2400.00;

select * from tb_produtos where preco < 2400.00;

update tb_produtos set preco = 2300.00 where id = 1;





