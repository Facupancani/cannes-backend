const express = require('express');
const router = express.Router();
const internalConsumitionController = require('../controllers/internalConsumitionController');

// Obtener todas las consumiciones internas
router.get('/internal-consumitions', internalConsumitionController.getAllInternalConsumitions);

// Crear una consumición interna
router.post('/internal-consumitions', internalConsumitionController.createInternalConsumition);

module.exports = router;
