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
    const room = await HotelRoom.findByPk(req.params.id);
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
    const { numero, estado, precio } = req.body;
    const newRoom = await HotelRoom.create({ numero, estado, precio });
    res.status(201).json(newRoom);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Actualizar una habitación
exports.updateRoom = async (req, res) => {
  try {
    const { room_number, state, pred_price } = req.body;
    const room = await HotelRoom.findByPk(req.params.id);
    if (room) {
      room.room_number = room_number;
      room.state = state;
      room.pred_price = pred_price;
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
    const roomNumber = req.params.id

    const room = await HotelRoom.findOne({where: {room_number: roomNumber}})

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

// Eliminar una habitación
exports.deleteRoom = async (req, res) => {
  try {
    const room = await HotelRoom.findByPk(req.params.id);
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
