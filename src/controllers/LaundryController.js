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

// Obtiene las prendas sucias en el lavadero (deposito 3)
exports.getDirtyItemsInLaundry = async (req, res) => {
    try {
        const dirtyItems = await Laundry.findAll({
            where: { deposit: 3 }
        })

        res.json(dirtyItems)
    } catch (err) {
        res.status(500).json({ error: err.message })
    }
}


// Envia prendas al lavadero
exports.sendItemsToLaundry = async (req, res) => {
    try {
        const items = req.body.items; // Asegúrate de que los datos enviados tienen el arreglo bajo la clave 'items'

        // Validación para asegurar que items esté definido y sea un arreglo
        if (!Array.isArray(items)) {
            return res.status(400).json({ error: 'El formato de datos es incorrecto. Se esperaba un arreglo de items.' });
        }

        // Procesa cada prenda en el arreglo
        const results = await Promise.all(items.map(async (item) => {
            const { article_id, amount, name } = item;

            // Verifica si ya existe una entrada para el artículo en el depósito 4
            const existingItem = await Laundry.findOne({
                where: { article_id, deposit: 4 },
            });

            if (existingItem) {
                // Si ya existe, actualiza la cantidad sumando el nuevo envío
                existingItem.amount += amount;
                await existingItem.save();
                return { article_id, name, status: 'actualizado', amount: existingItem.amount };
            } else {
                return res.status(500).json({ error: 'Error al enviar prendas al lavadero, el articulo no' });
            }
        }));

        return res.status(200).json({ message: 'Prendas enviadas al lavadero con éxito', details: results });
    } catch (error) {
        console.error('Error al enviar prendas al lavadero:', error);
        return res.status(500).json({ error: 'Error al enviar prendas al lavadero' });
    }
};
