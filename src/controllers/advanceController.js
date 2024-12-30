const sequelize = require('../config/database');
const Advance = require('../models/Advance');

// Obtener avances
exports.getAllAdvances = async(req, res) => {
    try {
        const advances = await Advance.findAll()
        res.json(advances)
    } catch (err){
        res.status(500).json({ error: err.message })
    }

}

// Obtener ultimo avance
exports.getLastAdvance = async(req, res) => {
    try {
        const lastAdvance = await Advance.findOne({
            order: [['id', 'DESC']]
        })
        res.status(200).json(lastAdvance)
    } catch (err){
        res.status(500).json({error: err.message})
    }
}

// Obtener ID de ultimo avance
exports.getLastAdvanceId = async(req, res) => {
    try {
        const [result] = await sequelize.query(`
    SELECT AUTO_INCREMENT 
    FROM INFORMATION_SCHEMA.TABLES 
    WHERE TABLE_SCHEMA = 'cannes_db' 
    AND TABLE_NAME = 'advance';
    `);

    const nextAutoIncrementId = result[0].AUTO_INCREMENT

    res.json(nextAutoIncrementId)
    } catch(err) {
        res.status(500).json({ error: err.message })
    }
}

// Sumar la cantidad de avances de un usuario
exports.getAllAdvancesAmountByUserId = async(req,res) => {
    const user_id = req.params.id

    try {
        const [result] = await sequelize.query(
            `
            SELECT user_id, SUM(amount) AS total_amount
            FROM advance
            WHERE user_id = ${user_id}
            GROUP BY user_id;
            `
        )

        res.json(Number(result[0].total_amount))
    }
    catch (err) {
        res.status(500).json({ error: err.message })
    }

}

// Crear avance
exports.createAdvance = async(req, res) => {
    try {
        const { user_id, amount, details } = req.body
        const newAdvance = Advance.create({user_id, amount, details})
        res.status(201).json(newAdvance)
    } catch (err) {
        res.status(500).json({ error: err.message })
    }

}