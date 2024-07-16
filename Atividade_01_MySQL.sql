CREATE DATABASE db_servico_rh;
USE db_servico_rh;

CREATE TABLE tb_atributos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade INT,
datainicio DATE,
salario DECIMAL(8, 2) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_atributos(nome, idade, datainicio, salario) 
VALUES ("Gilberto", 25, "2020-9-30", 6500.00);
INSERT INTO tb_atributos(nome, idade, datainicio, salario) 
VALUES ("Fernanda", 28, "2019-9-5", 7000.00);
INSERT INTO tb_atributos(nome, idade, datainicio, salario) 
VALUES ("Paulo", 19, "2024-6-18", 3000.00);
INSERT INTO tb_atributos(nome, idade, datainicio, salario) 
VALUES ("Paula", 19, "2024-6-18", 3000.00);
INSERT INTO tb_atributos(nome, idade, datainicio, salario) 
VALUES ("Carlos", 20, "2024-6-18", 3000.00);
INSERT INTO tb_atributos(nome, idade, datainicio, salario) 
VALUES ("Carla", 20, "2024-6-18", 3000.00);
INSERT INTO tb_atributos(nome, idade, datainicio, salario) 
VALUES ("Jorge", 16, "2024-7-15", 1500.00);

select * from tb_atributos where salario > 2000.00;

select * from tb_atributos where salario < 2000.00;

update tb_atributos set salario = 3000.00 where id = 7;
