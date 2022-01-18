-- Criando o Banco de Dados:
create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

-- Criando a tabela categoria com 3 atributos:
create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
ativo boolean not null,
primary key (id)
);

-- Populando a tabela categoria com até 5 dados: 
INSERT INTO tb_categoria (tipo, ativo) VALUES ("Hidráulico" ,  true);
INSERT INTO tb_categoria (tipo, ativo) VALUES ("Elétrico"   ,  true);
INSERT INTO tb_categoria (tipo, ativo) VALUES ("Alvenaria"  ,  true);
INSERT INTO tb_categoria (tipo, ativo) VALUES ("Ferramentas" ,  true);

select * from tb_categoria;

-- Criando a tabela produto com 5 atributos:
create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
anoModelo int not null,
preco decimal(7,2) not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- Populando a tabela produto com até 8 dados:
INSERT INTO tb_produtos (nome, anoModelo, preco, qtProduto, categoria_id) VALUES ("Parafusadeira"            , 2017, 429.90 , 4, 4);
INSERT INTO tb_produtos (nome, anoModelo, preco, qtProduto, categoria_id) VALUES ("Martelete Eletrico"       , 2021, 189.90 , 6, 4);
INSERT INTO tb_produtos (nome, anoModelo, preco, qtProduto, categoria_id) VALUES ("Esmerilhadeira Angular"   , 2021, 189.90 , 3, 4);
INSERT INTO tb_produtos (nome, anoModelo, preco, qtProduto, categoria_id) VALUES ("Cano PVC"                 , 2021, 39.90  , 2, 1);
INSERT INTO tb_produtos (nome, anoModelo, preco, qtProduto, categoria_id) VALUES ("Bomba Hidráulica"         , 2022, 59.70  , 5, 1);
INSERT INTO tb_produtos (nome, anoModelo, preco, qtProduto, categoria_id) VALUES ("Transformador BIVOLT"     , 2019, 90.90  , 4, 2);
INSERT INTO tb_produtos (nome, anoModelo, preco, qtProduto, categoria_id) VALUES ("Telha"                    , 2021, 189.90 , 2, 3);

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
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 3;