# Atividade - Aula 11: Banco de Dados

## Atividade em Duplas
### Integrantes:
- Vitor Andrade Veiga da Silva
- Enzo Ferrari Lima

## Sobre a atividade

Nesta atividade, foi realizada a administração de um banco de dados de uma loja fictícia chamada Loja SENAI, utilizando o MySQL Workbench.

O objetivo foi trabalhar com consultas e alterações de dados, realizar backup, controlar permissões de usuários e criar índices, aplicando os conhecimentos estudados em Banco de Dados.

## O que foi desenvolvido

- Preparação do banco de dados `loja_senai`, com as tabelas cliente, produto e pedido.
- Verificação dos registros existentes nas tabelas.
- Realização de um backup preventivo antes de qualquer alteração.
- Utilização de INNER JOIN para relacionar as tabelas e consultar informações dos pedidos.
- Atualização do preço do produto Mouse USB de R$ 45,00 para R$ 49,90, seguida da confirmação com SELECT.
- Teste de integridade referencial por meio de uma tentativa de cadastro de pedido com um cliente inexistente, verificando o bloqueio da chave estrangeira.
- Criação do usuário `operador_vitor` e concessão das permissões SELECT e INSERT.
- Verificação dos privilégios com SHOW GRANTS e revogação da permissão INSERT utilizando REVOKE.
- Criação do índice `idx_produto_nome` na coluna nome da tabela produto.
- Verificação do índice com SHOW INDEX e análise do plano de execução utilizando EXPLAIN.

## Tecnologias utilizadas

- MySQL Workbench
- Word

## Resultados

A atividade permitiu aplicar na prática conceitos importantes de administração de banco de dados, como segurança, integridade referencial, backup, controle de permissões e otimização de consultas.

Também foram realizadas capturas de tela para comprovar os procedimentos e respostas às perguntas de reflexão propostas no exercício.

## Arquivos da atividade

- `Loja_SENAI_Base.sql`: arquivo disponibilizado para preparação do banco de dados.
- `backup_loja_senai_vitor.sql`: backup preventivo realizado durante a atividade.
- `atividade_aula11_vitor.sql`: arquivo contendo os comandos SQL utilizados.
