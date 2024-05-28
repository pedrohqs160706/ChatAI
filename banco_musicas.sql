create database db_sound_hub_turma_ba;

use db_sound_hub_turma_ba;

create table tbl_usuario
(
id_usuarios int not null auto_increment primary key,
nome varchar(80) not null,
email varchar (100) not null,
senha varchar(8) not null,
data_registro varchar(10),

id_musica int,
foreign key (id_musica) references tbl_musica(id_musica)
);

create table tbl_musica
(
id_musica int not null auto_increment primary key,
nome varchar(80) not null,
duracao time not null,
foto_capa varchar(200) not null,
unique key (id_musica),
unique index (id_musica),
id_playlist integer,
id_genero int,
id_album int,

foreign key (id_genero) references tbl_genero(id_genero),
foreign key (id_album) references tbl_album(id_album),
foreign key (id_playlist) references tbl_playlist (id_playlist)
);

create table tbl_playlist
(
id_playlist int not null auto_increment primary key,
nome varchar(50),
data_criacao varchar(10)
);

create table tbl_album
(
id_album int not null auto_increment primary key,
nome varchar(50) not null,
foto_capa varchar(20) not null,
data_lancamento varchar(10),

id_genero int,
FOREIGN KEY (id_genero) REFERENCES tbl_genero(id_genero)
);


create table tbl_artista
(
id_artista int not null auto_increment primary key,
nome varchar(80) not null,
data_nascimento varchar(10) not null,
foto_artista varchar(20) not null,

id_genero int,
FOREIGN KEY (id_genero) REFERENCES tbl_genero(id_genero)
);

create table tbl_genero
(
id_genero int not null auto_increment primary key,
nome varchar(20)
);

select * from tbl_artista;

insert into tbl_musica(nome, duracao, foto_capa)values
("merce", "3:25", "http:****"),
("The Hills", "4:03", "http:****"),
("God's Plan", "3:18", "http:****"),
("Toosie Slide", "4:09", "http:****");

insert into tbl_genero(nome)values
("clássioco"),
("ópera"),
("Ópera"),
("Pop"),
("Rock"),
("Blues"),
("Jazz"),
("R&B"),
("Soul"),
("Rap"),
("Funk"),
("Reggae"),
("Gospel"),
("Samba"),
("Forró"),
("K-Pop"),
("Trap");

select * from tbl_album;

insert into tbl_album (nome, foto_capa, data_lancamento)values
("abcde", "http:", "21/05/2006"),
("aaaaa", "http:", "21/05/2006"),
("bbbbb", "http:", "21/05/2006"),
("ccccc", "http:", "21/05/2006"),
("ddddd", "http:", "21/05/2006"),
("eeeee", "http:", "21/05/2006"),
("fffff", "http:", "21/05/2006"),
("ggggg", "http:", "21/05/2006"),
("hhhhh", "http:", "21/05/2006");

insert into tbl_artista (nome, data_nascimento, foto_artista)values
("Dfideliz", "25/05/1999", "http:****"),
("the weeknd", "16/02/1990", "http:****"),
("Drake", "24/10/1986", "http:****");

select * from tbl_usuario;

insert into tbl_playlist(nome, data_criacao)values
("1#", "21/05/2014"),
("2#", "21/05/2014"),
("3#", "21/05/2014"),
("4#", "21/05/2014"),
("5#", "21/05/2014");

insert into tbl_usuario (nome, email, senha, data_registro)values
("Pedro", "fulano@gmail.com", "1234", "21/05/1024"),
("Ana", "ana@gmail.com", "1234", "21/05/2024"),
("Levi", "levi@gmail.com", "1234", "21/05/2024"),
("davi", "davi@gmail.com", "1234", "21/05/2024");

drop database db_sound_hub_turma_ba;