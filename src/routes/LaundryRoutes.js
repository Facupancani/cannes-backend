const express = require('express');
const router = express.Router();
const LaundryController = require('../controllers/LaundryController');

// Obtener las prendas que debe el lavadero
router.get('/laundry/pending', LaundryController.getItemsInLaundry);

// Obtiene las prendas sucias
router.get('/laundry/dirty', LaundryController.getDirtyItems)

// Envia prendas al lavadero
router.put('/laundry/send', LaundryController.sendItemsToLaundry);

module.exports = router;
