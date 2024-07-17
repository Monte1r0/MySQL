-- Consultas SQL avançadas --

uSE db_quitanda;

sELECT * fROM tb_produtos oRDER bY nome_produto aSC;
sELECT * fROM tb_produtos oRDER bY quantidade dESC;

sELECT * fROM tb_produtos wHERE preco bETWEEN 3.00 aND 12.00;

sELECT * fROM tb_produtos wHERE nome_produto lIKE "%n%";

-- Associação entre Tabelas --

creATE TAbLE TB_categorias(
iD bigINT AUtO_INCREMENT,
DEscricao varCHAR (255) NOt NUlL,
PRiMARY KEy (Id)
);

selECT * fRoM TB_categorias;

INSERT INTO TB_categorias (deScricao)
VALUES ("FRutas");
INSERT INTO TB_categorias (deScricao)
VALUES ("VErduras");
INSERT INTO TB_categorias (deScricao)
VALUES ("LEgumes");
INSERT INTO TB_categorias (deScricao)
VALUES ("TEmperos");
INSERT INTO TB_categorias (deScricao)
VALUES ("OVos");
INSERT INTO TB_categorias (deScricao)
VALUES ('OUtros');

ALTER TABLE TB_produtos ADD CAtegoriaid BIGINT;

ALTER TABLE TB_produtos ADD CONSTRAINT FK_produtos_categorias 
FOREIGN KEY (CaTegoriaid) REFERENCES TB_categorias (id);

selECT * fRoM TB_produtos;



INSERT INTO TB_produtos (noMe_produto, qUantidade, dAtavalidade, pReco, cAtegoriaid)
VALUES ("BAtata doce", 2000, "2022-03-09", 10.00, 3);
INSERT INTO TB_produtos (noMe_produto, qUantidade, dAtavalidade, pReco, cAtegoriaid)
VALUES ("ALface", 300, "2022-03-10", 7.00, 2);
INSERT INTO TB_produtos (noMe_produto, qUantidade, dAtavalidade, pReco, cAtegoriaid)
VALUES ("CEbola", 1020, "2022-03-08", 5.00, 3);
INSERT INTO TB_produtos (noMe_produto, qUantidade, dAtavalidade, pReco, cAtegoriaid)
VALUES("OVo Branco", 1000, "2022-03-07", 15.00, 5);
INSERT INTO TB_produtos (noMe_produto, qUantidade, dAtavalidade, pReco, cAtegoriaid)
VALUES("AGrião", 1500, "2022-03-06", 3.00, 2);
INSERT INTO TB_produtos (nomE_produto, quAntidade, daTavalidade, prEco, caTegoriaid)
VALUES("CENoura", 1800, "2022-03-09", 3.50, 3);
INSERT INTO TB_produtos (nomE_produto, quAntidade, daTavalidade, prEco, caTegoriaid)
VALUES ("PiMenta", 1100, "2022-03-15", 10.00, 4);
INSERT INTO TB_produtos (nomE_produto, quAntidade, daTavalidade, prEco, caTegoriaid)
VALUES ("AlEcrim", 130, "2022-03-10", 5.00, 4);
INSERT INTO TB_produtos (nomE_produto, quAntidade, daTavalidade, prEco, caTegoriaid)
VALUES ("MaNga", 200, "2022-03-07", 5.49, 1);
INSERT INTO TB_produtos (nomE_produto, quAntidade, daTavalidade, prEco, caTegoriaid)
VALUES ("CoUve", 100, "2022-03-12", 1.50, 2);
INSERT INTO TB_produtos (nomE_produto, quAntidade, daTavalidade, prEco, caTegoriaid)
VALUES("RABanete", 1200, "2022-03-15", 13.00, 3);
INSERT INTO TB_produtos (nomE_produto, quAntidade, daTavalidade, prEco, caTegoriaid)
VALUES ("GrApefruit", 3000, "2022-03-13", 50.00, 1);
INSERT INTO TB_produtos (nomE_produto, quAntidade, prEco)
VALUES("SACola Cinza", 1118, 0.50);
INSERT INTO TB_produtos (nomE_produto, quAntidade, prEco)
VALUES("SACola Verde", 1118, 0.50);

UPDATE TB_produtos SET CATegoriaid = 1 WHERE ID = 1;
UPDATE TB_produtos SET CATegoriaid = 1 WHERE ID = 2;
UPDATE TB_produtos SET CATegoriaid = 1 WHERE ID = 3;
UPDATE TB_produtos SET CATegoriaid = 1 WHERE ID = 4;
UPDATE TB_produtos SET CATegoriaid = 1 WHERE ID = 5;
UPDATE TB_produtos SET CATegoriaid = 1 WHERE ID = 6;
UPDATE TB_produtos SET CATegoriaid = 1 WHERE ID = 7;
UPDATE TB_produtos SET CATegoriaid = 1 WHERE ID = 8;

Show CREaTE TABlE TB_produtos;

SELECT * FROM TB_produtos ORDER BY nOMe_produto ASC;

-- Associação entre Tabelas --

select NOME_produto, quanTidade, precO from tB_PRodutos 
inner JOIN tB_CAtegorias on tb_CAtegorias.id = Tb_pRodutos.categOriaid;

select * FROm tB_PRodutos 
inner JOIN tB_CAtegorias on tb_CAtegorias.id = Tb_pRodutos.categOriaid;



SELECT NOME_produto, precO, quanTidade, tb_cAtegorias.descrIcao
FROM tB_PRodutos LEFT JOIN tB_CAtegorias 
ON tb_PRodutos.categOriaid = tb_cAtegorias.id;


SELECT NOME_produto, precO, quanTidade, tb_cAtegorias.descrIcao
FROM tB_PRodutos RIGHT JOIN tB_CAtegorias 
ON tb_PRodutos.categOriaid = tb_cAtegorias.id;