const express = require('express');
const router = express.Router();
const userController = require('../controllers/UserController');

// Registrar usuario
router.post('/users/register', userController.registerUser);

// Inicio de sesion de usuario
router.post('/users/login', userController.loginUser)

// Obtener todos los usuarios
router.get('/users', userController.getAllUsers)

router.post('/users/validate-password', userController.validatePassword);

module.exports = router