insert into questao (enunciado, dificuldade, id_disciplina) values
('Qual protocolo é utilizado como base para comunicação entre APIs RESTFUL?', 'Fácil', 5),
('Qual formato é mais utilizado para troca de dados em APIs REST?', 'Fácil', 5),
('Qual método HTTP é normalmente utilizado para buscar informações em uma API?', 'Fácil', 5),
('Qual ferramenta é muito utilizada para testar APIs?', 'Fácil', 5),
('O que significa REST em APIs RESTful?', 'Fácil', 5);

insert into alternativa (texto_alternativo, correta, id_questao) values
('FTP', false, 1),
('HTTP', true, 1),
('SMTP', false, 1),
('SSH', false, 1),
('XML apenas', false, 2),
('TXT', false, 2),
('JSON', true, 2),
('EXE', false, 2),
('DELETE', false, 3),
('PUT', false, 3),
('GET', true, 3),
('PATCH', false, 3),
('Photoshop', false, 4),
('Postman', true, 4),
('Excel', false, 4),
('Blender', false, 4),
('Um banco de dados relacional', false, 5),
('Um padrão de arquitetura para serviços web', true, 5),
('Um compilador JavaScript', false, 5),
('Um framework frontend', false, 5);