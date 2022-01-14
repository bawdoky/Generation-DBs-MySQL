create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
	id bigint auto_increment,
    atributo varchar(255) not null,
    categoria varchar(255) not null,
    primary key (id)
);

INSERT INTO tb_classe (atributo, categoria) VALUES ("Força", "Tanker");
INSERT INTO tb_classe (atributo, categoria) VALUES ("Agilidade", "Ranger");
INSERT INTO tb_classe (atributo, categoria) VALUES ("Inteligencia", "Suporte");

create table tb_personagem(
	id bigint auto_increment,
    nome varchar(255) not null,
    vitalidade int not null,
    ataque int not null,
    defesa int not null,
    classe_id bigint,
	primary key (id),
    foreign key (classe_id) references tb_classe (id)
);

INSERT INTO tb_personagem (nome, vitalidade, ataque, defesa, classe_id) VALUES ("Sniper", 60000, 10000, 4000, 2);
INSERT INTO tb_personagem (nome, vitalidade, ataque, defesa, classe_id) VALUES ("Magnus", 80000, 9000, 1000, 1); 
INSERT INTO tb_personagem (nome, vitalidade, ataque, defesa, classe_id) VALUES ("Drow", 70000, 8000, 5000, 2);
INSERT INTO tb_personagem (nome, vitalidade, ataque, defesa, classe_id) VALUES ("Kepper", 100000, 3000, 5000, 3);
INSERT INTO tb_personagem (nome, vitalidade, ataque, defesa, classe_id) VALUES ("Cristal", 90000, 7000, 1000, 3);
INSERT INTO tb_personagem (nome, vitalidade, ataque, defesa, classe_id) VALUES ("Elder", 90000, 10000, 10000, 1);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";
 
select tb_personagem.nome, tb_personagem.vitalidade, tb_personagem.ataque, tb_personagem.defesa, tb_classe.atributo, tb_classe.categoria
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;
 
 select tb_personagem.nome, tb_personagem.vitalidade, tb_personagem.ataque, tb_personagem.defesa, tb_classe.atributo, tb_classe.categoria
from tb_personagem right join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 2;