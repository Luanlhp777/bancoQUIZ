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