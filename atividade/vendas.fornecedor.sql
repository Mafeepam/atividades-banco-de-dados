--Cria o schema vendas se não existir
CREATE SCHEMA IF NOT EXISTS vendas;

--Cria a tabela fornecedor no schema vendas, se não existir
CREATE TABLE IF NOT EXISTS vendas.fornecedor (
    cod_f SERIAL PRIMARY KEY,
    f_nome VARCHAR(50) NOT NULL,
    status VARCHAR(10),
    cidade VARCHAR(100),
    cod_p INT
);

INSERT INTO vendas.fornecedor VALUES
(1, 'Ana', 'Bloqueado', 'Rio Branco', 4),
(2, 'João', 'Bloqueado', 'Maceió', 95),
(3, 'Maria', 'Liberado', 'Boa Vista', 12),
(4, 'Pedro', 'Pendente', 'Curitiba', 47),
(5, 'Sofia', 'Pendente', 'Palmas', 8),
(6, 'Lucas', 'Liberado', 'São Luís', 77),
(7, 'Julia', 'Ativo', 'Teresina', 50),
(8, 'Mateus', 'Inativo', 'Belém', 17),
(9, 'Laura', 'Bloqueado', 'Campo Grande', 3),
(10, 'Miguel', 'Pendente', 'Fortaleza', 43),
(11, 'Clara', 'Ativo', 'Aracaju', 95),
(12, 'Guilherme', 'Inativo', 'João Pessoa', 87),
(13, 'Alice', 'Inativo', 'Rio Branco', 50),
(14, 'Rafael', 'Ativo', 'Rio Branco', 62),
(15, 'Valentina', 'Suspenso', 'Manaus', 42),
(16, 'Gabriel', 'Suspenso', 'Rio Branco', 59),
(17, 'Sophia', 'Suspenso', 'Belém', 82),
(18, 'Enzo', 'Inativo', 'Macapá', 61),
(19, 'Isabella', 'Pendente', 'Florianópolis', 94),
(20, 'Leonardo', 'Liberado', 'Brasília', 39),
(21, 'Helena', 'Ativo', 'Porto Velho', 75),
(22, 'Matheus', 'Inativo', 'Salvador', 78),
(23, 'Laura', 'Liberado', 'Teresina', 15),
(24, 'Davi', 'Suspenso', 'Recife', 85),
(25, 'Manuela', 'Suspenso', 'Macapá', 25),
(26, 'Luiz', 'Liberado', 'Aracaju', 13),
(27, 'Giovanna', 'Inativo', 'Porto Velho', 74),
(28, 'Lucas', 'Pendente', 'Curitiba', 78),
(29, 'Beatriz', 'Liberado', 'Cuiabá', 16),
(30, 'Felipe', 'Ativo', 'São Paulo', 3),
(31, 'Lívia', 'Suspenso', 'Maceió', 98),
(32, 'Rodrigo', 'Inativo', 'Fortaleza', 8),
(33, 'Carolina', 'Bloqueado', 'Salvador', 68),
(34, 'Henrique', 'Inativo', 'Palmas', 66),
(35, 'Lorena', 'Suspenso', 'Natal', 74),
(36, 'Daniel', 'Ativo', 'Rio Branco', 74),
(37, 'Letícia', 'Suspenso', 'Salvador', 17),
(38, 'Caio', 'Ativo', 'Belém', 64),
(39, 'Isadora', 'Ativo', 'Belo Horizonte', 21),
(40, 'Rafaela', 'Ativo', 'Rio de Janeiro', 5),
(41, 'Joaquim', 'Inativo', 'João Pessoa', 26),
(42, 'Natália', 'Ativo', 'Fortaleza', 79),
(43, 'Samuel', 'Suspenso', 'Vitória', 31),
(44, 'Lara', 'Pendente', 'Florianópolis', 12),
(45, 'André', 'Bloqueado', 'Vitória', 41),
(46, 'Bruna', 'Inativo', 'Vitória', 81),
(47, 'Diego', 'Pendente', 'Natal', 38),
(48, 'Cecília', 'Bloqueado', 'Macapá', 98),
(49, 'Vinícius', 'Ativo', 'Cuiabá', 27),
(50, 'Camila', 'Suspenso', 'Brasília', 21),
(51, 'Thiago', 'Pendente', 'Florianópolis', 74),
(52, 'Amanda', 'Inativo', 'Rio Branco', 55),
(53, 'Eduardo', 'Ativo', 'Rio de Janeiro', 71),
(54, 'Mariana', 'Bloqueado', 'Curitiba', 99),
(55, 'Igor', 'Liberado', 'Manaus', 24),
(56, 'Giovani', 'Suspenso', 'Goiânia', 96),
(57, 'Nicole', 'Suspenso', 'Teresina', 26),
(58, 'Carlos', 'Pendente', 'Maceió', 78),
(59, 'Valéria', 'Suspenso', 'Vitória', 18),
(60, 'Bernardo', 'Liberado', 'Cuiabá', 16),
(61, 'Elisa', 'Ativo', 'Palmas', 84),
(62, 'Matias', 'Suspenso', 'Boa Vista', 65),
(63, 'Raul', 'Ativo', 'Porto Velho', 11),
(64, 'Luan', 'Pendente', 'Porto Alegre', 39),
(65, 'Larissa', 'Pendente', 'Salvador', 94),
(66, 'Arthur', 'Bloqueado', 'Maceió', 12),
(67, 'Gabriela', 'Pendente', 'Porto Alegre', 22),
(68, 'Vitor', 'Ativo', 'Recife', 11),
(69, 'Emilly', 'Suspenso', 'Belém', 21),
(70, 'Felipe', 'Bloqueado', 'Rio de Janeiro', 16),
(71, 'Emanuel', 'Ativo', 'Boa Vista', 14),
(72, 'Vanessa', 'Ativo', 'Curitiba', 55),
(73, 'Gustavo', 'Suspenso', 'Palmas', 29),
(74, 'Clarissa', 'Bloqueado', 'Natal', 67),
(75, 'Cristiano', 'Inativo', 'Teresina', 2),
(76, 'Beatriz', 'Liberado', 'Boa Vista', 90),
(77, 'Fabiano', 'Inativo', 'Porto Alegre', 96),
(78, 'Fernanda', 'Pendente', 'Campo Grande', 4),
(79, 'Tiago', 'Ativo', 'Brasília', 69),
(80, 'Ester', 'Inativo', 'Vitória', 26),
(81, 'Antonio', 'Bloqueado', 'Rio de Janeiro', 26),
(82, 'Daniela', 'Suspenso', 'Brasília', 37),
(83, 'Daniel', 'Bloqueado', 'Brasília', 85),
(84, 'Aline', 'Liberado', 'Boa Vista', 77),
(85, 'Marcos', 'Ativo', 'Porto Alegre', 98),
(86, 'Renata', 'Liberado', 'Campo Grande', 76),
(87, 'Fernando', 'Inativo', 'Florianópolis', 87),
(88, 'Juliana', 'Ativo', 'São Luís', 11),
(89, 'Douglas', 'Ativo', 'São Luís', 94),
(90, 'Patrícia', 'Suspenso', 'Porto Alegre', 49),
(91, 'Ronaldo', 'Ativo', 'São Luís', 76),
(92, 'Mariane', 'Pendente', 'Brasília', 59),
(93, 'Eduardo', 'Inativo', 'Teresina', 98),
(94, 'Bruna', 'Bloqueado', 'Palmas', 69),
(95, 'Ricardo', 'Ativo', 'Florianópolis', 75),
(96, 'Gabrielle', 'Liberado', 'Recife', 79),
(97, 'Igor', 'Pendente', 'São Luís', 16),
(98, 'Jessica', 'Inativo', 'São Paulo', 25),
(99, 'Thiago', 'Liberado', 'Curitiba', 58),
(100, 'Fernanda', 'Inativo', 'Goiânia', 17);

SELECT * FROM vendas.fornecedor;
