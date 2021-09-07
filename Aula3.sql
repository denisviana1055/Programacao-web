
CREATE DATABASE sistemas;
/* Criamos o bando de dados sistemas */


SHOW DATABASE;
/* Exibir os bancos de dados existentes */



USE sistemas;
/* Abrimos o banco de dados sistemas */



/* Criar a tabela de vendedores */
CREATE TABLE vendedores( 
    nome        VARCHAR(50),
    ativo       BOOLEAN,
    foto        VARCHAR(25),
    comissao    FLOAT(5,2),
    UF          CHAR(2),
    obs         TEXT
);


CREATE TABLE produtos(
    codigo      VARCHAR(10) ,
    nome        VARCHAR(50) ,
    ativo       BOOLEAN     ,
    categoria   INT(11)     ,
    precoVenda  FLOAT(6,2)  ,
    foto        VARCHAR(25) ,
    estoque     INT(5)      ,
    descricao   TEXT        

);

Como inserir registros numa tabela:

INSERT INTO nomedaTabela VALUES (lista de valores)

INSERT INTO vendedores VALUES (
    "Roberto Carlos"   ,
    1                  ,
    "foto 12.png"      ,
    25.00              ,
    "SP"               ,
    "Atende Grande Sao Paulo(SP, Guarulhos e Osasco)"

);

INSERT INTO vendedores VALUES (
    "Ana Regina"   ,
    1                  ,
    "foto 17.png"      ,
    25.00              ,
    "RJ"               ,
    "Atende Grande Rio"
);

INSERT INTO vendedores VALUES (
    "Maria Regina"   ,
    1                  ,
    "foto 17.png"      ,
    25.00              ,
    "RJ"               ,
    "Florianopolis e Regiao"
);

INSERT INTO vendedores VALUES (
    "Ana Regina"   ,
    0                  ,
    "foto 17.png"      ,
    15.00              ,
    "RJ"               ,
    "Atende Grande Minas Gerais"
);


SELECT * FROM vendedores;
/* Recuperar informacoes existentes em uma tabela */

SELECT o que eu quiser ver ( uf, nome, ativos, etc..) FROM vendedores;

UPDATE vendedores SET 

/* Colocar o campo codigo na primeira posicao da tabela de vendedores*/

ALTER TABLE vendedores ADD COLUMN codigo INT FIRST;

UPDATE vendedores SET codigo=1 WHERE nome= "Roberto Carlos";

ALTER TABLE vendedores DROP COLUMN codigo; /* apagar a coluna */

ALTER TABLE vendedores ADD COLUMN codigo INT FIRST;

ALTER TABLE vendedores ADD COLUMN codigo INT AUTO_INCREMENT FIRST, ADD PRIMARY KEY(codigo);

DESCRIBE produto;
/* Visualizando a estutura da tabela de produtos */

INSERT INTO produtos VALUES(Lista de valores);

INSERT INTO produtos VALUES(
    "COD-0016DO"               ,
    "IPHONE 5S 16GB DOURADO"   ,
    1                          ,
    2652.98                    ,
    "Iphone5s-gold.png"        ,
    58                         , 
    0                          ,
    "Smartphone Iphone Apple útima geracao cor Dourada"
    
);

INSERT INTO tabela (lista de campos) VALUES 
                   (lista de valores);

/* inserindo um 2 registro de produtos via metodo de inclusao 2 */

INSERT INTO produtos
(
    codigo,
    nome,
    ativo,
    descricao

    ) VALUES (
        "COD-0032CH",
        "IPHONE 5S 32GB CHAMPAGNE",
        0,
        "Smartphone Iphone Apple útima geracao cor Champagne"
);

