CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade INT,
datanascimento DATE,
nota decimal(4, 2) not null ,
PRIMARY KEY(id)
);
INSERT INTO tb_alunos(nome, idade, datanascimento, nota) 
VALUES ("Claudio",10, "2014-5-15", 8.00);
INSERT INTO tb_alunos(nome, idade, datanascimento, nota) 
VALUES ("Claudia",10, "2014-2-01", 9.00);
INSERT INTO tb_alunos(nome, idade, datanascimento, nota) 
VALUES ("Fernando",9, "2014-8-15", 6.00);
INSERT INTO tb_alunos(nome, idade, datanascimento, nota) 
VALUES ("Fernanda",9, "2014-9-10", 5.00);
INSERT INTO tb_alunos(nome, idade, datanascimento, nota) 
VALUES ("Marcio",10, "2014-6-18", 10.00);
INSERT INTO tb_alunos(nome, idade, datanascimento, nota) 
VALUES ("Marcia",10, "2014-7-12", 8.00);
INSERT INTO tb_alunos(nome, idade, datanascimento, nota) 
VALUES ("João",9, "2014-12-9", 4.00);
INSERT INTO tb_alunos(nome, idade, datanascimento, nota) 
VALUES ("Joana",9, "2014-11-3", 10.00);
select * from tb_alunos where nota > 7.00;
select * from tb_alunos where nota < 7.00;
update tb_alunos set nota = 7 where id = 7;