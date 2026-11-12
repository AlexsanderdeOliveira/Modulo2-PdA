-- Query 1
SELECT produto.nome, vendedor.nome_loja, categoria.comissao
FROM produto
JOIN categoria ON categoria.id = produto.categoria_id
JOIN vendedor ON vendedor.id = produto.vendedor_id
ORDER BY produto.nome;

-- Query 2
SELECT produto.nome, produto.preco FROM produto 
WHERE preco < 100
ORDER BY produto.preco;

-- Query 3
SELECT pedido.id, cliente.nome, pedido.criado_em
FROM pedido
JOIN cliente ON cliente.id = pedido.cliente_id
WHERE pedido.status = 'entregue'
ORDER BY pedido.criado_em;

-- Query 4
SELECT cliente.nome 
FROM cliente
LEFT JOIN pedido ON pedido.cliente_id = cliente.id
WHERE pedido.id IS NULL

-- Query 5
