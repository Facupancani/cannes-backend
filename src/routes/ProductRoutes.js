const express = require('express');
const router = express.Router();
const productController = require('../controllers/productController');

// Obtener todos los productos
router.get('/product', productController.getAllProducts);

// Obtener todas los nombres de los productos
router.get('/product/with-names', productController.getAllProductNames);

// Obtener un producto por ID
router.get('/product/:id', productController.getProductById);

// Añadir producto
router.post('/product', productController.addProduct);

// Actualizar un producto por ID
router.put('/product/:id', productController.updateProductById);

// Obtener un producto por deposito
router.get('/product/deposit/:id', productController.getAllProductsFromDeposit);

// Eliminar producto
router.delete('/product/:id', productController.deleteProduct);

module.exports = router;
