const express = require('express');
const router = express.Router();
const consumitionController = require('../controllers/consumitionController');

// Obtener todas las consumiciones
router.get('/consumitions', consumitionController.getAllConsumitions);

// Obtener todos los datos sobre consumiciones (consumicion y producto)
router.get('/consumitions/with-products', consumitionController.getConsumitionsDetails)

// Crear una nueva consumicion
router.post('/consumitions', consumitionController.createConsumition);


// Obtener una consumicion por ID
router.get('/consumitions/:id', consumitionController.getConsumitionById);

// Obtener todos los datos de una consumicion por numero de habitacion (consumicion y producto)
router.get('/consumitions/with-products/:id', consumitionController.getConsumitionsDetailsByRoomId)

// Obtener comisiones por numero de turno
router.get('/commissions/:id', consumitionController.getCommissionsByShiftId)

// Actualizar una consumicion
router.put('/consumitions/:id', consumitionController.updateConsumition);

// Eliminar una consumicion
router.delete('/consumitions/:id', consumitionController.deleteConsumition);

module.exports = router;