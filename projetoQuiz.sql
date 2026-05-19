create database projetoQUIZ;
use projetoQUIZ;

create table curso (
	id_curso int auto_increment primary key,
    nome_curso varchar(100),
    sigla varchar(20)
);

create table usuario (
	id_usuario int auto_increment primary key,
    nome varchar(100),
    email varchar(150) unique,
    senha varchar(255),
    data_cadastro datetime default current_timestamp
);

create table disciplina (
	id_disciplina int auto_increment primary key,
    nome_disciplina varchar(100),
    id_curso int,
    foreign key (id_curso) references curso(id_curso)
);

create table questao (
	id_questao int auto_increment primary key,
    enunciado text,
    dificuldade varchar(20),
    id_disciplina int,
    foreign key (id_disciplina) references disciplina(id_disciplina)
);

create table alternativa (
	id_alternativa int auto_increment primary key,
    texto_alternativo varchar(255) not null,
    correta boolean not null,
    id_questao int not null,
    constraint fk_alternativa_questao
    foreign key (id_questao)
    references questao(id_questao)
);

create table tentativa (
	id_tentativa int auto_increment primary key,
    id_usuario int not null,
    data_tentativa datetime default current_timestamp,
    pontuacao int default 0,
    tempo_total int,
    constraint fk_tentativa_usuario
    foreign key (id_usuario)
    references usuario(id_usuario)
);

create table resposta (
	id_resposta int auto_increment primary key,
    id_tentativa int not null,
    id_questao int not null,
    id_alternativa int not null,
    correta boolean,
    
    constraint fk_resposta_tentativa
		foreign key (id_tentativa) references tentativa(id_tentativa),
        
	constraint fk_resposta_questao
		foreign key (id_questao) references questao(id_questao),
	
    constraint fk_resposta_alternativa
		foreign key (id_alternativa) references alternativa(id_alternativa)
);