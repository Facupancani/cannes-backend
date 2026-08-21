const express = require('express');
const router = express.Router();
const overtimePresetController = require('../controllers/overtimePresetController');

router.get('/overtime_preset', overtimePresetController.getAllOvertimePresets);

router.post('/overtime_preset', overtimePresetController.addOvertimePreset);

router.put('/overtime_preset/:id', overtimePresetController.updateOvertimePresetById);

router.delete('/overtime_preset/:id', overtimePresetController.deleteOvertimePreset);

module.exports = router;
