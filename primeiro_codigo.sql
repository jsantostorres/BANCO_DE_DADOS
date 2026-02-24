
-- create
CREATE TABLE USUARIO (
  id INT PRIMARY KEY,
  cpf CHAR(14) NOT NULL,
  name VARCHAR(254) NOT NULL,
  aniver DATE NOT NULL,
  email VARCHAR(50) NOT NULL
);

-- insert
INSERT INTO USUARIO VALUES (001, '091.236.462-35', 'Pedro de Alcântara', '1825/12/02', 'dompedrin2@outlook.com');
INSERT INTO USUARIO VALUES (002, '255.264.154-23', 'Manoel Gomes', '1989/12/02', 'bluepen6969@hotmail.com');
INSERT INTO USUARIO VALUES (003, '253.475.322-29', 'Dwayne Johnson', '1972/05/02', 'therockator@hotmail.com');
INSERT INTO USUARIO VALUES (004, '284.247.372-78', 'Ednaldo Pereira', '1973/06/12', 'pereira.edinho12@hotmail.com');
INSERT INTO USUARIO VALUES (005, '274.287.374-72', 'Monark', '1990/08/17', 'monarkgames@gmail.com');
INSERT INTO USUARIO VALUES (006, '374.274.391-28', 'Albert Einstein', '1879/03/14', 'supergeniomatemat.ico@outlook.com');
INSERT INTO USUARIO VALUES (007, '364.233.471-99', 'Chuu do Loona', '1999/10/20', 'chuudoloona@gmail.com');
INSERT INTO USUARIO VALUES (008, '284.246.281-69', 'Velho da Havan', '1962/10/11', 'veiodahavan@hotmail.com');
INSERT INTO USUARIO VALUES (009, '362.294.271-98', 'Vin Diesel', '1967/07/18', 'vingasolina@hotmail.com');
INSERT INTO USUARIO VALUES (010, '374.298.387-35', 'Julius Robert Oppenheimer', '1904/04/22', 'oppenheineken@outlook.com');

-- fetch 
SELECT * FROM USUARIO;

-- create
CREATE TABLE ENDERECO (
  id INT,
  user_id INT,
  pais VARCHAR(50),
  estado VARCHAR(50),
  PRIMARY KEY(id),
  foreign KEY (user_id) references usuario(id)
);

-- insert
INSERT INTO ENDERECO VALUES (001, 001, 'Brasil', 'Rio de Janeiro');
INSERT INTO ENDERECO VALUES (002, 002, 'Brasil', 'Maranhão');
INSERT INTO ENDERECO VALUES (003, 003, 'Estados Unidos da América', 'Califórnia');
INSERT INTO ENDERECO VALUES (004, 004, 'Brasil', 'Paraíba');
INSERT INTO ENDERECO VALUES (005, 005, 'Brasil', 'São Paulo');
INSERT INTO ENDERECO VALUES (006, 006, 'Alemanha', 'Ulm');
INSERT INTO ENDERECO VALUES (007, 007, 'Coreia do Sul', 'Cheongju');
INSERT INTO ENDERECO VALUES (008, 008, 'Brasil', 'Santa Catarina');
INSERT INTO ENDERECO VALUES (009, 009, 'Estados Unidos da América', 'Califórnia');
INSERT INTO ENDERECO VALUES (010, 010, 'Estados Unidos da América', 'Nova York');

-- fetch
SELECT * FROM ENDERECO;
