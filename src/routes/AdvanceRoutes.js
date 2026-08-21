const express = require('express');
const router = express.Router();
const advanceController = require('../controllers/advanceController');

// Obtener avances
router.get('/advance', advanceController.getAllAdvances);

// Obtener avances con datos de usuario
router.get('/advance/with-user', advanceController.getAllAdvancesWithUser);

// Obtener ultimo avance
router.get('/advance/last', advanceController.getLastAdvance);

// Obtener ID de ultimo avance
router.get('/advance/last/id', advanceController.getLastAdvanceId);

// Sumar la cantidad de avances de un usuario
router.get('/advance/sum/:id', advanceController.getAllAdvancesAmountByUserId);

// Crear avance
router.post('/advance', advanceController.createAdvance);

// Actualizar avance
router.put('/advance/:id', advanceController.updateAdvance);

// Eliminar avance
router.delete('/advance/:id', advanceController.deleteAdvance);

module.exports = router;
