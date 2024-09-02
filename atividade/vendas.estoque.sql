--Cria o schema vendas se não existir
CREATE SCHEMA IF NOT EXISTS vendas;

--Cria a tabela fornecedor no schema vendas, se não existir
CREATE TABLE IF NOT EXISTS vendas.estoque (
    cod_p INT REFERENCES vendas.peca(cod_p),
    cod_f INT REFERENCES vendas.fornecedor(cod_f),
    quantidade INT,
    cidade VARCHAR(100)
);


INSERT INTO vendas.estoque VALUES
(38, 44, 12, 'Recife'),
(36, 80, 23, 'Aracaju'),
(40, 52, 37, 'Salvador'),
(9, 98, 12, 'Campo Grande'),
(95, 44, 4, 'São Luís'),
(35, 24, 18, 'Recife'),
(71, 96, 9, 'São Paulo'),
(52, 39, 28, 'Maceió'),
(42, 34, 5, 'Rio de Janeiro'),
(7, 63, 21, 'João Pessoa'),
(26, 7, 46, 'São Paulo'),
(3, 23, 28, 'Macapá'),
(74, 6, 14, 'Boa Vista'),
(51, 58, 19, 'Vitória'),
(88, 97, 18, 'Salvador'),
(16, 12, 16, 'Manaus'),
(25, 9, 40, 'Brasília'),
(47, 32, 13, 'Palmas'),
(22, 57, 45, 'Palmas'),
(20, 82, 30, 'São Paulo'),
(42, 29, 17, 'Porto Alegre'),
(75, 66, 17, 'Belo Horizonte'),
(90, 18, 39, 'Natal'),
(10, 77, 36, 'Manaus'),
(65, 22, 24, 'Macapá'),
(62, 39, 12, 'Fortaleza'),
(49, 27, 45, 'Rio Branco'),
(9, 49, 33, 'Recife'),
(53, 55, 30, 'Curitiba'),
(2, 79, 45, 'Brasília'),
(85, 4, 6, 'Belo Horizonte'),
(72, 89, 31, 'Natal'),
(2, 96, 2, 'Teresina'),
(70, 43, 3, 'Recife'),
(77, 1, 48, 'Belém'),
(24, 64, 29, 'São Luís'),
(5, 64, 36, 'Rio Branco'),
(98, 1, 50, 'Porto Alegre'),
(82, 41, 32, 'São Paulo'),
(7, 5, 7, 'Manaus'),
(72, 19, 47, 'Campo Grande'),
(3, 62, 19, 'Campo Grande'),
(34, 10, 26, 'Fortaleza'),
(40, 54, 3, 'Maceió'),
(100, 73, 49, 'Natal'),
(82, 49, 34, 'Teresina'),
(91, 16, 38, 'Manaus'),
(80, 61, 14, 'Porto Alegre'),
(63, 96, 4, 'Manaus'),
(50, 56, 43, 'Maceió'),
(62, 36, 32, 'São Paulo'),
(88, 62, 16, 'Goiânia'),
(88, 37, 32, 'Palmas'),
(76, 78, 45, 'São Luís'),
(75, 26, 14, 'Rio Branco'),
(44, 72, 14, 'Aracaju'),
(56, 44, 38, 'Belém'),
(5, 35, 42, 'Florianópolis'),
(90, 57, 34, 'João Pessoa'),
(20, 46, 45, 'João Pessoa'),
(62, 84, 14, 'Rio de Janeiro'),
(85, 73, 38, 'Brasília'),
(46, 52, 37, 'Salvador'),
(7, 32, 29, 'Fortaleza'),
(60, 42, 19, 'São Paulo'),
(88, 89, 3, 'Goiânia'),
(26, 33, 8, 'Porto Velho'),
(43, 85, 21, 'Rio de Janeiro'),
(24, 4, 1, 'Natal'),
(26, 32, 12, 'Florianópolis'),
(2, 33, 22, 'Natal'),
(100, 65, 8, 'Natal'),
(38, 1, 28, 'Natal'),
(78, 91, 45, 'Porto Velho'),
(89, 98, 21, 'Natal'),
(1, 13, 23, 'Maceió'),
(46, 54, 9, 'Rio Branco'),
(12, 96, 34, 'Belo Horizonte'),
(73, 93, 4, 'Rio de Janeiro'),
(37, 57, 40, 'Teresina'),
(92, 96, 24, 'Aracaju'),
(61, 17, 6, 'Campo Grande'),
(35, 41, 19, 'Manaus'),
(77, 75, 49, 'São Luís'),
(86, 52, 31, 'Aracaju'),
(35, 85, 28, 'Vitória'),
(1, 34, 10, 'Palmas'),
(50, 83, 35, 'Salvador'),
(57, 77, 33, 'Rio de Janeiro'),
(76, 79, 50, 'Porto Alegre'),
(58, 44, 7, 'Cuiabá'),
(48, 58, 6, 'Salvador'),
(40, 80, 45, 'Belo Horizonte'),
(44, 49, 47, 'São Luís'),
(74, 80, 30, 'Rio de Janeiro'),
(40, 76, 10, 'Brasília'),
(9, 70, 37, 'Brasília'),
(31, 72, 26, 'Porto Velho'),
(53, 51, 20, 'Porto Velho'),
(22, 57, 42, 'João Pessoa'),
(33, 16, 5, 'São Paulo'),
(80, 56, 6, 'Belém'),
(6, 26, 30, 'Belo Horizonte'),
(99, 41, 34, 'Cuiabá'),
(5, 4, 48, 'Teresina'),
(7, 81, 46, 'Macapá'),
(75, 65, 16, 'Teresina'),
(33, 75, 6, 'Maceió'),
(90, 55, 38, 'Manaus'),
(27, 46, 6, 'Belém'),
(19, 56, 45, 'Rio de Janeiro'),
(69, 90, 46, 'Boa Vista'),
(89, 49, 48, 'Maceió'),
(77, 92, 27, 'Goiânia'),
(51, 99, 29, 'Porto Alegre'),
(75, 56, 38, 'Rio Branco'),
(30, 5, 18, 'Manaus'),
(93, 53, 48, 'São Paulo'),
(68, 7, 3, 'Teresina'),
(58, 44, 25, 'Natal'),
(52, 43, 30, 'Boa Vista'),
(9, 10, 11, 'Palmas'),
(3, 38, 15, 'São Luís'),
(98, 17, 21, 'Macapá'),
(79, 59, 19, 'Recife'),
(26, 69, 9, 'Vitória'),
(15, 96, 17, 'Natal'),
(29, 49, 48, 'Cuiabá'),
(22, 43, 39, 'João Pessoa'),
(22, 79, 16, 'Rio Branco'),
(94, 71, 49, 'Rio Branco'),
(9, 22, 6, 'Campo Grande'),
(99, 75, 33, 'Palmas'),
(24, 77, 31, 'Natal'),
(62, 61, 3, 'Belo Horizonte'),
(20, 88, 34, 'Brasília'),
(12, 29, 14, 'Maceió'),
(29, 41, 9, 'São Paulo'),
(29, 20, 20, 'Porto Alegre'),
(30, 100, 2, 'Recife'),
(65, 30, 43, 'Cuiabá'),
(3, 9, 32, 'Goiânia'),
(68, 57, 38, 'Brasília'),
(75, 84, 2, 'Goiânia'),
(70, 40, 15, 'Palmas'),
(75, 11, 41, 'Rio Branco'),
(40, 54, 23, 'Rio de Janeiro'),
(25, 24, 11, 'Boa Vista'),
(51, 10, 2, 'Teresina'),
(38, 93, 30, 'Teresina'),
(32, 9, 46, 'Campo Grande'),
(88, 38, 4, 'São Luís'),
(97, 34, 7, 'Florianópolis'),
(53, 21, 42, 'São Paulo'),
(51, 89, 5, 'João Pessoa'),
(92, 89, 37, 'Goiânia'),
(9, 67, 32, 'Natal'),
(62, 86, 33, 'Porto Alegre'),
(15, 32, 6, 'Salvador'),
(85, 38, 33, 'Belém'),
(31, 91, 11, 'São Paulo'),
(67, 71, 4, 'Florianópolis'),
(17, 85, 50, 'Porto Alegre'),
(80, 53, 12, 'Maceió'),
(37, 52, 29, 'Rio de Janeiro'),
(21, 24, 27, 'Boa Vista'),
(17, 56, 31, 'Rio Branco'),
(6, 30, 49, 'Salvador'),
(15, 98, 20, 'Recife'),
(54, 12, 25, 'Goiânia'),
(53, 12, 31, 'Curitiba'),
(75, 34, 10, 'Rio de Janeiro'),
(76, 2, 8, 'Cuiabá'),
(8, 24, 3, 'Boa Vista'),
(59, 20, 45, 'Salvador'),
(57, 51, 48, 'Florianópolis'),
(84, 95, 12, 'Porto Alegre'),
(13, 15, 8, 'Natal'),
(22, 43, 38, 'Porto Velho'),
(70, 85, 45, 'São Luís'),
(92, 40, 41, 'Belém'),
(15, 18, 2, 'João Pessoa'),
(10, 15, 34, 'Goiânia'),
(38, 48, 39, 'Belo Horizonte'),
(61, 70, 31, 'Curitiba'),
(83, 19, 20, 'Aracaju'),
(38, 81, 32, 'Boa Vista'),
(12, 79, 18, 'Belo Horizonte'),
(22, 14, 11, 'Belém'),
(85, 16, 17, 'Maceió'),
(71, 99, 20, 'Porto Alegre'),
(81, 44, 34, 'Macapá'),
(34, 18, 4, 'Boa Vista'),
(61, 64, 30, 'Porto Alegre'),
(96, 46, 19, 'Teresina'),
(88, 68, 28, 'Porto Alegre'),
(93, 98, 2, 'Goiânia'),
(56, 21, 2, 'Rio Branco'),
(10, 23, 12, 'Maceió'),
(44, 27, 26, 'Fortaleza');


SELECT * FROM vendas.estoque;

