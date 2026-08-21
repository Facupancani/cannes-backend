const express = require('express');
const router = express.Router();
const cashMovementController = require('../controllers/cashMovementController');

// Obtener movimientos de caja
router.get('/cash-movement', cashMovementController.getAllCashMovements);

// Crear movimiento de caja
router.post('/cash-movement', cashMovementController.createCashMovement);

// Obtener todos los conserjes únicos
router.get('/conserjes', cashMovementController.getAllConserjes);

module.exports = router;
