
CREATE DATABASE Set2021;
USE Set2021;


CREATE TABLE clientes (
	id  	   INT   AUTO_INCREMENT   PRIMARY   KEY 	,
	nome	   VARCHAR (80) 		    		,
	ddd 	   VARCHAR (2) 		    		,
	telefone 	   VARCHAR (11) 				, 
	endereco 	   TEXT 					,
	email  	   VARCHAR (100) 		    		,
	conveniado BOOLEAN			    	,
	tipo	   CHAR (1)
);


CREATE TABLE carros (
	id  	INT AUTO_INCREMENT PRIMARY KEY  ,
	idCliente 	INT				  ,
	placa 	VARCHAR(8)			  ,
	tipo 	VARCHAR(10)			  ,
	fabricante VARCHAR(25) 			  ,
 	modelo 	VARCHAR(25) 			  ,
	ano  	INT(4)				  ,
	cor  	VARCHAR(15)
);

CREATE TABLE mensalidades (
	id  	 INT AUTO_INCREMENT PRIMARY KEY  	,
	idCarro	 INT				,
	vencimento DATE				,
	valor 	 FLOAT(7,2)			,
	situacao 	 BOOLEAN				, 
	ativa 	 BOOLEAN				,
	obs 	 TEXT
);



CREATE TABLE locacoes (
    	id  	INT AUTO_INCREMENT PRIMARY KEY 	,
	dtEntrada DATE					,
	hEntrada 	CHAR (5)			 		,
	dtSaida 	DATE					,
	hSaida 	CHAR (5)			 		,
	placa 	VARCHAR (8)				,
	uf    	CHAR (2)			 		,
	fabricante VARCHAR (20)				,
	modelo 	VARCHAR (20)				,
	cor 	VARCHAR (20)				,
	ano   	INT (4)					,
	valor  	FLOAT (6,2)				,
	convenio 	TINYINT (1)				,
  	pago 	BOOLEAN			 	,
 	obs 	TEXT
);



INSERT into locacoes ( 	dtEntrada,
						hEntrada,
						hSaida,
						placa,
						uf,
						fabricante,
						modelo,
						cor,
						ano,
						valor,
						convenio,
						pago,
						obs)
			VALUES 	(	"2021-9-14",
						"22:55",
						"",
						"ABC-1234",
						"RS",
						"VW",
						"Gol GTI",
						"Prata",
						"1999",
						0,
						0,
						0,
						""
			);



/* 2o */
INSERT into locacoes (
 	dtEntrada,	hEntrada, dtSaida,	hSaida,	placa,	    uf,	fabricante,	modelo,	  cor,   ano,  valor, convenio,pago,obs)
			VALUES 	(	
	"2021-9-14","23:00","2021-9-15","08:00","XYZ-0000","SP","Fiat",    "Strada","Preta","1985",40.00, 0,1,"Taxa Pernoite"
);


INSERT INTO locacoes

(dtEntrada, hEntrada, dtSaida, hSaida, placa,uf,fabricante,modelo,cor,ano,valor,convenio,pago,obs)

VALUES

("2021-9-15","08:15",NULL,		""	   	,"NBC-0101","RJ","Honda",		"HRV", 		"Branca",	2019,	0,		0,	0,	""),
("2021-9-15","08:20","2021-9-15","08:45"	,"GXS-0009","SC","Ford",	"Ká",		"Azul",		2014,	8.00,	0,	0,	"Pendente / conta"),
("2021-9-15","08:23","2021-9-15","09:00"	,"GAF-1001","SP","Hyundai",	"I30",		"Prata",	2011,	28.00,	1,	1,	"Lavagem simples"),
("2021-9-15","08:40",NULL,		""	   	,"FAL-9803","SP","GM",			"Tracker",	"Verde"	,	2020,	0,		1,	0,	""),
("2021-9-15","08:55",NULL,		""	 	,"ESC-1055","SP","Peugeot",		"206",		"Branca",	2015,	0,		0,	0,	""),
("2021-9-15","09:01",NULL,		""		,"BLW-1500","SP","VW",			"Fusca",	"Verde",	1970,	0,		0,	0,	"");


SELECT * FROM locacoes;

SELECT * FROM locacoes WHERE pago=1 AND valor>25 ;

SELECT * FROM locacoes WHERE dtEntrada="2021-09-14";


 SELECT * FROM LOCACOES WHERE dtEntrada="2021-09-15" AND hEntrada>="08:21" AND hEntrada<="08:50";

  SELECT SUM(valor) AS valoresPagos FROM locacoes WHERE pago=1;

SELECT SUM(valor) AS valoresSP FROM locacoes WHERE pago=1 AND uf="SP";


UPDATE locacoes SET dtSaida="2021-09-16" , hSaida="10:50", valor=16, pago=1 WHERE id=6;

UPDATE locacoes SET dtSaida="2021-09-16" , hSaida="10:50", valor=16, pago=1 WHERE id=6;

UPDATE locacoes SET uf="RS", convenio=1 WHERE id=7;

UPDATE locacoes SET dtEntrada="2021-09-14", hEntrada="23:12" WHERE id=3;

SELECT * from locacoes WHERE uf="RS";

DELETE from locacoes WHERE id=6;

DELETE from locacoes WHERE uf="RS";

INSERT INTO locacoes (dtEntrada, hEntrada,fabricante,modelo,placa,UF,cor,ano) VALUES ("2021-09-15","09:20","Fiat","Strada","XYZ-000","SC","preta",1985);
