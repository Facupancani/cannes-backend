const express = require('express');
const router = express.Router();
const billController = require('../controllers/billController');

// Obtener gastos
router.get('/bill', billController.getAllBills)

// Obtener ultimo gasto
router.get('/bill/last', billController.getLastBill)

// Obtener ID de ultimo gasto
router.get('/bill/last/id', billController.getLastBillId)

// Crear gasto
router.post('/bill', billController.createBill)

// Actualizar gasto
router.put('/bill/:id', billController.updateBill)

// Eliminar gasto
router.delete('/bill/:id', billController.deleteBill)

module.exports = router