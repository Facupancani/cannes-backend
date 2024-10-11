const HotelRoom = require('../models/HotelRoom');

// Obtener todas las habitaciones
exports.getAllRooms = async (req, res) => {
  try {
    const rooms = await HotelRoom.findAll();
    res.json(rooms);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Obtener una habitación por ID
exports.getRoomById = async (req, res) => {
  try {
    const room_number = req.params.id
    const room = await HotelRoom.findOne({ where: {room_number: room_number} })
    
    if (room) {
      res.json(room);
    } else {
      res.status(404).json({ error: 'Room not found' });
    }
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Crear una nueva habitación
exports.createRoom = async (req, res) => {
  try {
    const { room_number, state } = req.body;
    const newRoom = await HotelRoom.create({ room_number, state });
    res.status(201).json(newRoom);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Actualizar una habitacion
exports.updateRoom = async (req, res) => {
  try {
    const room_number = req.params.id; // Assuming room number is passed as a parameter
    const { state, shift_id, room_number: newRoomNumber } = req.body;

    // Find the room by room_number
    const room = await HotelRoom.findOne({ where: { room_number: room_number } });

    if (room) {
      // Update the room properties conditionally
      if (newRoomNumber) room.room_number = newRoomNumber;
      if (state) room.state = state;
      if (shift_id) room.current_shift_id = shift_id;

      // Save the updated room
      await room.save();
      res.json(room);
    } else {
      res.status(404).json({ error: 'Room not found' });
    }
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Eliminar una habitación
exports.deleteRoom = async (req, res) => {
  try {

    const room_number = req.params.id

    const room = await HotelRoom.findOne({ where: {room_number: room_number} })
    if (room) {
      await room.destroy();
      res.status(204).end();
    } else {
      res.status(404).json({ error: 'Room not found' });
    }
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
