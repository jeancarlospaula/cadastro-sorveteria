CREATE DATABASE Clientes_Sorveteria

USE Clientes_Sorveteria

CREATE TABLE Clientes (
	ID_Cliente INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	cidade VARCHAR(50),
	rua VARCHAR(50),
	numero INTEGER,
	telefone VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
)