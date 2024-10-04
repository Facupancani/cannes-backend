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

// Actualizar estado de habitacion
router.put('/hotel-rooms-state/:id', hotelRoomController.updateRoomState)

// Actualizar ID de Shift en tabla Hotel Room
router.put('/hotel-rooms-shift/:id', hotelRoomController.updateRoomShiftId)

// Eliminar una habitación
router.delete('/hotel-rooms/:id', hotelRoomController.deleteRoom);

module.exports = router;
