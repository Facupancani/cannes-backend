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
        const { room_id, start, finish, type, total_price } = req.body
        const newShift = await Shift.create({
            room_id,
            start,
            finish,
            type,
            total_price
        })

        await HotelRoom.update(
            { current_shift_id: newShift.id },
            { where: { room_number: room_id } }
        )

        res.status(201).json(newShift)
    } catch (err) {
        res.status(500).json({ error: err.message })
    }
}


// Update de un turno por ID
exports.updateShift = async (req, res) => {
    try {
        console.log('shift_id: ' +  req.params.id);
        const shift_id = req.params.id;
        const { room_id, start, finish, type, total_price } = req.body;
        

        // Verifica si se encuentra el turno
        const shift = await Shift.findOne({ where: { id: shift_id } });

        if (!shift) {
            return res.status(404).json({ error: 'Shift not found' });
        }

        // Actualiza solo los campos recibidos en el body
        if (room_id !== undefined) shift.room_id = room_id;
        if (start !== undefined) shift.start = start;
        if (finish !== undefined) shift.finish = finish;
        if (type !== undefined) shift.type = type;
        if (total_price !== undefined) shift.total_price = total_price;

        // Guarda los cambios
        await shift.save();

        // Retorna el turno actualizado
        res.status(200).json(shift);
    } catch (err) {
        console.error(err);
        res.status(500).json({ error: 'Error updating the shift' });
    }
};


// Borrar un shift por ID
exports.deleteShift = async (req, res) => {
    try {
        const shift = await Shift.findByPk(req.params.id)

        if (shift) {
            await shift.destroy()
            res.json(shift)
        } else {
            res.status(404).json({ error: 'Shift not found' })
        }
    } catch (err) {
        res.status(500).json({ error: err.message })
    }
}
