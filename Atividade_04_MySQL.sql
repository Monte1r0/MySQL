CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
tamanhocm FLOAT,
dataproducao DATE,
preco DECIMAL(4, 2) NOT NULL,
categoriaid BIGINT ,
PRIMARY KEY(id)
);

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR (255) NOT NULL,
tipo VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (descricao, tipo)
VALUES ("Salgada", "Broto");
INSERT INTO tb_categorias (descricao, tipo)
VALUES ("Salgada", "Convencinal");
INSERT INTO tb_categorias (descricao, tipo)
VALUES ("Salgada", "Trem");
INSERT INTO tb_categorias (descricao, tipo)
VALUES ("Doce", "Broto");
INSERT INTO tb_categorias (descricao, tipo)
VALUES ("Doce", "convencional");
INSERT INTO tb_categorias (descricao, tipo)
VALUES ("Doce", "Trem");

INSERT INTO tb_pizzas(nome, tamanhocm, dataproducao, preco, categoriaid) 
VALUES ("Pizza de Tomate",30.0, "2024-7-15", 30.00, 1);
INSERT INTO tb_pizzas(nome, tamanhocm, dataproducao, preco, categoriaid) 
VALUES ("Pizza de Calabresa", 50.0, "2024-7-15", 35.00, 2);
INSERT INTO tb_pizzas(nome, tamanhocm, dataproducao, preco, categoriaid) 
VALUES ("Pizza de Quatro Queijos", 100.0, "2024-7-15", 80.00, 3);
INSERT INTO tb_pizzas(nome, tamanhocm, dataproducao, preco, categoriaid) 
VALUES ("Pizza de Frango com Catupiry", 50.0, "2024-7-15", 47.00, 2);
INSERT INTO tb_pizzas(nome, tamanhocm, dataproducao, preco, categoriaid) 
VALUES ("Pizza de Atum", 30.0, "2024-7-15", 52.00, 1);
INSERT INTO tb_pizzas(nome, tamanhocm, dataproducao, preco, categoriaid) 
VALUES ("Pizza de Chocolate", 50.0, "2024-7-15", 60.00, 5);
INSERT INTO tb_pizzas(nome, tamanhocm, dataproducao, preco, categoriaid) 
VALUES ("Pizza de Banana com Canela", 30.0, "2024-7-15", 31.00, 4);
INSERT INTO tb_pizzas(nome, tamanhocm, dataproducao, preco, categoriaid) 
VALUES ("Pizza de Morango com Chocolate", 100.0, "2024-7-15", 54.00, 6);
INSERT INTO tb_pizzas(nome, tamanhocm, dataproducao, preco, categoriaid) 
VALUES ("Pizza de Doce de Leite", 30.0, "2024-7-15", 33.00, 4);


ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);

SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoriaid;


SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoriaid 
WHERE tb_categorias.descricao = "Doce";


SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoriaid;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;