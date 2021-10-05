CREATE DATABASE sistemas;
/* Criando o banco sistema */

CREATE TABLE PETSHOP;
/*  Criando uma tabela com o nome desejado 

Tabela de precos geral

Pet
- nome 
- tipo
- ano nascimento
- raca

Agendamento de servico
- data 
- hora
- cliente
- pet
- servico agendado
- desconto?!

Servicos
- nome 
- preco do servico 
- forma de pagamento

Cliente
- nome
- cpf
- telefone
- email
- endereco
- conveio

Convenios
- empresa
- desconto

Caixa



Servico valores


    Alternativa 1

Nome            Tipo    PrecoPqn        PrecoMed        PrecoGde 

Banho           Hig     40,00		    50,00		    70,00
Tosa            Hig     30,00		    30,00		    30,00
Corte Unha      Hig     10,00		    10,00		    15,00
Consulta vet    Vet     80,00           80,00           80,00
Medicamento     Vet     60,00           70,00           100,00


    Alternativa 2

Codigo  nome            Tipo        Preco
1       Banho           Hig         40,00
2       Tosa            Hig         30,00   
3       Corte Unha      Hig         10,00
4       Consulta vet    Vet         80,00
5       Medicamento     Vet         60,00

Funcionarios


FK = FOREIGN KEY = CHAVE ESTRANGEIRA
PK = PRIMARY KEY = CHAVE PRIMARIA

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


CREATE TABLE Pets(
    id_pet INT AUTO_INCREMENT PRIMARY KEY,
    Nome                       VARCHAR  (50),
    id_Dono                    INT,
    Tipo                       CHAR     (10),
    Peso                       FLOAT    (6,2),
    Ano nascimento             INT      (10),
    Raca                       CHAR     (10),
    Vacinado                   BOOLEAN,
    FOREIGN KEY (id_dono) References Clientes(id_Clientes)
    Observacao                 TEXT 

);

CREATE TABLE Pets(
    id_pet INT AUTO_INCREMENT PRIMARY KEY,
    Nome                       VARCHAR  (50),
    id_Dono                    INT,
    Tipo                       CHAR     (10),
    Peso                       FLOAT    (6,2),
    Ano_nascimento             INT      (10),
    Raca                       CHAR     (10),
    Vacinado                   BOOLEAN,
    Observacao                 TEXT 



);

INSERT INTO pets (
    Nome,
    id_dono,
    Tipo,
    Peso,
    Ano_nascimento,
    Raca,
    Vacinado,
    Observacao
)
VALUES(
    "Atila",
    "1",
    "Cachorro",
    "34,00",
    "1994",
    "Labrador",
    "Sim",
    "Tem afinidade com o lucas"


);