insert into disciplina (nome_disciplina, id_curso) values
('Programação WEB III', 1),
('Desenvolvimento de Sistemas II', 1),
('Programação de Aplicativos Mobile II', 1),
('Computação em Nuvem', 1),
('Conduta Profissional e Relações de Trabalho', 1),
('Linguagem, Trabalho e Tecnologia', 1),
('Desenvolvimento do Trabalho de Conclusão de Curso TCC em Desenvolvimento de Sistemas', 1);

delete from disciplina
where id_disciplina between 11 and 17;

delete from disciplina
where id_disciplina between 1 and 3;