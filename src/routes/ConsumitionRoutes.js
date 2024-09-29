const express = require('express');
const router = express.Router();
const consumitionController = require('../controllers/consumitionController');

// Obtener todas las consumiciones
router.get('/consumitions', consumitionController.getAllConsumitions);

// Obtener una consumicion por ID
router.get('/consumitions/:id', consumitionController.getConsumitionById);

// Obtener detalles de consumiciones
router.get('/consumitions-details', consumitionController.getConsumitionsDetails)

// Crear una nueva consumicion
router.post('/consumitions', consumitionController.createConsumition);

// Actualizar una consumicion
router.put('/consumitions/:id', consumitionController.updateConsumition);

// Eliminar una consumicion
router.delete('/consumitions/:id', consumitionController.deleteConsumition);

module.exports = router;
