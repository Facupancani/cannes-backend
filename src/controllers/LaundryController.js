const sequelize = require('../config/database');
const Laundry = require('../models/Laundry');

// Obtiene prendas en el lavadero
exports.getItemsInLaundry = async (req, res) => {
    try {
        const itemsInLaundry = await Laundry.findAll({
            where: { deposit: 4 }
        });
        res.json(itemsInLaundry);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
};
