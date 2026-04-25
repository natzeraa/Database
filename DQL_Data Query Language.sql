-- DQL > Data Query Language
-- SELECT
SELECT * FROM Instituicao; -- retorna os dados
SELECT * FROM Alunos;

-- where > filtragem
SELECT nomeAluno, cursoAluno
	FROM alunos
    WHERE cursoAluno = 'Programação Backend';



-- quantos alunos tenho por curso 
SELECT	cursoAluno,	count(*) AS quantidade
	FROM alunos 
	GROUP BY cursoAluno
	ORDER BY quantidade ASC;

-- os alunos e a sua instituição de ensino!

SELECT 
	nomeAluno,
	cursoAluno,
	nomeInstituicao
	FROM alunos
    JOIN instituicao ON alunos.instituicaoId = instituicao.idInstituicao;
    
  -- QUANTOS ALUNOS EXISTEM DENTRO DE UMA INSTITUIÇÃO :
  
 SELECT 
	i.nomeInstituicao,
	count(*) as quantidade
	FROM instituicao i
    JOIN alunos ON i.idInstituicao = alunos.instituicaoId
    GROUP BY i.nomeInstituicao;

-- EXIBA QUNATOS ALUNOS EXISTEM EM UM CURSO X DA INSTITUIÇÃO Y
SELECT 
	a.cursoAluno,
	i.nomeInstituicao,
    count(*) as quantidade
	FROM alunos a
    JOIN instituicao i ON a.instituicaoId = i.idInstituicao
	GROUP BY a.cursoAluno, i.nomeInstituicao
    ORDER BY i.nomeInstituicao;
    
    
-- DESCRIBE ALUNOS; -- retorna as caracteristicas da tabela