
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    preco REAL NOT NULL
);

CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cliente TEXT NOT NULL,
    data TEXT NOT NULL
);

CREATE TABLE itens_pedido (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    pedido_id INTEGER NOT NULL,
    produto_id INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO produtos (nome, preco) VALUES ('Café Expresso', 5.00);
INSERT INTO produtos (nome, preco) VALUES ('Capuccino', 7.00);
INSERT INTO produtos (nome, preco) VALUES ('Bolo de Chocolate', 6.50);
INSERT INTO pedidos (cliente, data) VALUES ('Ana', '2025-07-09');
INSERT INTO pedidos (cliente, data) VALUES ('Bruno', '2025-07-08');
INSERT INTO pedidos (cliente, data) VALUES ('Carla', '2025-07-07');
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade) VALUES (1, 1, 2);
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade) VALUES (1, 3, 1);
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade) VALUES (2, 2, 1);
