-- Criando o Banco de Dados:
create database db_farmacia_do_bem;
use db_farmacia_do_bem;

-- Criando a tabela categoria com 3 atributos:
create table tb_categoria(
	id bigint not null auto_increment,
	descricao varchar(255) not null,
    ativo boolean,    
    primary key (id)
);

-- Populando a tabela categoria com até 5 dados: 
INSERT INTO tb_categoria (descricao, ativo) VALUES ("Antibiótico", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("Antihistamínico", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("Higiene pessoal", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("Beleza", true);
INSERT INTO tb_categoria (descricao, ativo) VALUES ("Energético", true);

-- Criando a tabela produto com 5 atributos:
create table tb_produtos(
	id bigint not null auto_increment,
    nome varchar(255) not null,
    dataCadastro date,
    preco decimal(7,2) not null,
    quantidade int,    
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

-- Populando a tabela produto com até 8 dados:
INSERT INTO tb_produtos (nome, dataCadastro, preco, quantidade, categoria_id) VALUES ("Loratadina",        current_date(), 45.90,  20, 2);
INSERT INTO tb_produtos (nome, dataCadastro, preco, quantidade, categoria_id) VALUES ("Rimel",             current_date(), 24.50,  18, 4);
INSERT INTO tb_produtos (nome, dataCadastro, preco, quantidade, categoria_id) VALUES ("Cotonnete",         current_date(), 5.00,   15, 3);
INSERT INTO tb_produtos (nome, dataCadastro, preco, quantidade, categoria_id) VALUES ("Esponja de Banho",  current_date(), 27.90,  25, 3);
INSERT INTO tb_produtos (nome, dataCadastro, preco, quantidade, categoria_id) VALUES ("Red Bull",          current_date(), 12.90,  5,  5);
INSERT INTO tb_produtos (nome, dataCadastro, preco, quantidade, categoria_id) VALUES ("Amoxilina",         current_date(), 60.50,  32, 1);

select * from tb_produtos;

-- Select produto com valor maior que R$ 50.00 reais
select * from tb_produtos where preco > 50;

-- Select produto com valor entre R$ 3.00 e R$ 60.00 reais
select * from tb_produtos where preco between 3 and 60;

-- Select utilizando LIKE buscando produtos com a letra B
select * from tb_produtos where nome like "%b%";

-- Faça um select com INNER JOIN entre a categoria e o produto
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- Faça um select onde traga todos os produtos de uma categoria especifica
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 3;