const express = require('express');
const router = express.Router();
const shiftController = require("../controllers/shiftController");

router.get('/shift', shiftController.getAllShifts);
router.get('/shift/:id', shiftController.getShiftById);

module.exports = router;