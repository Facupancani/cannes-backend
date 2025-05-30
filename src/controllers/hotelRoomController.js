const sequelize = require('../config/database');
const HotelRoom = require('../models/HotelRoom');
const { format, differenceInCalendarDays } = require('date-fns');
const { es } = require('date-fns/locale');

// Obtener todas las habitaciones
exports.getAllRooms = async (req, res) => {
  try {
    const rooms = await HotelRoom.findAll();
    res.json(rooms);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Obtener todas las habitaciones con sus respectivos shift
exports.getAllRoomsWithShift = async (req,res) => {
  try {
    const sqlQuery = `
    SELECT hotel_room.*, shift.room_id, shift.start, shift.finish, shift.type, shift.bar_price, shift.shift_price, shift.pending_cleaning_start, shift.cleaning_start
    FROM hotel_room
    LEFT JOIN shift ON hotel_room.current_shift_id = shift.id;
`
    const [results, metadata] = await sequelize.query(sqlQuery)
    res.json(results)

  } catch (err) {
    res.status(500).json({ error: err.message })
  }
}

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
    const { state, shift_id, room_number: newRoomNumber , pred_price, pred_time} = req.body;

    // Find the room by room_number
    const room = await HotelRoom.findOne({ where: { room_number: room_number } });

    if (room) {
      // Update the room properties conditionally
      if (newRoomNumber) room.room_number = newRoomNumber;
      if (state) room.state = state;
      if (shift_id) room.current_shift_id = shift_id;
      if (pred_price) room.pred_price = pred_price;
      if (pred_time) room.pred_time = pred_time; 

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

//Libera una habitacion del turno asociado
exports.releaseRoomShift = async (req, res) => {
  try {
    const room_number = req.params.id
    const room = await HotelRoom.findOne({ where: {room_number: room_number} })
    if (room) {
      room.current_shift_id = null
      await room.save()
      res.status(204).end()
    } else {
      res.status(404).json({ error: 'Room not found' });
    }
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
}

exports.getRoomHistory = async (req, res) => {
  const { roomNumber } = req.params;

  try {
    const sqlQuery = `
      SELECT * FROM shift
      WHERE room_id = :roomNumber
      ORDER BY start DESC
      LIMIT 3;
    `;

    const [results, metadata] = await sequelize.query(sqlQuery, {
      replacements: { roomNumber },
    });

    res.json(results);
  } catch (error) {
    console.error("Error al obtener el historial de la habitación:", error);
    res.status(500).json({ error: "Error interno al obtener el historial." });
  }
};