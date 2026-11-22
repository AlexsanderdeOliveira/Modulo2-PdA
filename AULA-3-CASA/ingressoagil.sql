CREATE TABLE cliente (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    cpf TEXT UNIQUE,
    email TEXT UNIQUE
);

CREATE TABLE espaco (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    endereco TEXT NOT NULL
);

CREATE TABLE evento (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    data_evento DATETIME NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    espaco_id INTEGER NOT NULL REFERENCES espaco (id)
);

CREATE TABLE compra (
    id INTEGER PRIMARY KEY,
    data_compra DATETIME NOT NULL,
    cliente_id INTEGER NOT NULL REFERENCES cliente (id)
);

CREATE TABLE item_compra (
    id INTEGER PRIMARY KEY,
    compra_id INTEGER NOT NULL REFERENCES compra (id),
    evento_id INTEGER NOT NULL REFERENCES evento (id),
    quantidade INTEGER NOT NULL,
    valor_unitario DECIMAL(10, 2) NOT NULL
);

INSERT INTO cliente (id, nome, cpf, email) VALUES
    (1, 'Joana Reis', '111.111.111-11', 'joana@email.com'),
    (2, 'Caio Melo', '222.222.222-22', 'caio@email.com'),
    (3, 'Lia Santos', '333.333.333-33', 'lia@email.com');

INSERT INTO espaco (id, nome, endereco) VALUES
    (1, 'Galpão Arte Viva', 'Rua das Flores, 100'),
    (2, 'Quadra do Samba', 'Av. Central, 50');

INSERT INTO evento (id, nome, data_evento, valor, espaco_id) VALUES
    (1, 'Slam das Minas', '2026-12-05', 20, 1),
    (2, 'Batalha da Estação', '2026-12-12', 15, 1),
    (3, 'Roda de Samba de Fim de Ano', '2026-12-20', 30, 2);

INSERT INTO compra (id, data_compra, cliente_id) VALUES
    (1, '2026-11-20', 1),
    (2, '2026-11-21', 2),
    (3, '2026-11-25', 1),
    (4, '2026-11-26', 3);

INSERT INTO item_compra (id, compra_id, evento_id, quantidade, valor_unitario) VALUES
    (1, 1, 1, 2, 20),
    (2, 1, 2, 1, 15),
    (3, 2, 3, 1, 25),
    (4, 3, 3, 2, 30),
    (5, 4, 1, 1, 20);