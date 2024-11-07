const express = require('express');
const router = express.Router();
const billController = require('../controllers/billController');

// Obtener gastos
router.get('/bill', billController.getAllBills)

// Obtener ultimo avance
router.get('/bill/last', billController.getLastBill)

// Obtener ID de ultimo avance
router.get('/bill/last/id', billController.getLastBillId)

// Crear avance
router.post('/bill', billController.createBill)

module.exports = router