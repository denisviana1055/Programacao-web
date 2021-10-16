Exercicio 1 

CREATE DATABASE LojaVirtualEC;
USE LojaVirtualEC;


CREATE TABLE cadVenda ( 
    
    idPedidos     INT   AUTO_INCREMENT   PRIMARY   KEY , -- auto incremento do numero de pedido
    cliente     VARCHAR (80)    ,
    email       VARCHAR (100)   ,
    dtVenda     DATE            ,
    entrega     BOOLEAN         ,
    ddd         CHAR(2)         ,
    telefone    VARCHAR(9)      ,
    totalPedido FLOAT (8.2)     ,


);

Exercicio 2


CREATE TABLE encomenda (
    idEntrega INT   AUTO_INCREMENT   PRIMARY   KEY ,
    dtEntrada DATE ,
    cdEntregador INT ,
    enderecoEntrega VARCHAR (100),
    bairro  VARCHAR (25) ,
    cidade  VARCHAR (40) ,
    cep VARCHAR (9) ,
    uf CHAR (2) ,
    nomeDoCliente   VARCHAR (80) ,
    ddd         CHAR(2)         ,
    telefone    VARCHAR(9)      ,
    entregue    BOOLEAN ,
    pesoBruto   FLOAT (6,3)


);

Exercicio 3 

CREATE DATABASE exercicios;
USE exercicios;

CREATE TABLE locacoes (

    diaEntrada      DATE  ,
    diaSaida        DATE NOT NULL ,
    fabricante      VARCHAR(20)  ,
    modelo          VARCHAR(20)  ,
    placa           VARCHAR(8)   ,
    uf              CHAR (2)     ,
    hEntrada        CHAR(5) NOT NULL ,
    hrSaida         CHAR(5) NOT NULL ,
    valor           FLOAT(6,2) NOT NULL,
    conveio         BOOLEAN      ,
    obs             TEXT NOT NULL

);

INSERT INTO locacoes VALUES 
(
    "2021-09-15",
    "2021-09-15",
    "Audi",
    "Q5",
    "JBC-1210",
    "SP",
    "07:20",
    "10:00",
    5.00,
    1,

    "Passou tempo minimo"


);

INSERT INTO locacoes VALUES 
(
    "2021-09-15",
    Default,
    "Volkswagen",
    "Virtus",
    "VIR-0000",
    "PA",
    "08:40",
    Default,
    Default,
    0,
    Default

);

INSERT INTO locacoes VALUES 
(
    "2021-09-16",
    Default,
    "Toyota",
    "Corola",
    "TOY-1010",
    "SP",
    "09:02",
    Default,
    Default,
    1,
    Default


);

INSERT INTO locacoes VALUES 
(
    "2021-09-16",
    "2021-09-16",
    "BMW",
    "Série 3",
    "BMW-1234",
    "RS",
    "09:30",
    "09:40",
    "0.00",
    0,
    "Tolerancia"


);

select * from locacoes;

Exercicio 4

CREATE DATABASE gerencial;
USE gerencial;

CREATE TABLE vendas (
id INT AUTO_INCREMENT PRIMARY KEY,
dEmissao DATE,
hEmissao CHAR(5) DEFAULT "",
dtEnvio DATE,
hEnvio CHAR(5) DEFAULT "",
dtEntrega DATE,
hEntrega CHAR(5) DEFAULT "",
statusEnvio CHAR(2) DEFAULT "",
nomeCliente VARCHAR(50),
uf CHAR(2),
totalPedido FLOAT(7,2),
vendedor VARCHAR(50),
comissao FLOAT(4,2),
pago BOOLEAN,
cancelado BOOLEAN,
obs TEXT
);

INSERT INTO vendas VALUES 
(
0,
"2021-09-30",
"01:15",
"2021-09-05",
"12:40",
NULL,
"",
"I",
"123 Monitoramento Ltda",
"SP",
8570.00,
"Siqueira",
2.20,
1,
1,
"Porteiro João - Cliente mudou há dias."
);

INSERT INTO vendas VALUES 
(
0,
"2021-09-01",
"23:12",
NULL,
"",
NULL,
"",
"C",
"Antonio da Silva", 
"RS",
12900.00,
"Siqueira",
2.00,
0,
1,
""
);


INSERT INTO vendas VALUES 
(
0,
"2021-09-01",
"23:58",
"2021-09-02",
"10:27",
"2021-09-02",
"12:12",
"E",
"Ana Marcondes",
"SP",
980.37,
"Siqueira",
3.20,
1,
0,
""
);


INSERT INTO vendas VALUES 
(
0,
"2021-09-02",
"00:12",
"2021-09-03",
"08:05",
NULL,
"",
"AF",
"Jose A. Souza",
"RJ",
2480.20,
"JP",
1.85,
0,
0,
""
);


INSERT INTO vendas VALUES 
(
0,
"2021-09-02",
"00:12",
"2021-09-03",
"08:05",
NULL,
"",
"AF",
"Jose A.Souza",
"RJ",
2480.20,
"JP",
1.85,
0,
0,
""
);


INSERT INTO vendas VALUES 
(
0,
"2021-09-01",
"22:50",
"2021-09-02",
"13:53",
"2021-09-03",
"15:00",
"E",
"João M. dos Santos",
"SP",
1580.12,
"Siqueira",
2.50,
1,
0,
""
);


INSERT INTO vendas VALUES 
(
0,
"2021-09-02",
"06:07",
NULL,
"",
NULL,
"",
"AF",
"L. M. A. - ME", 
"SC",
4200.00,
"Natália",
1.90,
0,
0,
""
);


INSERT INTO vendas VALUES 
(
0,
"2021-09-02",
"07:12",
"2021-09-02",
"17:00",
NULL,
"17:00",
"SC",
"Renata C. Zonta",
"RJ",
157.00,
"JP",
2.80,
1,
0,
""
);


INSERT INTO vendas VALUES (
0,
"2021-09-02",
"08:20",
"2021-09-03",
"12:05",
NULL,
"",
"V",
"Antonio da Silva",
"RS",
980.37,
"Natália" ,
3.00,
1,
0,
""
);


INSERT INTO vendas VALUES 
(
0,
"2021-09-02",
"00:12",
"2021-09-03" ,
"08:05",
NULL,
"" ,
"AF",
"Jose A. Souza", 
"RJ",
2480.20,
"JP",
1.85,
0,
0,
""
);

1 - DELETE from vendas WHERE id=5;
    DELETE from vendas WHERE id=10;

2 - SELECT * from vendas ORDER BY nomeCliente asc;

3 - SELECT * FROM vendas WHERE pago=0;

4 - SELECT dEmissao, nomeCliente, totalPedido AS valorPedidosCancelados From vendas where cancelado = 1;

5 - SELECT SUM(totalPedido) AS valoresPagos FROM vendas WHERE pago=1;
6 - SELECT SUM(totalPedido) AS pedidosSP FROM vendas WHERE uf = "SP";
7 - SELECT SUM(totalPedido) AS pedidosForaSP FROM vendas WHERE uf != "SP";

8 - SELECT nomeCliente, totalPedido AS valorPedidosEntregues From vendas where statusEnvio = "E";

9 - SELECT * FROM vendas WHERE dEmissao= "2021-09-01" AND cancelado =1;

10 - SELECT id, totalPedido, comissao   From vendas where vendedor = "Natália";

11 - UPDATE vendas SET comissao = "0" WHERE vendedor= "JP";

12 - UPDATE vendas SET totalPedido = 2980.27 WHERE id= 2;