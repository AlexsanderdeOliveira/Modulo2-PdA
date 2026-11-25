import express from 'express';
import { listar } from '../controllers/categoriasController.js';

export const rotasCategorias = express.Router();

rotasCategorias.get('/', listar);

//listar sem parênteses, estamos entregando a receita para o express, com parênteses, ele executaria a função na hora que o servidor liga, e passa pra rota sem pedido nenhum