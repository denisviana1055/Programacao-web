CREATE database set2021;

/* 
criando um novo banco de dados
*/

USE set2021;

/*
abrindo banco de dados
*/

CREATE TABLE Clientes(
    id          INT AUTO_INCREMENT PRIMARY KEY,
    Nome        VARCHAR(80),
    DDD         VARCHAR(2),
    Telefone    VARCHAR(12),
    Email       VARCHAR(100),
    Endereco    TEXT,
    Conveio     BOOLEAN,
    tipo        CHAR(1)


);

/*
Criando a tabela de clientes
*/

CREATE TABLE Carros(
    id             INT AUTO_INCREMENT PRIMARY KEY,
    id_Clientes    INT,
    placa          VARCHAR(8),
    tipo           VARCHAR(10),
    fabricante     VARCHAR(25),
    modelo         VARCHAR(25),
    ano            INT(4),
    cor            VARCHAR(15)
    


);

/*
Tabela de carros

*/

CREATE TABLE Mensalidades(
    id             INT AUTO_INCREMENT PRIMARY KEY,
    idCarros       INT,
    vencimento     DATE,
    valor          FLOAT(7,2),
    situacao       BOOLEAN,
    ativa          BOOLEAN,
    observacao     TEXT
    


);

/*
Mensalidades dos carros 
*/

CREATE TABLE locacoes(
    id             INT AUTO_INCREMENT PRIMARY KEY,
    dtEntrada      DATE,
    hEntrada       CHAR(5),
    dtSaida        CHAR(5),
    hrSaida        DATE,
    placa          VARCHAR(8),
    uf             CHAR(2),
    fabricante     VARCHAR(20),
    modelo         VARCHAR(20),
    cor            VARCHAR(20),
    ano            int(4),
    valor          float(6,2),
    conveio        tinyint(1),
    pago           BOOLEAN,
    obs            TEXT 
    


);

/*
Tabela Locacoes
*/


INSERT INTO Clientes VALUES
(
   0,
   "Thabata Souza",
   "11",
   "2012-3456",
   "rua a, numero 1",
   "thabata@email.com.br",
   0,
   "M"
);

INSERT INTO Clientes VALUES
(
   0,
   "Gustavo Vicente",
   "11",
   "5331-1010",
   "av b, numero 2",
   "gustavo@email.com.br",
   1,
   "E"
);

INSERT INTO Clientes VALUES
(
   0,
   "vinicius alves",
   "11",
   "99123-4567",
   "pca sem numero, escondida",
   "vinialves@email.com.br",
   1,
   "M"
);


INSERT into Carros VALUES(

    0,
    1,
    "ABCD-1234",
    "SUV",
    "VW",
    "T-CROSS",
    2020,
    "Prata"
);

INSERT into Carros VALUES(

    0,
    3,
    "XYZ-0001",
    "HATCH",
    "FIAT",
    "PALIO",
    2006,
    "Preto"
);

INSERT into Carros VALUES(

    0,
    1,
    "BB-8991",
    "MOTO",
    "HONDA",
    "CB-500",
    1989,
    "Amarelo"
);

INSERT into Mensalidades VALUES(

    1,
    2,
    "2021-9-16",
    180.55,
    0,
    1,
    ""
);

INSERT into Mensalidades VALUES(

    2,
    1,
    "2021-9-16",
    140,
    1,
    1,
    "Pagou a mensalidade adiantada"
);

INSERT into Mensalidades VALUES(

    3,
    3,
    "2021-9-16",
    70,
    0,
    1,
    ""
);