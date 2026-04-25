CREATE DATABASE Pizzaria;

-- grazzi napoli

-- cliente
-- id, nome, telefone, email, endereco, dataCadastro  - nenhum null

CREATE TABLE clientes(
	idCliente int not null auto_increment primary key,
	nomeCliente varchar(50) not null,
    telefoneCliente varchar(11) not null,
    emailCliente varchar(50) not null unique,
    enderecoCliente varchar(100) not null,
    dataCadastro timestamp not null default current_timestamp 
);

-- pedido
-- id, dataPedido, status, tipoEntrrega, total, idCliente, idFuncionario

-- produto
-- id, nome, categoria, preco, ativo

-- funcionario
-- id, nome, cargo, salario, dataAdimissao