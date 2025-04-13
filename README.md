# Banco de Dados - Cafeteria do Bairro ☕

Este projeto foi desenvolvido por **Luiz Altino do Nascimento Junior** como parte da atividade prática do Módulo 3, integrando conceitos de modelagem de banco de dados com o uso de controle de versão (Git e GitHub).

## 📌 Objetivo

Criar a estrutura de um banco de dados para um sistema simples de uma cafeteria, contendo informações sobre produtos e pedidos dos clientes, utilizando SQL e versionamento com Git.

## 🧱 Estrutura do Banco de Dados

O banco de dados contém duas tabelas principais:

- **produtos**: armazena os itens vendidos na cafeteria.
- **pedidos**: registra os pedidos feitos pelos clientes, com vínculo aos produtos.

### Comandos SQL implementados

```sql
CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    preco NUMERIC(10, 2),
    descricao TEXT
);

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    data_pedido DATE,
    total NUMERIC(10, 2),
    produto_id INT REFERENCES produtos(id)
);
Dados inseridos
sql
Copiar
Editar
INSERT INTO produtos (nome, preco, descricao) VALUES
('Café Expresso', 4.50, 'Café curto e forte'),
('Cappuccino', 6.00, 'Com leite vaporizado e canela'),
('Pão de Queijo', 3.00, 'Tamanho médio');

INSERT INTO pedidos (data_pedido, total, produto_id) VALUES
('2025-04-13', 4.50, 1),
('2025-04-13', 9.00, 2),
('2025-04-13', 3.00, 3);

## 📁 Organização do Projeto
script.sql: arquivo com os comandos SQL de criação e inserção.

Versionamento completo com Git, incluindo commit inicial com mensagem descritiva.

## 🔗 Link do Repositório
Acesse o repositório no GitHub

## 🚀 Tecnologias Utilizadas
SQL (PostgreSQL)

Git e GitHub

## ✍️ Autor
Luiz Altino do Nascimento Junior
Projeto desenvolvido para fins educacionais.

---
