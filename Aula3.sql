
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
    promocao    INT(1)      ,
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
