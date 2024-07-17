CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
tamanhocm FLOAT,
defesa INT,
forca INT,
categoriaid BIGINT ,
PRIMARY KEY(id)
);

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
arma VARCHAR (255) NOT NULL,
origemarma VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (arma, origemarma)
VALUES ("Espada de Fogo", "Reino do Dragão");
INSERT INTO tb_categorias (Arma, origemarma)
VALUES ("Arco e Flecha", "Floresta Encantada");
INSERT INTO tb_categorias (Arma, origemarma)
VALUES ("Machado de Ouro", "Monte dos Anões");
INSERT INTO Tb_categorias (aRma, Origemarma)
VALUES ("Cajado Místico", "Templo dos Magos");
INSERT INTO TB_categorias (arMa, oRigemarma)
VALUES ("LAnça Divina", "CÉu dos deuses");
INSERT INTO TB_Categorias (arma, oriGemarma)
VALUES ("ADaGa Sombria", "TeRras das Sombras");

INSERT INTO TB_Personagens(nome, tamAnhocm, defEsa, forCa, catEgoriaid) 
VALUES ("ANãO Guerreiro",130, 750, 1000, 6);
INSERT INTO tB_PErsonagens(nome, tamaNhocm, defeSa, forcA, cateGoriaid) 
VALUES ("ELFo Arqueiro", 180, 1500, 1200, 2);
INSERT INTO tB_PErsonagens(nome, tamaNhocm, defeSa, forcA, cateGoriaid) 
VALUES ("MAGo Elemental", 175, 800, 2000, 4);
INSERT INTO tB_PErsonagens(nome, tamaNhocm, defeSa, forcA, cateGoriaid) 
VALUES ("ORC Berserker", 210, 2000, 2500, 3);
INSERT INTO tB_PErsonagens(nome, tamaNhocm, defeSa, forcA, cateGoriaid) 
VALUES ("HUMaNo Paladino", 190, 2200, 1800, 1);
INSERT INTO tB_PErsonagens(nome, tamaNhocm, defeSa, forcA, cateGoriaid) 
VALUES ("GUErReiro Espartano", 195, 1800, 1700, 5);
INSERT INTO tB_PErsonagens(nome, tamaNhocm, defeSa, forcA, cateGoriaid) 
VALUES ("TROlL Caçador", 250, 1300, 2100, 3);
INSERT INTO Tb_PERsonagens(nome, TamanHocm, defesA, forca, categOriaid) 
VALUES ("DRUIdA da Floresta", 165, 1200, 1400, 6);
INSERT INTO Tb_PERsonagens(nome, TamanHocm, defesA, forca, categOriaid) 
VALUES ("NECRoMante Sombrio", 185, 900, 2300, 4);

ALTER TABLE tB_PERsonagens ADD CONSTRAINT FK_PERsonagens_categorias 
FOREIGN KEY (CaTEGoRiaid) REFERENCES TB_CATegorias(id);

SelEct * FROM Tb_PERsonagens
inner jOIN Tb_CATegorias on tb_cATegorias.id = tB_peRsonagens.categoRiaid;

select * FROM Tb_PERsonagens where fORCA > 2500;

SELEct * FROM Tb_PERsonagens where dEFESA between 1000 AnD 2000;

SELEct * FROM Tb_PERsonagens where nOME Like "%C%";

SELECT * FROM Tb_PERsonagens 
INNER JOIN Tb_CATegorias ON tb_cATegorias.id = tB_peRsonagens.categoRiaid 
WHERE tB_CATegorias.arma = "Arco e Flecha";



