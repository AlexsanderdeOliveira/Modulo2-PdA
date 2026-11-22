import express from 'express';

//Criando o servidor
const app = express();

app.get('/', (req, res) => {
    res.send('Bem-vindo ao IngressoÁgil! Ingressos para a cultura da sua cidade');
})

app.listen(3000, (erro) => {
    if (erro) {
        console.log('Não consegui ligar o servidor: ', erro.message);
    } else {
        console.log('Servidor do IngressoÁgil rodando em http://localhost:3000');
    }
}); 