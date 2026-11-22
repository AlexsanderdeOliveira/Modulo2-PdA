# Modelo Normalizado: IngressoÁgil

## CLIENTE
- id (pk)
- nome
- cpf
- email

## COMPRA
- id (pk)
- data_compra
- cliente_id (FK -> CLIENTE)

## ITEM_COMPRA
- id (pk)
- compra_id (FK -> COMPRA)
- evento_id (FK -> EVENTO)
- quantidade
- valor_unitario

## EVENTO
- id (pk)
- nome
- data_evento
- valor
- espaco_id (FK -> espaco)

## ESPACO
- id (pk)
- nome
- endereco
