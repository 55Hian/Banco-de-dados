/* Modelagem basica:

ENTIDADE = TABELA
CAMPOS = ATRIBUTOS

Cliente

Nome
CPF
Email
Telefone
Endereço
Sexo


Processos de modelagem:

Feito pelo AD (Adm. de dados){
Modelagem conceitual - sentar com o cliente e desenhar ideias sobre o banco de dados

Modelagem lógica - traduz as informações da modelagem conceitual para um sistema que 
desenha o sistema como por exemplo o BRMODELO
}

Feito pelo DBA ou AD{
Modelagem fisica - Scripts de banco
}

Tipagem{

Nome - CARACTER(30)
CPF - NUMERICO(11)
Email - CARACTER(30)
Telefone - CARACTER(30)
Endereço - CARACTER(100)
Sexo - CARACTER(1)

}
*/




/* !!! Processo para acessar os bancos de dados*/

abra o programa

SHOW DATABASES;

USE NomeDoBancoDeDados;

SHOW TABLES;

USE NomeDaTabela;

STATUS; - Mostra dados importantes.


/* modelagem fisica{*/
/* criando o banco de dados: */

CREATE DATABASE NomeDoBancoDeDados;

/* Conectando ao banco de dados */

USE NomeDoBancoDeDados;

/* criando uma tabela: */

CREATE TABLE NomeDaTabela(
	NOME VARCHAR(30),
	CPF INT(11),
	EMAIL VARCHAR(30),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100),
	SEXO CHAR(1)
);

/* Verificando as tabelas existentes no banco de dados */

SHOW TABLES;

/* Verificando campos de uma tabela */

DESC NomeDaTabela;

/* Inserção de dados */

/* forma 1 - inserindo sem definir colunas*/


INSERT INTO NomeDaTabela VALUES({valores em tupla})

INSERT INTO cliente VALUES('Hian', 1234567890,'email@email.com', '11912345678', 'avenida xpto, 55, jardim zpto - 00000000', 'm');

INSERT INTO cliente VALUES('Joao', 1234567890,'email2@email.com', '11956473829', 'rua ypto, 23, jardim apto - 92842747', 'm');

INSERT INTO cliente VALUES('NAT', 1234567890,'email3@email.com', '11957382948', 'rua zpto, 61, jardim hpto - 75839405', 'F');

/*  forma 2 - definindo as colunas que serão inseridas. */
/*  dessa forma, não é necessario enviar dados para todas as colunas. */
INSERT INTO cliente(NOME, SEXO, ENDERECO, TELEFONE, CPF) VALUES('Hian', 'M', 'AVENIDA 1, 53, JARDIM 4, SAO PAULO, SP', '1191234567', 123435);

/*  forma 3 - Inserção compacta. !!!SOMENTE NO MYSQL!!!!! */

INSERT INTO cliente VALUES('Hian22', 1234567890,'email@email.com', '11912345678', 'avenida xpto, 55, jardim zpto - 00000000', 'm'),
							('Joao22', 1234567890,'email2@email.com', '11956473829', 'rua ypto, 23, jardim apto - 92842747', 'm');


INSERT INTO cliente(NOME, SEXO, ENDERECO, TELEFONE, CPF) VALUES('Clara', 'F', 'AVENIDA 1, 53, JARDIM 4, SAO PAULO, SP', '1191234567', 11234567891);


/* O comando SELECT*/
/* SELEÇÃO, PROJEÇÃO E JUNÇÃO*/
/*SELEC É UM COMANDO DE PROJEÇÃO*/

SELECT NOW(); /* RETORNA DATA E HORA ATUAL*/

SELECT NOW() AS DATA_HORA, 'Hian Damaceno' AS 'Aluno';

SELECT 'HIAN';


/* --------------------------------*/


/*ALIAS DE COLUNA*/

SELECT NOME, SEXO, EMAIL FROM CLIENTE;

SELECT NOME AS CLIENTE, SEXO, EMAIL FROM CLIENTE;

SELECT NOME, SEXO, EMAIL, ENDERECO FROM CLIENTE;

SELECT EMAIL, SEXO, ENDERECO, NOME FROM CLIENTE;

SELECT NOME, SEXO, EMAIL, ENDERECO, NOW() FROM CLIENTE;

/*Buscar todos os dados da tabela*/
/* Não usar com grandes sistemas*/

SELECT * FROM CLIENTE;

/*filtrando os dados com where */

SELECT NOME, TELEFONE FROM CLIENTE WHERE SEXO = 'M';

SELECT NOME, ENDERECO FROM CLIENTE WHERE SEXO = 'F';

/*filtrando os dados com where e  like */
/*Like pode ser lido como "contem" ex. 'sao paulo' like 'sao'*/

SELECT NOME, SEXO FROM CLIENTE WHERE ENDERECO LIKE SP;

/*caracter coringa = % --> representa valores antes ou depois do valor procurado*/

SELECT NOME, SEXO FROM CLIENTE WHERE ENDERECO LIKE '%SP';
/* selecione o cliente onde seu endereço termine com SP*/

SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE ENDERECO LIKE 'RUA%';
/* selecione o cliente onde seu endereço comece com RUA*/

SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE ENDERECO LIKE '%JARDIM%';
/* selecione o cliente onde seu endereço contem 'jardim' como bairro*/



/* --------------------------------*/



-- Exercicio:

CREATE DATABASE LIVRARIA;

USE LIVRARIA;

CREATE TABLE LIVROS(
	NomeDoLivro VARCHAR(30),
	NomeDoAuthor VARCHAR(30),
	SexoDoAuthor VARCHAR(9),
	NumeroDePaginas INT(4),
	NomeDaEditor VARCHAR(15),
	ValorDoLivro DECIMAL(5,2),
	UFEditora CHAR(2),
	Ano CHAR(4)
);

INSERT INTO LIVROS(NomeDoLivro, NomeDoAuthor, SexoDoAuthor, NumeroDePaginas, NomeDaEditor, ValorDoLivro, UFEditora, Ano) 
			VALUES('Cavaleiro Real','Ana Claudia','Feminino',465,'Atlas',49.9,'RJ','2009'),
					('SQL para leigos','João Nunes','Masculino',450,'Addison',98,'SP','2018'),			
					('Receitas Caseiras','Celia Tavares','Feminino',210,'Atlas',45,'RJ','2008'),			
					('Pessoas Efetivas','Eduardo Santos','Masculino',390,'Beta',78.99,'RJ','2018'),			
					('Habitos Saudáveis','Eduardo Santos','Masculino',630,'Beta',150.98,'RJ','2019'),			
					('A Casa Marrom','Hermes Macedo','Masculino',250,'Bubba',60,'MG','2016'),			
					('Estacio Querido','Geraldo Francisco','Masculino',310,'Insignia',100,'ES','2015'),			
					('Pra sempre amigas','Leda Silva','Feminino',510,'Insignia',78.98,'ES','2011'),			
					('Copas Inesqueciveis','Marco Alcantara','Masculino',200,'Larson',130.98,'RS','2018'),			
					('O poder da mente','Clara Mafra','Feminino',120,'Continental',56.58,'SP','2017');			

					

SELECT * FROM LIVROS;

SELECT NomeDoLivro, NomeDaEditor FROM LIVROS;

SELECT NomeDoLivro, UFEditora FROM LIVROS WHERE SexoDoAuthor = 'Masculino';

SELECT NomeDoLivro, NumeroDePaginas FROM LIVROS WHERE SexoDoAuthor = 'Feminino';

SELECT NomeDoLivro, ValorDoLivro FROM LIVROS WHERE UFEditora = 'SP';

SELECT NomeDoAuthor, SexoDoAuthor FROM LIVROS WHERE SexoDoAuthor = 'Masculino' AND (UFEditora = 'SP' OR UFEditora = 'RJ');

/* --------------------------------*/


/* Operadores lógicos */

SHOW DATABASE;

USE PROJETO

SHOW TABLE

USE CLIENTE;

DESC CLIENTE;

SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE SEXO = 'M' OR ENDERECO LIKE '%hpto%';

/* para o seletor LIKE(contem) funcionar, é necessario usar o %.*/


/* --------------------------------*/

/* Contando os registros da tabela */

SELECT COUNT(*) AS "Qtd. clientes" FROM CLIENTE;


/* Agrupando */

SELECT SEXO, COUNT(*) AS CLIENTE from CLIENTE GROUP BY SEXO; 


/* --------------------------------*/

/* Exercicios */
CREATE DATABASE primeiroExercicio;

USE primeiroExercicio;

CREATE TABLE FUNCIONARIOS(
	idFuncionario INTEGER,
	nome VARCHAR(100),
	email VARCHAR(200),
	sexo VARCHAR(10),
	departamento VARCHAR(100),
	admissao VARCHAR(10),
	salario INTEGER,
	cargo VARCHAR(100),
	idRegiao INT
);

SELECT nome, departamento FROM FUNCIONARIOS WHERE departamento = 'filmes' or departamento = 'roupas';

SELECT nome, email, departamento FROM FUNCIONARIOS WHERE sexo = 'Feminino' and (departamento = 'filmes' or departamento = 'lar');

SELECT nome, sexo, departamento FROM FUNCIONARIOS WHERE sexo = 'Masculino' or departamento = 'jardim';

/* --------------------------------*/

/* Filtrando valores nulos */

SELECT NOME FROM CLIENTE WHERE EMAIL IS NULL;

SELECT NOME FROM CLIENTE WHERE EMAIL IS NOT NULL;

/* Atualizando dados*/

UPDATE CLIENTE SET EMAIL = "TESTE@TESTE.COM"; /* ATUALIZA todos os dados da tabela no campo email*/

UPDATE CLIENTE SET EMAIL = 'HIAN@EXEMPLO.COM' WHERE NOME = 'HIAN' AND CPF = '1234567890' /*ATUALIZA um campo especifico*/

UPDATE CLIENTE SET EMAIL = 'NAT@EXEMPLO.COM' WHERE NOME = 'NAT'

 /* Apagando dados*/
 
 DELETE FROM CLIENTE; /* Apaga todos os dados da tabela*/
 
 DELETE FROM CLIENTE WHERE NOME = 'Hian' and CPF = '123435';
 
/*Apagando tabela*/

DROP TABLE NomeDaTabela

 
  /* Chave primaria e limitador de valores nulos*/
  
  CREATE TABLE NomeTabela(
	IdUnico INT PRIMARY KEY AUTO_INCREMENT, -- Declaração da chave primaria com incremento automatico (só no mySQL)
	Nome VARCHAR(30) NOT NULL, -- Valor não pode ser nulo
	CPF VARCHAR(15) NOT NULL UNIQUE -- Valor tem que ser unico
	SEXO ENUM('M','F') NOT NULL -- Limita os tipos de entrada (só no mySQL)
  );
  
  
   CREATE TABLE NomeTabela2(
   
   IdUnico INT UNIQUE, /* CARDINALIDADE 1:1 */
   FOREIGN KEY (IdUnico) REFERENCES NomeTabela(IdUnico)
   );
 
   
   CREATE TABLE NomeTabela3(
   
   IdUnico INT, /* CARDINALIDADE 1:N */
   FOREIGN KEY (IdUnico) REFERENCES NomeTabela(IdUnico)
   );
   

------------------------------------------------------------
                -- EXERCICIO ROMULO --

CREATE DATABASE Clinica;

USE Clinica;

CREATE TABLE Ambulatorio(
	nroa INT PRIMARY KEY AUTO_INCREMENT,
	andar INT NOT NULL,
	capacidade SMALLINT
);

CREATE TABLE Medico(
	codm INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(40) NOT NULL,
	idade SMALLINT NOT NULL,
	especialidade CHAR(20),
	CPF VARCHAR(11) UNIQUE,
	cidade VARCHAR(30),
	nroa INT,
	FOREIGN KEY (nroa) REFERENCES Ambulatorio(nroa)
);

CREATE TABLE Paciente(
	codp INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(40) NOT NULL,
	idade SMALLINT NOT NULL,
	cidade CHAR(30),
	CPF VARCHAR(11) UNIQUE,
	doenca VARCHAR(40) NOT NULL
);

CREATE TABLE Funcionario(
	codf INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(40) NOT NULL,
	idade SMALLINT,
	CPF VARCHAR(30) UNIQUE,
	cidade VARCHAR(30),
	salario NUMERIC(10,2),
	nroa INT,
	FOREIGN KEY (nroa) REFERENCES Ambulatorio(nroa)
);

CREATE TABLE Consulta(
	Num_consulta INT PRIMARY KEY AUTO_INCREMENT,
	codm INT,
	codp INT,
	data DATE,
	hora TIME,
	FOREIGN KEY (codm) REFERENCES Medico(codm),
	FOREIGN KEY (codp) REFERENCES Paciente(codp)
);


SHOW TABLES;   
   
INSERT INTO Ambulatorio VALUE(NULL, 1, 30);
INSERT INTO Ambulatorio VALUE(NULL, 1, 50);
INSERT INTO Ambulatorio VALUE(NULL, 2, 40);
INSERT INTO Ambulatorio VALUE(NULL, 2, 25);
INSERT INTO Ambulatorio VALUE(NULL, 2, 55);

INSERT INTO Medico VALUE(NULL, 'Joao', 40, 'ortopedia', '10000100000', 'Florianopolis',1);
INSERT INTO Medico VALUE(NULL, 'Maria', 42, 'traumatologia', '10000110000', 'Blumenau',2);
INSERT INTO Medico VALUE(NULL, 'Pedro', 51, 'pediatria', '11000100000', 'São José',2);
INSERT INTO Medico VALUE(NULL, 'Carlos', 28, 'ortopedia', '11000110000', 'Joinville',4);
INSERT INTO Medico VALUE(NULL, 'Marcia', 33, 'neurologia', '11000111000', 'Biguacu',3);   
   
   
INSERT INTO Paciente VALUE(NULL, 'Ana', 20, 'Florianopolis', '20000200000', 'gripe');
INSERT INTO Paciente VALUE(NULL, 'Paulo', 24, 'Palhoca', '20000220000', 'fratura');   
INSERT INTO Paciente VALUE(NULL, 'Lucia', 30, 'Biguacu', '22000200000', 'tendinite');   
INSERT INTO Paciente VALUE(NULL, 'Carlos', 28, 'Joinville', '11000110000', 'sarampo');   
   
   
INSERT INTO Funcionario(nome, idade, cidade, salario, CPF) VALUE('Rita', 32, 'Sao Jose', 1200, '20000100000');
INSERT INTO Funcionario(nome, idade, cidade, salario, CPF) VALUE('Maria', 32, 'Palhoca', 1220, '30000110000');
INSERT INTO Funcionario(nome, idade, cidade, salario, CPF) VALUE('Caio', 32, 'Florianopolis', 1100, '41000100000');
INSERT INTO Funcionario(nome, idade, cidade, salario, CPF) VALUE('Carlos', 32, 'Florianopolis', 1200, '51000110000');
INSERT INTO Funcionario(nome, idade, cidade, salario, CPF) VALUE('Paula', 32, 'Florianopolis', 2500, '61000111000');

INSERT INTO Consulta(codm, codp, data, hora) VALUES(1, 1, '2006-06-12', '14:00');
INSERT INTO Consulta(codm, codp, data, hora) VALUES(1, 4, '2006-06-13', '10:00');
INSERT INTO Consulta(codm, codp, data, hora) VALUES(2, 1, '2006-06-13', '09:00');
INSERT INTO Consulta(codm, codp, data, hora) VALUES(2, 2, '2006-06-13', '11:00');
INSERT INTO Consulta(codm, codp, data, hora) VALUES(2, 3, '2006-06-14', '14:00');
INSERT INTO Consulta(codm, codp, data, hora) VALUES(2, 4, '2006-06-14', '17:00');
INSERT INTO Consulta(codm, codp, data, hora) VALUES(3, 1, '2006-06-19', '18:00');
INSERT INTO Consulta(codm, codp, data, hora) VALUES(3, 3, '2006-06-12', '10:00');
INSERT INTO Consulta(codm, codp, data, hora) VALUES(3, 4, '2006-06-19', '13:00');
INSERT INTO Consulta(codm, codp, data, hora) VALUES(4, 4, '2006-06-20', '13:00');
INSERT INTO Consulta(codm, codp, data, hora) VALUES(4, 4, '2006-06-22', '19:30');

-- O paciente Paulo mudou-se para Ilhota
UPDATE Paciente SET cidade = 'Ilhota' where nome = 'Paulo';

-- A consulta do médico 1 com o paciente 4 passou para às 12:00 horas do dia 4 de Julho de 2006
SELECT * FROM CONSULTA WHERE codm = '1' and codp = '4';
UPDATE CONSULTA SET data = '2006/06/04' WHERE codm = '1' AND codp = '4';
UPDATE CONSULTA SET hora = '12:00' WHERE codm = '1' AND codp = '4'; 

-- A paciente Ana fez aniversário e sua doença agora é hepatite
SELECT * FROM PACIENTE WHERE nome = 'Ana';
UPDATE PACIENTE SET doenca = 'hepatite' WHERE nome = 'Ana';

-- A consulta do médico Pedro (codm = 3) com o paciente Carlos (codp = 4) passou para uma hora e meia depois
SELECT * FROM CONSULTA WHERE codm = 3 AND codp = 4;
UPDATE CONSULTA SET hora = '14:30' WHERE codm = 3 AND codp = 4;

-- O funcionário Carlos (codf = 4) deixou a clínica
SELECT * FROM Funcionario WHERE codf = 4;
DELETE FROM Funcionario WHERE codf = 4;
SELECT * FROM Funcionario;

-- As consultas marcadas após as 19 horas foram canceladas

SELECT * FROM CONSULTA;
SELECT * FROM CONSULTA WHERE HORA > '19:00';
DELETE FROM CONSULTA WHERE HORA > '19:00';
SELECT * FROM CONSULTA;

-- Os pacientes com câncer ou idade inferior a 10 anos deixaram a clínica

SELECT * FROM PACIENTE;
SELECT * FROM PACIENTE WHERE doenca = 'câncer' and idade < 10;
-- NÃO TEMOS PACIENTES NESSA CONDIÇÃO
DELETE FROM PACIENTE WHERE doenca = 'câncer' and idade < 10;

-- Os médicos que residem em Biguacu e Palhoca deixaram a clínica

SELECT * FROM Medico;
SELECT * FROM Medico WHERE cidade = 'BIGUACU' or cidade = 'PALHOCA';
DELETE FROM Medico WHERE cidade = 'BIGUACU' or cidade = 'PALHOCA';







