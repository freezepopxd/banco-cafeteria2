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

INSERT INTO produtos (nome, preco, descricao) VALUES
('Café Expresso', 4.50, 'Café curto e forte'),
('Cappuccino', 6.00, 'Com leite vaporizado e canela'),
('Pão de Queijo', 3.00, 'Tamanho médio');

INSERT INTO pedidos (data_pedido, total, produto_id) VALUES
('2025-04-13', 4.50, 1),
('2025-04-13', 9.00, 2),
('2025-04-13', 3.00, 3);
