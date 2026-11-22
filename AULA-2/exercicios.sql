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
SELECT status, COUNT(*) AS pedidos
FROM pedido
GROUP BY status
ORDER BY status;

-- Query 6
SELECT pedido_id, SUM(quantidade * preco_unitario) AS total
FROM item_pedido
GROUP BY pedido_id
ORDER BY total DESC, pedido_id;

-- Query 7
SELECT vendedor.nome_loja, SUM(item_pedido.quantidade * item_pedido.preco_unitario) AS faturamento
FROM item_pedido
JOIN pedido ON pedido.id = item_pedido.pedido_id
JOIN produto ON produto.id = item_pedido.produto_id
JOIN vendedor ON vendedor.id = produto.vendedor_id
WHERE pedido.status = 'entregue'
GROUP BY vendedor.nome_loja
ORDER BY faturamento DESC;

-- Query 8
SELECT categoria.nome, ROUND(SUM(item_pedido.quantidade * item_pedido.preco_unitario * categoria.comissao) / 100.0, 2) AS comissao_da_plataforma
FROM item_pedido
JOIN pedido ON pedido.id = item_pedido.pedido_id
JOIN produto ON produto.id = item_pedido.produto_id
JOIN categoria ON categoria.id = produto.categoria_id
WHERE pedido.status = 'entregue'
GROUP BY categoria.nome
ORDER BY categoria.nome;


-- Extra
SELECT produto.nome
FROM produto
LEFT JOIN item_pedido ON item_pedido.produto_id = produto.id
WHERE item_pedido.pedido_id IS NULL;