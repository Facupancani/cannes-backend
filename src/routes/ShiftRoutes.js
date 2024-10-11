const express = require('express');
const router = express.Router();
const shiftController = require("../controllers/shiftController");

// Crear un shift
router.post('/shift', shiftController.createShift);


// Obtener un shift por ID
router.get('/shift/:id', shiftController.getShiftById);

// Borrar un shift por ID
router.delete('/shift/:id', shiftController.deleteShift)


module.exports = router