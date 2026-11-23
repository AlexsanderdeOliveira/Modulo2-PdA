CREATE TABLE aluno (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    telefone INTEGER NOT NULL,
    rg INTEGER NOT NULL
);

INSERT INTO aluno (id, nome, telefone, rg) VALUES 
    (1, 'João Leal', 21999999999, 123456780),
    (2, 'Bruna Brozzi', 21999999988, 123456781),
    (3, 'Alex Oliveira', 21999999977, 123456782);