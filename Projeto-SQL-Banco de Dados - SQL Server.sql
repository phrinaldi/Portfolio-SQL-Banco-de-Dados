

-- Etapa 1: Criar o Banco de Dados

CREATE DATABASE Oscar;
USE Oscar;

-- Etapa 2: Criar das Tabelas

-- ## Tabela Ator
CREATE TABLE Ator(
	Cod_Ator INT,
	Nome_Ator VARCHAR(50) NOT NULL,
	Cidade_Ator VARCHAR(50) NOT NULL,
	Pais_Ator VARCHAR(10) NOT NULL,
	Genero_Ator VARCHAR(1) NOT NULL,
	PRIMARY KEY(Cod_Ator)
);

-- ## Tabela Diretor
CREATE TABLE Diretor(
	Cod_Diretor INT,
	Nome_Diretor VARCHAR(50) NOT NULL,
	Cidade_Diretor VARCHAR(50) NOT NULL,
	Pais_Diretor VARCHAR(10) NOT NULL,
	PRIMARY KEY(Cod_Diretor)
);

-- ## Tabela Filme
CREATE TABLE Filme(
	Cod_Filme INT,
	Titulo VARCHAR(50) NOT NULL,
	Cod_Diretor INT NOT NULL,
	PRIMARY KEY(Cod_Filme),
	FOREIGN KEY(Cod_Diretor) REFERENCES Diretor(Cod_Diretor)
);

-- ## Tabela Premio
CREATE TABLE Premio(
	Cod_Premio INT,
	Descricao_Premio VARCHAR(50) NOT NULL,
	PRIMARY KEY(Cod_Premio)
);

-- ## Tabela Participacao
CREATE TABLE Participacao(
	A_Cod_Ator INT,
	F_Cod_Filme INT,
	PRIMARY KEY(A_Cod_Ator, F_Cod_Filme),
	FOREIGN KEY(A_Cod_Ator) REFERENCES Ator(Cod_Ator),
	FOREIGN KEY(F_Cod_Filme) REFERENCES Filme(Cod_Filme)
);

-- ## Tabela Premiacao
CREATE TABLE Premiacao(
	F_Cod_Filme INT,
	P_Cod_Premio INT,
	Ano INT NOT NULL,
	PRIMARY KEY(F_Cod_Filme, P_Cod_Premio),
	FOREIGN KEY(F_Cod_Filme) REFERENCES Filme(Cod_Filme),
	FOREIGN KEY(P_Cod_Premio) REFERENCES Premio(Cod_Premio)
);


-- Etapa 3: Inserir valores nas tabelas

-- ## Tabela Ator
INSERT INTO Ator(Cod_Ator, Nome_Ator, Cidade_Ator, Pais_Ator, Genero_Ator) VALUES
(1, 'Alan Arkin', 'Nova York', ' USA', 'M'),
(2, 'Alec Baldwin', 'Nova York', ' USA', 'M'),
(3, 'Ben Affleck', 'California', ' USA', 'M'),
(4, 'Bérénice Bejo', 'Buenos Aires', ' ARG', 'F'),
(5, 'Bradley Cooper', 'Pensilvania', ' USA', 'M'),
(6, 'Brian May', 'Hampton', ' GBR', 'M'),
(7, 'Brie Larson', 'California', ' USA', 'F'),
(8, 'Casey Affleck', 'Massachusetts', ' USA', 'M'),
(9, 'Cate Blanchett', 'Ivanhoe', ' AUS', 'F'),
(10, 'Chiwetel Ejiofor', 'Londres', ' GBR', 'M'),
(11, 'Colin Firth', 'Grayshott', ' GBR', 'M'),
(12, 'Daniel Day-Lewis', 'Londres', ' GBR', 'M'),
(13, 'Doug Jones', 'Indiana', ' USA', 'M'),
(14, 'Eddie Redmayne', 'Londres', ' GBR', 'M'),
(15, 'Edward Norton', 'Massachusetts', ' USA', 'M'),
(16, 'Emma Stone', 'Arizona', ' USA', 'F'),
(17, 'Felicity Jones', 'Birmingham', ' GBR', 'F'),
(18, 'Finn Wittrock', 'Massachusetts', ' USA', 'M'),
(19, 'Frances McDormand ', 'Illinois', ' USA', 'F'),
(20, 'Gary Oldman', 'Londres', ' GBR', 'M'),
(21, 'Geoffrey Rush', 'Toowoomba', ' AUS', 'M'),
(22, 'George Clooney', 'Kentucky', ' USA', 'M'),
(23, 'Irrfan Khan', 'Tonk', ' IND', 'M'),
(24, 'Jacob Tremblay', 'Vancouver', ' CAN', 'M'),
(25, 'Jean Dujardin', 'Rueil-Malmaison', ' FRA', 'M'),
(26, 'Jennifer Garner', 'Texas', ' USA', 'F'),
(27, 'Jennifer Lawrence', 'Kentucky', ' USA', 'F'),
(28, 'Jim Broadbent', 'Holton cum Beckering', ' GBR', 'M'),
(29, 'Joaquin Phoenix', 'Rio Piedras', ' PUR', 'M'),
(30, 'Julianne Moore', 'Carolina do Norte', ' USA', 'F'),
(31, 'Kristen Stewart', 'California', ' USA', 'F'),
(32, 'Leonardo DiCaprio', 'California', ' USA', 'M'),
(33, 'Lily James', 'Esher', ' GBR', 'F'),
(34, 'Lucas Hedges', 'Nova York', ' USA', 'M'),
(35, 'Mahershala Ali', 'California', ' USA', 'M'),
(36, 'Marcus Ornellas', 'Rio Grande do Sul', ' BRA', 'M'),
(37, 'Marina de Tavira', 'Cidade do México', ' MEX', 'F'),
(38, 'Mark Ruffalo', 'Wisconsin', ' USA', 'M'),
(39, 'Matthew McConaughey', 'Texas', ' USA', 'M'),
(40, 'Meryl Streep', 'Nova Jersey', ' USA', 'F'),
(41, 'Michael Fassbender', 'Heidelberg', ' GER', 'M'),
(42, 'Michael Keaton', 'Pensilvania', ' USA', 'M'),
(43, 'Mila Kunis', 'Chernivtsi', ' UKR', 'F'),
(44, 'Natalie Portman', 'Jerusalem', ' ISR', 'F'),
(45, 'Olivia Colman', 'Norwich', ' GBR', 'F'),
(46, 'Park Seo-joon', 'Seul', ' KOR', 'M'),
(47, 'Rachel Weisz', 'Londres', ' GBR', 'F'),
(48, 'Rami Malek', 'California', ' USA', 'M'),
(49, 'Renée Zellweger', 'Texas', ' USA', 'F'),
(50, 'Robert De Niro', 'Nova York', ' USA', 'M'),
(51, 'Ryan Gosling', 'London', ' CAN', 'M'),
(52, 'Sally Field', 'California', ' USA', 'F'),
(53, 'Sally Hawkins', 'Londres', ' GBR', 'F'),
(54, 'Sandra Bullock', 'Virginia', ' USA', 'F'),
(55, 'Song Kang-ho', 'Gimhae', ' KOR', 'M'),
(56, 'Suraj Sharma', 'Nova Delhi', ' IND', 'M'),
(57, 'Tom Hardy', 'Londres', ' GBR', 'M'),
(58, 'Trevante Rhodes', 'Luisiana', ' USA', 'M'),
(59, 'Viggo Mortensen', 'Nova York', ' USA', 'M'),
(60, 'Woody Harrelson', 'Texas', ' USA', 'M'),
(61, 'Yalitza Aparicio', 'Tlaxiaco', ' MEX', 'F');

-- ## Tabela Diretor
INSERT INTO Diretor(Cod_Diretor, Nome_Diretor, Cidade_Diretor, Pais_Diretor) VALUES
(1, 'Alejandro González', 'Cidade do Mexico', 'MEX'),
(2, 'Alfonso Cuarón', 'Cidade do Mexico', 'MEX'),
(3, 'Ang Lee', 'Pingtung', 'CHN'),
(4, 'Barry Jenkins', 'Florida', 'USA'),
(5, 'Ben Affleck', 'California', 'USA'),
(6, 'Bong Joon-ho', 'Daegu', 'KOR'),
(7, 'Bryan Singer', 'Nova York', 'USA'),
(8, 'Damien Chazelle', 'Rhode Island', 'USA'),
(9, 'Darren Aronofsky', 'Nova York', 'USA'),
(10, 'David O. Russell', 'Nova York', 'USA'),
(11, 'Guillermo del Toro', 'Guadalajara', 'MEX'),
(12, 'James Marsh', 'Truro', 'GBR'),
(13, 'Jean-Marc Vallée', 'Montreal', 'CAN'),
(14, 'Joe Wright', 'Londres', 'GBR'),
(15, 'Kenneth Lonergan', 'Nova York', 'USA'),
(16, 'Lenny Abrahamson', 'Dublin', 'IRL'),
(17, 'Martin McDonagh', 'Londres', 'GBR'),
(18, 'Michel Hazanavicius', 'Paris', 'FRA'),
(19, 'Peter Farrelly', 'Pensilvania', 'USA'),
(20, 'Phyllida Lloyd', 'Bristol', 'GBR'),
(21, 'Rupert Goold', 'Londres', 'GBR'),
(22, 'Steve McQueen', 'Londres', 'USA'),
(23, 'Steven Spielberg', 'Ohio', 'USA'),
(24, 'Todd Phillips', 'Nova York', 'USA'),
(25, 'Tom Hopper', 'Coalville', 'GBR'),
(26, 'Tom McCarthy', 'Nova Jersey', 'USA'),
(27, 'Wash Westmoreland', 'Leeds', 'GBR'),
(28, 'Woody Allen', 'Bronx', 'USA'),
(29, 'Yorgos Lanthimos', 'Atenas', 'GRE');

-- ## Tabela Filme
INSERT INTO Filme(Cod_Filme, Titulo, Cod_Diretor) VALUES
(1, 'O Discurso do Rei', 25),
(2, 'Cisne Negro', 9),
(3, 'O Artista', 18),
(4, 'A Dama de Ferro', 20),
(5, 'Argo', 5),
(6, 'As Aventuras de Pi', 3),
(7, 'Lincoln', 23),
(8, 'O Lado Bom da Vida', 10),
(9, '12 Anos de Escravidão', 22),
(10, 'Gravidade', 2),
(11, 'Clube de Compras Dallas', 13),
(12, 'Blue Jasmine', 28),
(13, 'Birdman', 1),
(14, 'A Teoria de Tudo', 12),
(15, 'Para Sempre Alice', 27),
(16, 'Spotlight: Segredos Revelados', 26),
(17, 'O Regresso', 1),
(18, 'O Quarto de Jack', 16),
(19, 'Moonlight: Sob a Luz do Luar', 4),
(20, 'La La Land', 8),
(21, 'Manchester à Beira-Mar', 15),
(22, 'A Forma da Água', 11),
(23, 'O Destino de Uma Nação', 14),
(24, 'Três Anúncios Para Um Crime', 17),
(25, 'Green Book: O Guia', 19),
(26, 'Roma', 2),
(27, 'Bohemian Rhapsody', 7),
(28, 'A Favorita', 29),
(29, 'Parasita', 6),
(30, 'Coringa', 24),
(31, 'Judy: Muito Além do Arco-Íris', 21);

-- ## Tabela Premio
INSERT INTO Premio(Cod_Premio, Descricao_Premio) VALUES
(1, 'Melhor Filme'),
(2, 'Melhor Diretor'),
(3, 'Melhor Ator'),
(4, 'Melhor Atriz');

-- ## Tabela Participacao
INSERT INTO Participacao(A_Cod_Ator, F_Cod_Filme) VALUES
(7, 18),
(11, 1),
(40, 4),
(9, 12),
(45, 28),
(44, 2),
(39, 11),
(48, 27),
(12, 7),
(16, 20),
(27, 8),
(49, 31),
(14, 14),
(29, 30),
(19, 24),
(30, 15),
(20, 23),
(25, 3),
(8, 21),
(32, 17),
(21, 1),
(43, 2),
(4, 3),
(28, 4),
(3, 5),
(1, 5),
(56, 6),
(23, 6),
(52, 7),
(5, 8),
(10, 9),
(41, 9),
(54, 10),
(22, 10),
(26, 11),
(2, 12),
(42, 13),
(15, 13),
(17, 14),
(31, 15),
(38, 16),
(57, 17),
(24, 18),
(35, 19),
(58, 19),
(51, 20),
(34, 21),
(53, 22),
(13, 22),
(33, 23),
(60, 24),
(59, 25),
(35, 25),
(61, 26),
(37, 26),
(6, 27),
(47, 28),
(55, 29),
(46, 29),
(50, 30),
(18, 31),
(42, 16);

-- ## Tabela Premiacao
INSERT INTO Premiacao(F_Cod_Filme, P_Cod_Premio, Ano) VALUES
(1, 1, 2011),
(1, 2, 2011),
(1, 3, 2011),
(2, 4, 2011),
(3, 1, 2012),
(3, 2, 2012),
(3, 3, 2012),
(4, 4, 2012),
(5, 1, 2013),
(6, 2, 2013),
(7, 3, 2013),
(8, 4, 2013),
(9, 1, 2014),
(10, 2, 2014),
(11, 3, 2014),
(12, 4, 2014),
(13, 1, 2015),
(13, 2, 2015),
(14, 3, 2015),
(15, 4, 2015),
(16, 1, 2016),
(17, 2, 2016),
(17, 3, 2016),
(18, 4, 2016),
(19, 1, 2017),
(20, 2, 2017),
(21, 3, 2017),
(20, 4, 2017),
(22, 1, 2018),
(22, 2, 2018),
(23, 3, 2018),
(24, 4, 2018),
(25, 1, 2019),
(26, 2, 2019),
(27, 3, 2019),
(28, 4, 2019),
(29, 1, 2020),
(29, 2, 2020),
(30, 3, 2020),
(31, 4, 2020);


-- Testes Finais:

-- 1) Verificar a Restrição de Integridade Referencial para as tabelas:

-- a) Participacao

INSERT INTO Participacao VALUES
(100, 1);

-- b) Premiacao

INSERT INTO Premiacao VALUES
(6, 8, 2022);


-- 2) Verificar uma Restrição de Domínio qualquer
INSERT INTO Premio VALUES
('COD123', 'Melhor Roteiro');

-- 3) Verificar uma Restrição de Vazio qualquer

INSERT INTO Ator VALUES
(101, 'Lazaro Ramos', 'Salvador', NULL, 'M');

-- 4) Verificar a Restrição de Chave nas tabelas:

-- a) Premio

INSERT INTO Premio VALUES
(1, 'Melhor Ator Coadjuvante');

-- b) Premiacao

INSERT INTO Premiacao VALUES
(1, 1, 2022);

-- 5) Verificar a Restrição de Integridade na tabela Ator

INSERT INTO Ator VALUES
(NULL, 'Fabio Porchat', 'Rio de Janeiro', 'BRA', 'M');