const express = require('express');
const router = express.Router();
const observationController = require('../controllers/observationController');

// Obtener observaciones
router.get('/observation', observationController.getAllObservations)

// Crear observacion
router.post('/observation', observationController.createObservation)

// Obtener observacion por Shift ID
router.get('/observation/:id', observationController.getAllObservationsByShiftId)

module.exports = router