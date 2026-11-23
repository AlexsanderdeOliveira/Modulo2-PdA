import express from 'express';

const app = express();

const alunos = [
    {id: 1, nome: 'João Leal', telefone: 21999999999, rg: 123456780},
    {id: 2, nome: 'Bruna Brozzi', telefone: 21999999988, rg: 123456781},
    {id: 3, nome: 'Alex Oliveira', telefone: 21999999977, rg: 123456782},
]

app.get('/', (req, res) => {
    res.send('Bem-vindo ao Marista LTDA!');
})

app.get('/alunos', (req, res) => {
    res.json(alunos)
})

app.listen(3000, (erro) => {
    if (erro) {
        console.log('Não consegui ligar o servidor: ', erro.mensagem);
    } else {
        console.log('Servidor do Marista LTDA rodando em http://localhost:3000');
    }
});