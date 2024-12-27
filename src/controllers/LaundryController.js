const sequelize = require('../config/database');
const Laundry = require('../models/Laundry');
const { Op } = require('sequelize');

// Obtiene prendas en el lavadero
exports.getItemsInLaundry = async (req, res) => {
    try {
        const itemsInLaundry = await Laundry.findAll({
            where: { deposit: "in_laundry" }
        });
        res.json(itemsInLaundry);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
};

// Obtiene las prendas sucias  
exports.getDirtyItems = async (req, res) => {
    try {
        const dirtyItems = await Laundry.findAll({
            where: { deposit: "dirty" }
        })

        res.json(dirtyItems)
    } catch (err) {
        res.status(500).json({ error: err.message })
    }
}

// Agrega prendas sucias
exports.addDirtyItems = async (req, res) => {
    const dirtyItems = req.body.items;

    const transaction = await Laundry.sequelize.transaction();
    try {
        // 1. Extraer los nombres de los items
        const itemNames = dirtyItems.map(item => item.name);

        // 2. Obtener todos los items "dirty" y "clean" en una sola consulta
        const allItems = await Laundry.findAll({
            where: {
                name: { [Op.in]: itemNames },
                deposit: { [Op.in]: ["dirty", "clean"] }
            },
            transaction,
        });

        // 3. Mapear los items por nombre y depósito
        const itemMap = allItems.reduce((map, item) => {
            map[`${item.name}_${item.deposit}`] = item;
            return map;
        }, {});

        // 4. Actualizar las cantidades
        dirtyItems.forEach(item => {
            const { name, dirty } = item;

            // Actualizar los "dirty"
            const dirtyItem = itemMap[`${name}_dirty`];
            if (dirtyItem) {
                dirtyItem.amount += dirty;
            }

            // Actualizar los "clean"
            const cleanItem = itemMap[`${name}_clean`];
            if (cleanItem) {
                cleanItem.amount -= dirty;
            }
        });

        // 5. Guardar todos los cambios en la base de datos
        await Promise.all(allItems.map(item => item.save({ transaction })));

        // Confirmar transacción
        await transaction.commit();
        res.status(200).json({ message: "Dirty items updated successfully" });
    } catch (err) {
        // Revertir transacción en caso de error
        await transaction.rollback();
        res.status(500).json({ error: err.message });
    }
};

/**
 * Envia las prendas al lavadero
 * Aumenta la cantidad de prendas limpias segun received,
 * disminuye la cantidad de prendas sucias segun sent
 * y setea la cantidad de prendas en el lavadero segun la diferencia entre 
 * recibido y enviado.
 * 
 * item se compone de: 
 * name: nombre del item
 * sent: cantidad de prendas sucias enviadas al lavadero
 * receive: cantidad de prendas limpias recibidas del lavadero
 * pending: cantidad de prendas en el lavadero
 * 
 */
exports.sendItemsToLaundry = async (req, res) => {
    const laundryItems = req.body.items;

    try {
        // Itera sobre cada prenda en el lavadero

        for (const item of laundryItems) {

            const { name, pending, sent, receive } = item;

            // Resta las prendas sucias que se enviaron al lavadero
            const dirtyItem = await Laundry.findOne({
                where: { name, deposit: "dirty" }
            });
            dirtyItem.amount -= sent;
            await dirtyItem.save();


            // Recibe los items limpios
            const cleanItem = await Laundry.findOne({
                where: { name, deposit: "clean" }
            });
            cleanItem.amount += receive;
            await cleanItem.save();


            // Setea los items en el lavadero segun los recibidos y enviados
            const laundryItem = await Laundry.findOne({
                where: { name, deposit: "in_laundry" }
            });
            laundryItem.amount = pending;
            await laundryItem.save();
        }
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
}
