create database rede_social;

use rede_social;

create table usuarios(
   id_usuario int not null auto_increment primary key,
   nome varchar(100) not null,
   email varchar (45) not null unique,
   data_criacao date not null
);

create table postagens(
  id_postagem int not null auto_increment primary key,
  texto varchar(255),
  data_publicacao date,
  imagem varchar(255),
  usuarios_id_usuarios int not null,
  foreign key (usuarios_id_usuarios)references usuarios(id_usuario)
);

create table comentarios(
  id_comentario int not null auto_increment primary key,
  texto varchar (255) not null,
  data_criacao date,
  postagens_usuarios_id_usuario int not null,
  usuarios_id_usuario int not null,
  foreign key (postagens_usuarios_id_usuario) references postagens (id_postagem)
);

create table curtidas(
   id_postagem int not null,
   usuarios_id_usuarios int not null,
   primary key (id_postagem, usuarios_id_usuarios),
   foreign key (usuarios_id_usuarios) references usuarios (id_usuario),
   foreign key (id_postagem) references postagens (id_postagem)
);

-- usuarios
insert into usuarios (nome, email, data_criacao) values ("Rahiany", "rahiany@senai.com.br", "2024-05-15");
insert into usuarios (nome, email, data_criacao) values ("Antonio", "antonio@senai.com.br", "2023-03-20");
insert into usuarios (nome, email, data_criacao) values ("Ana", "ana@senai.com.br", "2022-08-21");
insert into usuarios (nome, email, data_criacao) values ("Pedro", "pedro@senai.com.br", "2021-06-17");
insert into usuarios (nome, email, data_criacao) values ("Maria", "maria@senai.com.br", "2020-10-19");
select * from usuarios;

-- usuario 1
insert into postagens (texto, data_publicacao, imagem, usuarios_id_usuarios) values ("Viagem maravilhosa com a familia", "2024-07-23", "imagem-viagem", 1);
insert into postagens (texto, data_publicacao, imagem, usuarios_id_usuarios) values ("Show inesquecivel", "2024-03-16", "imagem-show", 1);
insert into postagens (texto, data_publicacao, imagem, usuarios_id_usuarios) values ("Just me", "2024-06-24", "imagem-eu", 1);
insert into postagens (texto, data_publicacao, imagem, usuarios_id_usuarios) values ("Passeio com amigos", "2021-09-13", "imagem-amigos", 1);
insert into postagens (texto, data_publicacao, imagem, usuarios_id_usuarios) values ("Dinner time", "2024-07-23", "imagem-jantar", 1);