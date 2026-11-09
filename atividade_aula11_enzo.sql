-- ATIVIDADE AULA 11 - BANCO DE DADOS
-- SENAI - LOJA SENAI
-- Nome: Enzo

USE loja_senai;


-- 1. INNER JOIN

SELECT
    c.nome AS cliente,
    p.nome AS produto,
    pe.quantidade,
    pe.data_pedido
FROM pedido AS pe
INNER JOIN cliente AS c
    ON pe.id_cliente = c.id_cliente
INNER JOIN produto AS p
    ON pe.id_produto = p.id_produto
ORDER BY pe.id_pedido;


-- 2. UPDATE

UPDATE produto
SET preco = 49.90
WHERE id_produto = 2;


-- Conferir preco

SELECT id_produto, nome, preco
FROM produto
WHERE id_produto = 2;


-- 3. Teste de chave estrangeira

INSERT INTO pedido (
    id_pedido,
    id_cliente,
    id_produto,
    quantidade,
    data_pedido
)
VALUES (
    99,
    999,
    1,
    1,
    CURDATE()
);


-- 4. Criar usuario

-- Substituir pela senha temporaria ao executar
-- Nao colocar senha real no arquivo entregue

CREATE USER 'operador_enzo'@'localhost'
IDENTIFIED BY 'Enzo@2026#Aula11';


-- Conceder permissoes

GRANT SELECT, INSERT
ON loja_senai.*
TO 'operador_enzo'@'localhost';


-- Verificar permissoes

SHOW GRANTS FOR 'operador_enzo'@'localhost';


-- Revogar INSERT

REVOKE INSERT
ON loja_senai.*
FROM 'operador_enzo'@'localhost';


-- Verificar permissoes novamente

SHOW GRANTS FOR 'operador_enzo'@'localhost';


-- 5. Criar indice

CREATE INDEX idx_produto_nome
ON produto(nome);


-- Verificar indice

SHOW INDEX FROM produto;


-- 6. Buscar Mouse USB

SELECT *
FROM produto
WHERE nome = 'Mouse USB';


-- 7. EXPLAIN

EXPLAIN
SELECT *
FROM produto
WHERE nome = 'Mouse USB';