-- Criando o Banco de Dados:
create database db_cidade_das_carnes;
use db_cidade_das_carnes;

-- Criando a tabela categoria com 3 atributos:
create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

-- Populando a tabela categoria com até 5 dados: 
INSERT INTO tb_categoria (descricao, ativo) values ("Bovino",true);
INSERT INTO tb_categoria (descricao, ativo) values ("Suíno",true);
INSERT INTO tb_categoria (descricao, ativo) values ("Aves",true);
INSERT INTO tb_categoria (descricao, ativo) values ("Pertence Feijoada",true);
INSERT INTO tb_categoria (descricao, ativo) values ("Embutidos",true);

select * from tb_categoria;

-- Criando a tabela produto com 5 atributos:
create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(7,2) not null,
qtProduto int not null,
dtValidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- Populando a tabela produto com até 8 dados:
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Asa",             20.00, 30, "2022-01-23", 3);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Picanha",         55.00, 30, "2022-01-25", 1);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Coxa de Frango",  32.00, 30, "2022-01-19", 3);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Bacon",           37.00, 30, "2022-01-22", 1);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Hamburguer",      6.00,  30, "2022-01-28", 5);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Cupim",           38.00, 30, "2022-01-12", 1);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Peito de Frango", 21.00, 30, "2022-01-20", 3);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Orelha de Porco", 20.00, 30, "2022-01-21", 4);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Salame",          48.00, 30, "2022-01-21", 5);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Medalhão",        40.00, 30, "2022-01-15", 3);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Mocotó",          20.00, 30, "2022-01-29", 2);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtValidade, categoria_id) VALUES ("Chuleta",         20.00, 30, "2022-01-30", 1);

select * from tb_produtos;

-- Select produto com valor maior que R$ 50.00 reais
select * from tb_produtos where preco > 50;

-- Select produto com valor entre R$ 3.00 e R$ 60.00 reais
select * from tb_produtos where preco between 3 and 60;

-- Select utilizando LIKE buscando produtos com a letra C
select * from tb_produtos where nome like "%c%";

-- Faça um select com INNER JOIN entre a categoria e o produto
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- Faça um select onde traga todos os produtos de uma categoria especifica
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 5;