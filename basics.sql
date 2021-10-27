/*
# !===============================================================
# !==   Safwan Aljbaae                                          ==
# !==   Division of Space Mechanics and Control, INPE           == 
# !==   C.P. 515, 12227-310 São José dos Campos, SP, Brazi      ==
# !==   TEL      : +55 (12) 997183840                           ==
# !==   email    : safwan.aljbaae@gmail.com                     ==
# !==   Class    : Ciência de Dados-Turma 4                     ==
# !==   Prof     : Leonardo Ramires (linkedin: leonardo-ramires)==
# !==   October 2021                                            ==
# !===============================================================
# !===============================================================
Case Styles
snake case (nome_do_aluno) >> todas as letras minúsculas com as palavras separadas por underline "_"
cammel case (nomeDoAluno) >> a primeira palvra minúscula e a inicial das palavras subsequentes maiúsculas
*/

-- Criar banco de dados
CREATE DATABASE IF NOT EXISTS db_aula;

-- Especificar que está utilizando o banco db_aula
USE db_aula;

/* Criação de uma tabela
A tabela terá os campos de:
- Nome >> texto
- Email >> texto
- Idade >> inteiro
*/
CREATE TABLE tb_pessoas (
  nome VARCHAR(150),
    email VARCHAR(150),
    idade INT
);
-- Alterando a tabela para adicionar uma coluna
ALTER TABLE tb_pessoas ADD telefone VARCHAR(20);

-- Inserindo um registro na tabela
INSERT INTO tb_pessoas (nome, email, telefone, idade)
VALUE ('Safwan Aljbaae', 'safwan.aljbaae@gmail.com','(11)996353536',42);

-- Inserindo mais de um registro na tabela
INSERT INTO tb_pessoas (nome, email, telefone, idade)
VALUES
    ('Pessoa 1', 'p1@email.com', '(11)998866765', 18),
    ('Pessoa 2', 'p2@email.com', '(11)996687765', 35),
    ('Pessoa 3', 'p3@email.com', '(11)998888885', 50);
    
-- Selecionar os registros
SELECT * FROM tb_pessoas;

SELECT nome, idade FROM tb_pessoas;


SELECT 1 + 1;

-- returns the current date and time
SELECT NOW();

-- concatenate strings into one string
SELECT CONCAT('Safwan',' ','Aljbaae');
SELECT CONCAT('Safwan',' ','Aljbaae') AS 'Full name';


-- Deletar uma tabela
DROP TABLE IF EXISTS tb_pessoas;
 
-- Criação de uma tabela
CREATE TABLE tb_pessoas (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
	idade INT,
	cpf VARCHAR(14),
	rg VARCHAR(15),
	nasc DATE,
	genero VARCHAR(15),
	email VARCHAR(100),
	celular VARCHAR(50),
	altura DECIMAL(3,2),
	peso INT,
	PRIMARY KEY(id)
);
INSERT INTO tb_pessoas (nome,idade,cpf,rg,nasc,genero,celular,altura,peso) VALUES
	('Laura Josefa Isadora Santos', '76', '029.688.828-13', '50.002.457-1', '1945-08-20', 'Feminino', '(15) 98691-6470', 1.71, 62),
	('Mirella Luciana Maya Nascimento', '75', '725.780.058-85', '33.831.598-6', '1946-01-12', 'Feminino', '(19) 99935-9506', 1.78, 55),
	('Pietro Kaique Bernardo Rocha', '75', '330.365.228-75', '37.907.055-8', '1946-06-11', 'Masculino', '(11) 99760-4641', 1.87, 66),
    ('Vera Jennifer Emilly da Rocha', '68', '419.643.918-73', '40.152.515-6', '1953-06-22', 'Feminino', '(19) 99780-5763', 1.65, 68),
    ('Carlos Eduardo Martin Kaique Viana', '64', '439.928.798-52','35.153.601-2', '1957-08-08', 'Masculino', '(11) 99917-9298', 1.94, 63),
    ('Guilherme Diogo Monteiro', '62', '374.950.578-07', '26.408.608-9', '1959-06-13', 'Masculino', '(11) 99438-2794', 1.81, 106),
    ('Manuela Isabelle Cardoso', '61', '627.428.488-51', '41.066.075-9', '1960-01-12', 'Feminino', '(19) 99598-0532', 1.73, 53),
    ('Elaine Joana Marcela da Mata', '61', '764.252.218-52', '34.485.804-2', '1960-09-07', 'Feminino', '(17) 99143-2637', 1.72, 65),
    ('Giovanna Brenda da Silva', '60', '970.080.698-71', '29.257.397-2', '1961-06-20', 'Feminino', '(11) 99437-7093', 1.58, 78),
    ('Alessandra Antônia Nascimento', '52', '925.483.858-68', '42.693.805-7', '1969-01-20', 'Feminino', '(16) 99500-7171', 1.59, 65),
    ('Luna Rafaela Dias', '52', '644.952.238-01', '33.278.919-6', '1969-09-27', 'Feminino', '(19) 99857-9096', 1.60, 80),
    ('Aparecida Marcela Sophia Barbosa', '52', '189.836.358-78', '28.290.861-4', '1969-10-10', 'Feminino', '(14) 98971-4543', 1.57, 83),
    ('Erick Kaique Carvalho', '52', '003.461.968-25', '21.731.676-1', '1969-12-27', 'Masculino', '(11) 98484-2557', 1.63, 91),
    ('Bruna Agatha Silva', '50', '874.137.078-37', '23.847.966-3', '1971-03-13', 'Feminino', '(11) 98857-6737', 1.61, 45), 
    ('Enzo Cauã Kauê Gonçalves', '50', '520.927.748-83', '36.694.492-7', '1971-07-03', 'Masculino', '(11) 99934-4752', 1.82, 106),
    ('Matheus Benjamin Ricardo Souza', '50', '932.769.048-61', '41.519.382-5', '1971-10-15', 'Masculino', '(11) 99277-4402', 1.61, 61),
    ('Leandro Victor Silva', '46', '064.621.588-40', '32.601.403-2', '1975-04-20', 'Masculino', '(11) 99176-7325', 1.86, 95), 
    ('Luiz Mário Edson Silva', '43', '516.224.718-90', '24.636.026-4', '1978-06-10', 'Masculino', '(12) 98600-3011', 1.88, 108),
    ('Marina Débora Silveira', '43', '193.156.538-40', '45.158.273-1', '1978-08-12', 'Feminino', '(11) 98310-8589', 1.75, 56),
    ('Daniel Edson Jesus', '43', '561.784.888-74', '49.551.378-7', '1978-08-16', 'Masculino', '(19) 99866-9284', 1.76, 81), 
    ('Luiza Gabriela Sara Brito', '43', '848.394.018-37', '37.943.114-2', '1978-08-26', 'Feminino', '(11) 99305-2221', 1.55, 71),
    ('Débora Rafaela da Costa', '43', '830.131.168-11', '28.990.224-1', '1978-09-24', 'Feminino', '(19) 98602-6808', 1.67, 89),
    ('Renata Louise Clara Fogaça', '43', '539.654.948-30', '12.663.074-4', '1978-12-12', 'Feminino', '(14) 98134-4029', 1.77, 50),
    ('Rafael Geraldo Nelson Souza', '43', '257.128.348-04', '29.299.234-8', '1978-12-24', 'Masculino', '(11) 99841-7123', 1.64, 93),
    ('Samuel Raimundo Eduardo Ribeiro', '42', '085.264.188-58', '27.599.683-9', '1979-10-03', 'Masculino', '(11) 99706-6692', 1.93, 76),
    ('Silvana Priscila Agatha Sales', '39', '052.475.598-19', '37.543.016-7', '1982-01-25', 'Feminino', '(13) 98633-4221', 1.69, 73),
    ('Igor Mário Assis', '39', '603.160.038-24', '41.698.965-2', '1982-09-26', 'Masculino', '(11) 98900-1313', 1.93, 73),
    ('Luzia Melissa Barros', '38', '905.498.538-04', '26.445.792-4', '1983-04-05', 'Feminino', '(11) 99158-6307', 1.52, 51),
    ('Sophie Elaine Nair Silva', '38', '977.975.098-32', '25.683.492-1', '1983-10-22', 'Feminino', '(19) 99631-9285', 1.71, 76),
    ('Sebastião Osvaldo Igor Assunção', '24', '330.552.038-87', '41.361.181-4', '1997-10-06', 'Masculino', '(11) 98923-5143', 1.72, 67),
    ('Manuela Clarice Gabriela Assunção', '24', '060.823.238-66', '48.700.597-1', '1997-11-25', 'Feminino', '(15) 99873-4381', 1.74, 68),
    ('Helena Ester Mirella Castro', '20', '717.391.908-82', '45.225.771-2', '2001-11-02', 'Feminino', '(11) 99605-4014', 1.52, 47);

-- Realizando o update de um registro na tabela
UPDATE tb_pessoas SET nome = 'Helena Ester Mirella Castro NEW' WHERE nome = 'Helena Ester Mirella Castro';
UPDATE tb_pessoas SET nasc = '2021-11-02' WHERE nome = 'Helena Ester Mirella Castro NEW';

-- Alterando a tabela para adicionar a coluna de sexo
ALTER TABLE tb_pessoas ADD nwe_column VARCHAR(12);

-- Selecione come filtre as linhas com base nas condições especificadas 
SELECT * FROM tb_pessoas;
SELECT * FROM tb_pessoas WHERE genero = "Feminino";
SELECT * FROM tb_pessoas WHERE idade > 20 AND idade < 60;
SELECT * FROM tb_pessoas WHERE idade < 20 OR idade > 60;
SELECT * FROM tb_pessoas WHERE idade BETWEEN 20 AND 60;
SELECT * FROM tb_pessoas WHERE idade IN (20, 76, 75);
SELECT * FROM tb_pessoas WHERE nome LIKE 'A%';  -- % corresponde a qualquer string de zero ou mais caracteres 
SELECT * FROM tb_pessoas WHERE nome LIKE '%a';
SELECT * FROM tb_pessoas WHERE nome LIKE 'L%s';
SELECT * FROM tb_pessoas WHERE nome LIKE 'I______________s'; -- _ corresponde a qualquer caractere único 
SELECT * FROM tb_pessoas WHERE idade IS NULL;
-- Quando utilizamos o 'AS' tanto para colunas, quando para o nome da tabela, estamos dando um 'apelido' para aquele campo
SELECT P.nome, P.cpf FROM tb_pessoas AS P;
SELECT P.nome AS Nome,
	   P.cpf AS CPF
FROM db_aula.tb_pessoas AS P;

-- Especifique uma ou mais colunas para ordenar: DESC --> decrescente // ASC --> crescente
SELECT * FROM tb_pessoas ORDER BY idade ASC;
SELECT * FROM tb_pessoas ORDER BY idade ASC, peso DESC;
SELECT * FROM tb_pessoas WHERE idade >= 20 AND idade < 60 ORDER BY idade DESC;

-- restringir o número de linhas retornadas 
SELECT * FROM tb_pessoas ORDER BY idade ASC LIMIT 5;

-- Selecionando valores únicos de uma coluna através da cláusula DISTINCT
SELECT DISTINCT genero FROM tb_pessoas;

-- Realizando a contagem de linhas que tem em uma tabela
SELECT COUNT(*) FROM tb_pessoas;

-- Exemplo de multiplicação de valores de uma coluna numérica por outro valor
SELECT nome, idade, idade*2 FROM tb_pessoas;

-- JOIN: https://medium.com/@marquinhos44/entendendo-sql-join-62228508cbd3#:~:text=Os%20SQL%20JOINS%20%C3%A9%20forma,do%20seu%20banco%20dados%20relacional
-- vamos trabalhar com 3 tabelas, HOMEM,MULHER e FILHO, pois nesta composição conseguiremos abordar todos os JOINS que queremos.
DROP DATABASE IF EXISTS JOIN_EXAMPLE;
CREATE DATABASE JOIN_EXAMPLE; 
USE JOIN_EXAMPLE;

CREATE TABLE HOMEM (
IDHOMEM INT NOT NULL AUTO_INCREMENT,
NMHOMEM VARCHAR(50),
PRIMARY KEY (IDHOMEM)
);

CREATE TABLE MULHER (
IDMULHER INT NOT NULL AUTO_INCREMENT,
NMMULHER VARCHAR(50),
PRIMARY KEY (IDMULHER)
);

CREATE TABLE FILHO (
IDFILHO INT NOT NULL AUTO_INCREMENT,
IDHOMEM INT,
IDMULHER INT,
NMFILHO VARCHAR(50),
PRIMARY KEY (IDFILHO)
);

-- badicionar registros nas tabelas HOMEM, MUÇHER E FILHO
INSERT INTO HOMEM (NMHOMEM) VALUES
("JOSE"),
("JOAO"),
("MANOEL"),
("SEBASTIAO");

INSERT INTO MULHER (NMMULHER) VALUES
("MARIA"),
("MARCIA"),
("ANA"),
("LAURA");

INSERT INTO FILHO (NMFILHO, IDHOMEM, IDMULHER ) VALUES 
('PEDRO',1,1),
('MANUELA',2,2),
('ANTONIO',NULL,3),
('CARLA',1,NULL);
 
-- INNER JOIN representa a intersecção entre dois conjuntos
SELECT HOMEM.NMHOMEM AS Pai, FILHO.NMFILHO AS Filho FROM
HOMEM INNER JOIN FILHO ON
HOMEM.IDHOMEM = FILHO.IDHOMEM;

-- LEFT JOIN busca a relação de pertinência entre as tabelas. Selecionar todas as NMHOMEM e caso tenho filho iremos, trazer também o nome do filho
SELECT HOMEM.NMHOMEM AS Pai, FILHO.NMFILHO AS Filho FROM
HOMEM LEFT JOIN FILHO ON
HOMEM.IDHOMEM = FILHO.IDHOMEM;

-- RIGHT JOIN busca a relação de pertinência entre as tabelas. Selecionar todas as FILHO e caso tenho Pai iremos, trazer também o nome do Pai
SELECT HOMEM.NMHOMEM AS Pai, FILHO.NMFILHO AS Filho FROM
HOMEM RIGHT JOIN FILHO ON
HOMEM.IDHOMEM = FILHO.IDHOMEM;


SELECT HOMEM.NMHOMEM AS Pai, MULHER.NMMULHER AS Mãe, FILHO.NMFILHO AS Filho FROM
HOMEM INNER JOIN FILHO ON
HOMEM.IDHOMEM = FILHO.IDHOMEM
INNER JOIN MULHER ON
MULHER.IDMULHER = FILHO.IDMULHER;

SELECT HOMEM.NMHOMEM AS Pai, MULHER.NMMULHER AS Mãe, FILHO.NMFILHO AS Filho FROM
HOMEM RIGHT JOIN FILHO ON
HOMEM.IDHOMEM = FILHO.IDHOMEM
LEFT JOIN MULHER ON
MULHER.IDMULHER = FILHO.IDMULHER;

SELECT HOMEM.NMHOMEM AS Pai, MULHER.NMMULHER AS Mãe, FILHO.NMFILHO AS Filho FROM
HOMEM RIGHT JOIN FILHO ON
HOMEM.IDHOMEM = FILHO.IDHOMEM
LEFT JOIN MULHER ON
MULHER.IDMULHER = FILHO.IDMULHER;


-- Deletar banco de dados
DROP DATABASE IF EXISTS db_aula;

