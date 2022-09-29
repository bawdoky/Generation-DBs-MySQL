-- Criando o Banco de Dados:
create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

-- Criando a tabela categoria com 3 atributos:
create table tb_categoria(
id bigint auto_increment,
modalidade varchar(30) not null,
vagas int not null,
primary key (id)
);

-- Populando a tabela categoria com até 5 dados: 
INSERT INTO tb_categoria (modalidade, vagas) VALUES ("Presencial",  20);
INSERT INTO tb_categoria (modalidade, vagas) VALUES ("EAD"       ,  40);
INSERT INTO tb_categoria (modalidade, vagas) VALUES ("Híbrido"   ,  35);


select * from tb_categoria;

-- Criando a tabela produto com 5 atributos:
create table tb_curso (
id bigint auto_increment,
nome varchar (255) not null,
dataInicio date,
dataFim date,
precoMensal decimal(7,2) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- Populando a tabela produto com até 8 dados:
INSERT INTO tb_curso (nome, dataInicio, dataFim, precoMensal, categoria_id) VALUES ("Curso JAVA 1 e 2"      , "2022-01-10", "2022-06-20", 55.00, 2);
INSERT INTO tb_curso (nome, dataInicio, dataFim, precoMensal, categoria_id) VALUES ("Curso JAVA 3 "         , "2022-01-10", "2022-06-20", 85.00, 1);
INSERT INTO tb_curso (nome, dataInicio, dataFim, precoMensal, categoria_id) VALUES ("Curso JAVA 1 e 2"      , "2022-01-10", "2022-06-20", 45.00, 3);
INSERT INTO tb_curso (nome, dataInicio, dataFim, precoMensal, categoria_id) VALUES ("Curso JAVA 3"          , "2022-01-10", "2022-06-20", 75.00, 1);
INSERT INTO tb_curso (nome, dataInicio, dataFim, precoMensal, categoria_id) VALUES ("Lógica de Programação" , "2022-01-10", "2022-06-20", 47.00, 3);
INSERT INTO tb_curso (nome, dataInicio, dataFim, precoMensal, categoria_id) VALUES ("Lógica de Programação" , "2022-01-10", "2022-06-20", 37.00, 2);
INSERT INTO tb_curso (nome, dataInicio, dataFim, precoMensal, categoria_id) VALUES ("GIT e GIHUB"           , "2022-01-10", "2022-06-20", 30.00, 2);

select * from tb_curso;

-- Select produto com valor maior que R$ 50.00 reais
select * from tb_curso where precoMensal > 50;

-- Select produto com valor entre R$ 3.00 e R$ 60.00 reais
select * from tb_curso where precoMensal between 3 and 60;

-- Select utilizando LIKE buscando produtos com a letra J
select * from tb_curso where nome like "%j%";

-- Faça um select com INNER JOIN entre a categoria e o produto
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

-- Faça um select onde traga todos os produtos de uma categoria especifica
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 3;