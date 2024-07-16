CREATE DATABASE db_pesca;
USE db_pesca;
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nomeproduto VARCHAR(255) NOT NULL,
quantidade INT,
dataproducao DATE,
preco DECIMAL NOT NULL,
madein varchar(255) not null,
PRIMARY KEY(id));
INSERT INTO tb_produtos(nomeproduto, quantidade, dataproducao, preco, madein) 
VALUES ("Vara com Carretilha",100, "2020-12-15", 350.00, "China");
INSERT INTO tb_produtos(nomeproduto, quantidade, dataproducao, preco, madein) 
VALUES ("Vara de Bambu",200, "2023-8-14", 25.00, "Brasil");
INSERT INTO tb_produtos(nomeproduto, quantidade, dataproducao, preco, madein) 
VALUES ("boia",500, "2022-8-26", 5.00, "Brasil");
INSERT INTO tb_produtos(nomeproduto, quantidade, dataproducao, preco, madein) 
VALUES ("Vara com Molinete",15, "2020-7-15", 600.00, "China");
INSERT INTO tb_produtos(nomeproduto, quantidade, dataproducao, preco, madein) 
VALUES ("Carretilha",30, "2024-12-15", 750.00, "China");
INSERT INTO tb_produtos(nomeproduto, quantidade, dataproducao, preco, madein) 
VALUES ("Molinete",50, "2023-6-2", 400.00, "China");
INSERT INTO tb_produtos(nomeproduto, quantidade, dataproducao, preco, madein) 
VALUES ("Anzol",1000, "2020-12-15", 5.00, "Brasil");
INSERT INTO tb_produtos(nomeproduto, quantidade, dataproducao, preco, madein) 
VALUES ("Caiaque com Motor",4, "2022-2-3", 1550.00, "German");
select * from tb_produtos where preco > 500.00;
select * from tb_produtos where preco < 500.00;
update tb_produtos set preco = 1500.00 where id = 8;
