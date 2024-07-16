 -- Create database 

CREATE DATABASE db_quitanda;
USE db_quitanda;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
datavalidade DATE,
preco DECIMAL NOT NULL,
PRIMARY KEY(id)
);



INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("tomate",100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("pêra",500, "2023-12-15", 2.99);

-- selecionar todos os dados da tabelas
select * from tb_produtos;

-- Pesquisa expecifica 
select nome, preco from tb_produtos;

select * from tb_produtos where id = 4;

select * from tb_produtos where id in (4,5);

-- Selecionando dados com os Operadores Relacionais
select * from tb_produtos where preco < 5.00;

-- Selecionando dados com os Operadores Lógicos

select * from tb_produtos where preco > 5.00 and quantidade < 100;


DESCRIBE tb_produtos;
alter table tb_produtos add descricao varchar(255);

alter table tb_produtos drop descricao;

alter table tb_produtos change nome nome_produto varchar(255);


update tb_produtos set preco = 2.99 where id = 1;

delete from tb_produtos where id = 1;
select * from tb_produtos;

alter table tb_produtos modify preco decimal(6,2);










