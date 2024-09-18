const express = require('express');
const router = express.Router();
const hotelRoomController = require('../controllers/hotelRoomController');

// Obtener todas las habitaciones
router.get('/hotel-rooms', hotelRoomController.getAllRooms);

// Obtener una habitación por ID
router.get('/hotel-rooms/:id', hotelRoomController.getRoomById);

// Crear una nueva habitación
router.post('/hotel-rooms', hotelRoomController.createRoom);

// Actualizar una habitación
router.put('/hotel-rooms/:id', hotelRoomController.updateRoom);

// Eliminar una habitación
router.delete('/hotel-rooms/:id', hotelRoomController.deleteRoom);

module.exports = router;
