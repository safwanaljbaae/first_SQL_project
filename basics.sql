#!/bin/bash
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

-- Criar banco de dados
CREATE DATABASE db_aula;
-- Especificar que está utilizando o banco db_aula
USE db_aula;
-- Deletar banco de dados
CREATE DATABASE db_test;
DROP DATABASE db_test;
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
ALTER TABLE tb_pessoas
ADD telefone VARCHAR(20);
-- Inserindo um registro na tabela
INSERT INTO tb_pessoas (nome, email, telefone, idade)
VALUE ('Leonardo Ramires', 'leo@email.com','(11)998887765',23);
-- Inserindo mais de um registro na tabela
INSERT INTO tb_pessoas (nome, email, telefone, idade)
VALUES
  ('Pessoa 1', 'p1@email.com', '(11)998866765', 18),
    ('Pessoa 2', 'p2@email.com', '(11)996687765', 35),
    ('Pessoa 3', 'p3@email.com', '(11)998888885', 50);
-- Selecionar os registros
SELECT * FROM tb_pessoas;
SELECT nome, idade FROM tb_pessoas;
