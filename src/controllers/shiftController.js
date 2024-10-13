const HotelRoom = require('../models/HotelRoom');
const Shift = require('../models/Shift');

// Obtener turno por ID
exports.getShiftById = async (req, res) => {
    try {
        const shift_id = req.params.id

        const currentShift = await Shift.findByPk(shift_id);
        if (currentShift) {
            res.json(currentShift);
        } else {
            res.status(404).json({ error: 'Shift not found' });
        }
    } catch (err) {
        console.error('Error fetching shift:', err); // Log para debugging
        res.status(500).json({ error: 'Internal Server Error' });
    }
}

// Crear un turno
exports.createShift = async (req, res) => {
    try {
        const { room_id, start, finish, type, total_price, remaining_time } = req.body
        const newShift = await Shift.create({
            room_id, 
            start, 
            finish, 
            type, 
            total_price, 
            remaining_time})

            await HotelRoom.update(
                {current_shift_id: newShift.id},
                {where: { room_number: room_id }}
            )

        res.status(201).json(newShift)
    } catch (err) {
        res.status(500).json( {error: err.message} )
    }
}


// Borrar un shift por ID
exports.deleteShift = async (req, res) => {
    try {
        const shift = await Shift.findByPk(req.params.id)

        if (shift) {
            await shift.destroy()
            res.json(shift)
        } else {
            res.status(404).json({error: 'Shift not found'})
        }
    } catch (err) {
        res.status(500).json( { error: err.message } )
    }
}
