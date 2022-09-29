-- Criando o Banco de Dados:
create database db_pizzaria_legal;
use db_pizzaria_legal;

-- Criando a tabela categoria com 3 atributos:
create table tb_categoria(
	id bigint auto_increment,
	massa varchar(30) not null,
    tamanho varchar(30) not null,
    primary key (id)
);

-- Populando a tabela categoria com até 5 dados: 
INSERT INTO tb_categoria (massa, tamanho) VALUES ("Doce", "Broto");
INSERT INTO tb_categoria (massa, tamanho) VALUES ("Doce", "Grande");
INSERT INTO tb_categoria (massa, tamanho) VALUES ("Salgada", "Broto");
INSERT INTO tb_categoria (massa, tamanho) VALUES ("Salgada", "Grande");
INSERT INTO tb_categoria (massa, tamanho) VALUES ("Salgado", "Gigante");

-- Criando a tabela pizza com 5 atributos:
create table tb_pizza(
	id bigint auto_increment,
	sabor varchar(30) not null,
    preco decimal (5,2) not null,
    modalidade varchar(30) not null,
    recheioBorda boolean not null,
    categoria_id bigint,
	primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

-- Populando a tabela pizza com até 8 dados:
INSERT INTO tb_pizza (sabor, preco, modalidade, recheioBorda, categoria_id) VALUES ("Calabresa", 39.10, "Levar", false, 4);
INSERT INTO tb_pizza (sabor, preco, modalidade, recheioBorda, categoria_id) VALUES ("Chocolate com morango", 27.80, "Comer", false, 1);
INSERT INTO tb_pizza (sabor, preco, modalidade, recheioBorda, categoria_id) VALUES ("Mussarela", 45.90, "Comer", true, 5);
INSERT INTO tb_pizza (sabor, preco, modalidade, recheioBorda, categoria_id) VALUES ("Portuguesa", 54.20, "Levar", true, 5);
INSERT INTO tb_pizza (sabor, preco, modalidade, recheioBorda, categoria_id) VALUES ("Brócolis", 33.70, "Comer", false, 3);
INSERT INTO tb_pizza (sabor, preco, modalidade, recheioBorda, categoria_id) VALUES ("Sensação", 34.40, "Levar", true, 2);

select * from tb_pizza;

-- SELECT PRODUTOS COM VALOR MAIOR QUE R$ 45.00
select * from tb_pizza where preco > 45.00;

-- SELECT PRODUTOS COM VALOR ENTRE 29 E 60 REAIS
select * from tb_pizza where preco between 29.00 and 60.00;

-- SELECT UTILIZANDO LIKE BUSCANDO PRODUTOS COM A LETRA cache index
select * from tb_pizza where sabor like "%c%";

-- FAÇA UM SELECT COM INNER JOIN ENTRE TABELA CATEGORIA E PIZZA
select tb_pizza.sabor, tb_pizza.preco, tb_pizza.modalidade, tb_categoria.massa, tb_categoria.tamanho from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id; 

-- FAÇA UM SELECT ONDE TRAGA TODOS OS PRODUTOS DE UMA CATEGORIA ESPECIFICA
select tb_pizza.sabor, tb_pizza.preco, tb_pizza.modalidade, tb_categoria.massa, tb_categoria.tamanho from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 4;