const express = require('express');
const router = express.Router();
const userController = require('../controllers/UserController');

// Obtener todas las habitaciones
router.post('/users/register', userController.registerUser);
router.post('/users/login', userController.loginUser)
router.get('/users', userController.getAllUsers)

module.exports = router