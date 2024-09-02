CREATE SCHEMA IF NOT EXISTS vendas;

CREATE TABLE IF NOT EXISTS vendas.usuarios (
    codigo_usuario serial PRIMARY KEY,
    nome_completo varchar(45),
    login varchar(20) NOT NULL,
    email text,
    senha text,
    data_adesao date,
    hora_adesao time
);

CREATE OR REPLACE FUNCTION insere_usuario(cod_usuario integer, email text) RETURNS text AS $$
DECLARE
    linha vendas.usuarios%ROWTYPE;
    login varchar(20);
    senha text;
BEGIN
    SELECT * INTO linha FROM vendas.usuarios WHERE codigo_usuario = cod_usuario;
    IF linha.senha IS NULL THEN
        IF email IS NOT NULL THEN
            login := substring(email FROM 1 FOR position('@' in email) - 1);
            senha := reverse(login);
            UPDATE vendas.usuarios SET login = login, senha = md5(senha) WHERE codigo_usuario = cod_usuario;
            RETURN 'A sua senha de acesso é "' || senha || '".';
        END IF;
    END IF;
    RETURN 'Sua senha de acesso atual foi mantida.';
END;
$$ LANGUAGE plpgsql;

INSERT INTO vendas.usuarios (codigo_usuario, nome_completo, login, email) VALUES (101, 'Mister Bean', 'misterbean', 'misterbean@gmail.com');
INSERT INTO vendas.usuarios (codigo_usuario, nome_completo, login, email) VALUES (150, 'Maria Fernanda', 'mariafernanda', 'mariafernanda@gmail.com');
SELECT * FROM vendas.usuarios;
SELECT insere_usuario(150, 'mariafernanda@gmail.com');
SELECT insere_usuario(101, 'misterbean@gmail.com');

CREATE TABLE IF NOT EXISTS log_alteracoes (
    data_log date,
    hora_log time,
    operacao varchar(10),
    descricao text
);

CREATE OR REPLACE FUNCTION gera_log() RETURNS trigger AS $$
DECLARE
    temp_text text;
BEGIN
    CASE TG_OP
        WHEN 'INSERT' THEN
            temp_text := 'cod_usuario = ' || NEW.codigo_usuario;
            temp_text := temp_text || ', login = ' || NEW.login;
            IF NEW.nome_completo IS NOT NULL THEN
                temp_text := temp_text || ', nome_completo = ' || NEW.nome_completo;
            END IF;
            IF NEW.data_adesao IS NOT NULL THEN
                temp_text := temp_text || ', data_adesao = ' || NEW.data_adesao;
            END IF;
            IF NEW.hora_adesao IS NOT NULL THEN
                temp_text := temp_text || ', hora_adesao = ' || NEW.hora_adesao;
            END IF;
        WHEN 'UPDATE' THEN
            temp_text := '';
            IF OLD.codigo_usuario <> NEW.codigo_usuario THEN
                temp_text := 'cod_usuario = ' || OLD.codigo_usuario || ', ';
            END IF;
            IF OLD.login <> NEW.login THEN
                temp_text := temp_text || 'login = ' || OLD.login || ', ';
            END IF;
            IF OLD.nome_completo <> NEW.nome_completo THEN
                temp_text := temp_text || 'nome_completo = ' || OLD.nome_completo || ', ';
            END IF;
            IF OLD.data_adesao <> NEW.data_adesao THEN
                temp_text := temp_text || 'data_adesao = ' || OLD.data_adesao || ', ';
            END IF;
            IF OLD.hora_adesao <> NEW.hora_adesao THEN
                temp_text := temp_text || 'hora_adesao = ' || OLD.hora_adesao || ', ';
            END IF;
            IF char_length(temp_text) > 0 THEN
                temp_text := substring(temp_text FROM 1 FOR char_length(temp_text) - 2);
            END IF;
        WHEN 'DELETE' THEN
            temp_text := 'cod_usuario = ' || OLD.codigo_usuario;
            temp_text := temp_text || ', login = ' || OLD.login;
            IF OLD.hora_adesao IS NOT NULL THEN
                temp_text := temp_text || ', hora_adesao = ' || OLD.hora_adesao;
            END IF;
        ELSE
            RAISE EXCEPTION 'Operação desconhecida: %', TG_OP;
    END
    CASE;
    INSERT INTO log_alteracoes VALUES (current_date, current_time, TG_OP, temp_text);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER log_alteracoes AFTER INSERT OR UPDATE OR DELETE ON vendas.usuarios
FOR EACH ROW
EXECUTE PROCEDURE gera_log();


DELETE FROM vendas.usuarios;
DELETE FROM log_alteracoes;


INSERT INTO vendas.usuarios (codigo_usuario, nome_completo, login, data_adesao) VALUES (100, 'Antonio Carlos da Silva', 'acsilva', current_date);
INSERT INTO vendas.usuarios (codigo_usuario, nome_completo, login) VALUES (200, 'mÁRCIA aRAÚJOa', 'Maraujo');
INSERT INTO vendas.usuarios (codigo_usuario, login, data_adesao) VALUES (300, 'fsodre', current_date);


UPDATE vendas.usuarios SET nome_completo = 'José Antônio Carlos da Silva', login = 'jacsilva' WHERE codigo_usuario = 100;
DELETE FROM vendas.usuarios WHERE codigo_usuario = 200;


SELECT * FROM log_alteracoes;

ALTER TABLE vendas.usuarios
ADD acesso_estoque BOOLEAN DEFAULT FALSE;

ALTER TABLE vendas.usuarios
ADD movimentar_produto BOOLEAN DEFAULT FALSE;

ALTER TABLE vendas.usuarios
ADD horario_movimentacao TIME;

CREATE OR REPLACE FUNCTION verificar_acesso_estoque(id_usuario INT)
RETURNS BOOLEAN AS $$
DECLARE
    tem_acesso BOOLEAN;
BEGIN
    SELECT acesso_estoque INTO tem_acesso FROM vendas.usuarios WHERE codigo_usuario = id_usuario;
    RETURN tem_acesso;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION verificar_permissao_movimentacao(id_usuario INT, cod_produto INT)
RETURNS BOOLEAN AS $$
DECLARE
    pode_movimentar BOOLEAN;
BEGIN
    SELECT movimentar_produto INTO pode_movimentar FROM vendas.usuarios WHERE codigo_usuario = id_usuario;
    IF pode_movimentar THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION verificar_horario_movimentacao(id_usuario INT, hora_movimentacao TIME)
RETURNS BOOLEAN AS $$
DECLARE
    hora_permitida TIME;
BEGIN
    SELECT horario_movimentacao INTO hora_permitida FROM vendas.usuarios WHERE codigo_usuario = id_usuario;
    IF hora_movimentacao >= hora_permitida THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END;
$$ LANGUAGE plpgsql;


SELECT verificar_acesso_estoque(101);
SELECT verificar_permissao_movimentacao(101, 73); 
SELECT verificar_horario_movimentacao(101, '14:30:00');




