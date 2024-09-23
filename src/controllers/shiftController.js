const Shift = require('../models/Shift');

// Obtener todos las turnos
exports.getAllShifts = async (req, res) => {
    try {
      const shifts = await Shift.findAll();
      res.json(shifts);
    } catch (err) {
      res.status(500).json({ error: err.message });
    }
  };
  

exports.getShiftById = async (req, res) => {
    try {
        const shiftId = parseInt(req.params.id, 10);

        // Validación del ID
        if (isNaN(shiftId)) {
            return res.status(400).json({ error: 'Invalid Shift ID' });
        }

        // Buscar el turno por su ID
        const currentShift = await Shift.findByPk(shiftId);
        
        if (currentShift) {
            res.json(currentShift);
        } else {
            res.status(404).json({ error: 'Shift not found' });
        }
    } catch (err) {
        console.error('Error fetching shift:', err); // Log para debugging
        res.status(500).json({ error: 'Internal Server Error' });
    }
};
