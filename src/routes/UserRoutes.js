const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController');

// Registrar usuario
router.post('/users/register', userController.registerUser);

// Inicio de sesion de usuario
router.post('/users/login', userController.loginUser);

// Obtener todos los usuarios
router.get('/users', userController.getAllUsers);

// Obtener usuario por nombre
router.get('/users/name/:name', userController.getUserByName);

// Actualizar usuario
router.put('/users/:id', userController.updateUser);

// Eliminar usuario
router.delete('/users/:id', userController.deleteUser);

router.post('/users/validate-password', userController.validatePassword);

module.exports = router;
