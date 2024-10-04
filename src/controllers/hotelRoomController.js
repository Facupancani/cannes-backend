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

// Actualizar una habitación
exports.updateRoom = async (req, res) => {
  try {
    const { room_number, state } = req.body;
    const room = await HotelRoom.findOne({ where: {room_number: room_number} })
    if (room) {
      room.room_number = room_number;
      room.state = state;
      await room.save();
      res.json(room);
    } else {
      res.status(404).json({ error: 'Room not found' });
    }
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.updateRoomState = async (req, res) => {
  try {
    const {state} = req.body;
    const room_number = req.params.id

    const room = await HotelRoom.findOne({where: {room_number: room_number}})

    if (room) {
      room.state = state;
      await room.save()
      res.json(room)
    } else {
      res.status(404).json({error: 'Room not found'})
    }
  } catch (err) {
    res.status(500).json({error: err.message})
  }
}

exports.updateRoomShiftId = async (req, res) => {
  try {
      const room_number = req.params.id
      const {shift_id} = req.body

      const room = await HotelRoom.findOne({ where: {room_number: room_number} })

      if (room){
        room.current_shift_id = shift_id
        await room.save()
        res.json(room)
      } else {
        res.status(404).json({error: 'Room not found'})
      }
  } catch (err) {
    res.status(500).json({error: err.message})
  }
}

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
