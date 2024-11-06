const express = require('express');
const router = express.Router();
const advanceController = require('../controllers/advanceController');

// Obtener avances
router.get('/advance', advanceController.getAllAdvances)

// Obtener ultimo avance
router.get('/advance/last', advanceController.getLastAdvance)

// Obtener ID de ultimo avance
router.get('/advance/last/id', advanceController.getLastAdvanceId)

// Crear avance
router.post('/advance', advanceController.createAdvance)

module.exports = router