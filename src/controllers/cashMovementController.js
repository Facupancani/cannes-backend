const sequelize = require('../config/database');
const CashMovement = require('../models/CashMovement');

// Obtener movimientos de caja
exports.getAllCashMovements = async(req, res) => {
    try {
        const cash_movements = await CashMovement.findAll()
        res.json(cash_movements)
    } catch (err){
        res.status(500).json({ error: err.message })
    }

}


// Crear movimiento de caja
exports.createCashMovement = async(req, res) => {
    try {
        const { room_number, finish, total_price, physical_cash, transfer_cash, commission_amount } = req.body
        const newCashMovement = CashMovement.create({room_number, finish, total_price, physical_cash, transfer_cash, commission_amount})
        res.status(201).json(newCashMovement)
    } catch (err) {
        res.status(500).json({ error: err.message })
    }
}