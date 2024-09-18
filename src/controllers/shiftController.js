const shift = require('../models/Shift')

exports.getShiftById = async (req, res) => {
    try {
        const currentShift = shift.findByPk(req.params.id);
        if (currentShift) {
            res.json(currentShift);
        } else {
            res.status(404).json({ error: 'Shift not found' });
        }
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
}