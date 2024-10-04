const express = require('express');
const router = express.Router();
const shiftController = require("../controllers/shiftController");

router.get('/shift/:id', shiftController.getShiftById);

router.post('/shift', shiftController.createShift);

router.delete('/shift/:id', shiftController.closeShift)


module.exports = router