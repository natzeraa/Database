-- DML 
-- INSERT , DELETE, UPDATE

INSERT INTO sistemaescolar.Instituicao
	(nomeInstituicao, enderecoInstituicao, telefoneInstituicao)
VALUES
	('Senai - Cyber IA', 'Rua Niterói, 180 - São Caetano do Sul', '2022-2554'),
	('ETEC Jorge Street', 'Rua do Paralelo, 898 - São Caetano do Sul', '5689-8526');
    
INSERT INTO sistemaescolar.alunos
	(nomeAluno, matriculaAluno, cursoAluno, instituicaoId)
VALUES
	('Natália', '123654789', 'Programação Backend', 1),
    ('Caroline', '789456321', 'Programação Backend', 1),
	('Ana Maria', '569874123', 'Programação Backend', 1),
    ('João', '741365789', 'Programação Fullstack', 1),
    ('Laura', '951478362', 'Programação Fullstack', 1),
	('Roberto', '654782459', 'Programação Fullstack', 1),
    
    ('José Carlos', '205987633', 'Programação Frontend', 2),
    ('Mauro', '288963741', 'Programação Frontend', 2),
    ('Celia', '147258963', 'Programação C#', 2),
	('Miguel', '396852417', 'Programação C#', 2),
    ('Joana', '753951258', 'Programação Java', 2),
    ('Lucas', '741951369', 'Programação Java', 2);
    
-- UPDATE
UPDATE ALUNOS 
	SET matriculaAluno = '111222333' 
		WHERE matriculaAluno = '123654789';
        
UPDATE ALUNOS 
	SET matriculaAluno = '333222111' 
		WHERE nomeAluno = 'José Carlos';
        
UPDATE ALUNOS 
	SET cursoAluno = 'Programação Backend' 
		WHERE nomeAluno = 'José Carlos'; 
    
set sql_safe_updates = 0;

-- DELETE