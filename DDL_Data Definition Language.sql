-- DDL > Data Definition Language
-- CREATE, ALTER, DROP, TRUNCATE
-- Entidade > Tabela

CREATE TABLE Instituicao (
	idInstituicao int not null auto_increment,	-- Atributos
    nomeInstituicao varchar(50) not null,		-- Atributos
    enderecoInstituicao varchar(100) not null,	-- Atributos
    telefoneInstituicao varchar(11),			-- Atributos
    
    primary key(idInstituicao)
);

CREATE TABLE Alunos(
	idAluno	int not null auto_increment,
    nomeAluno varchar(60),
    matriculaAluno	varchar(15) not null unique, -- impede dois alunos com a mesma matricula
    cursoAluno varchar(100) not null,
    instituicaoId int not null,
	
    PRIMARY KEY(idAluno),
	FOREIGN KEY(instituicaoId) REFERENCES instituicao(idInstituicao)
);


-- ALTER TABLE ALUNOS DROP COLUMN cursoAluno;

-- USE SistemaEscolar

-- CREATE DATABASE SistemaEscolar;

-- DROP TABLE Instituicao;