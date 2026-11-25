const categorias = [
    { id: 1, nome: 'eletronicos'},
    { id: 2, nome: 'livros'},
    { id: 3, nome: 'casa'},
];

export function listar(req, res) {
    res.json(categorias);
}