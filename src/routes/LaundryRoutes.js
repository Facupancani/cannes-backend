const express = require('express');
const router = express.Router();
const LaundryController = require('../controllers/LaundryController');

// Obtener las prendas que debe el lavadero
router.get('/laundry/pending', LaundryController.getItemsInLaundry);

// Envia prendas al lavadero
router.put('/laundry/send', LaundryController.sendItemsToLaundry);

module.exports = router;
