const express = require('express');
const router = express.Router();
const hotelRoomController = require('../controllers/hotelRoomController');

// Obtener todas las habitaciones
router.get('/rooms', hotelRoomController.getAllRooms);

// Obtener todas las habitaciones con sus respectivos shift
router.get('/rooms/with-shift', hotelRoomController.getAllRoomsWithShift)

// Crear una nueva habitación
router.post('/rooms', hotelRoomController.createRoom);



// Obtener una habitación por ID
router.get('/rooms/:id', hotelRoomController.getRoomById);

// Actualizar una habitación
router.put('/rooms/:id', hotelRoomController.updateRoom);

// Eliminar una habitación por ID
router.delete('/rooms/:id', hotelRoomController.deleteRoom);

module.exports = router;
