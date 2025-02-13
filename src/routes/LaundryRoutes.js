const express = require('express');
const router = express.Router();
const LaundryController = require('../controllers/LaundryController');

// Obtiene todas las prendas
router.get('/laundry', LaundryController.getAllLaundryItems)



// Obtener las prendas que debe el lavadero
router.get('/laundry/pending', LaundryController.getItemsInLaundry);

// Obtiene las prendas sucias
router.get('/laundry/dirty', LaundryController.getDirtyItems)

// Obtiene las prendas sucias
router.put('/laundry/dirty', LaundryController.addDirtyItems)


// Manda los items a la lavanderia
router.put('/laundry/send', LaundryController.sendItemsToLaundry)

// Actualiza una prenda
router.put('/laundry/:id', LaundryController.updateLaundryItem)

module.exports = router;
