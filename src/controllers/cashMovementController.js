const sequelize = require('../config/database')
const CashMovement = require('../models/CashMovement')

// Obtener todos los movimientos de caja
exports.getAllCashMovements = async (req, res) => {
  try {
    const cashMovements = await CashMovement.findAll({
      order: [['date', 'DESC']] // opcional: orden por fecha descendente
    })
    res.json(cashMovements)
  } catch (err) {
    res.status(500).json({ error: err.message })
  }
}

// Crear un nuevo movimiento de caja
exports.createCashMovement = async (req, res) => {
  try {
    const {
      id,
      date,
      type,
      details,
      room,
      room_price,
      consumptions, // debería venir como array de objetos [{ name, price }, ...]
      commission,
      discount,
      cash_amount,
      transfer_amount,
      total,
      conserje
    } = req.body

    const newCashMovement = await CashMovement.create({
      id,
      date,
      type,
      details,
      room,
      room_price,
      consumptions, // el modelo lo convierte a string JSON automáticamente
      commission,
      discount,
      cash_amount,
      transfer_amount,
      total,
      conserje
    })

    res.status(201).json(newCashMovement)
  } catch (err) {
    res.status(500).json({ error: err.message })
  }
}

// Obtener todos los conserjes únicos (no null) de movimientos de caja
exports.getAllConserjes = async (req, res) => {
  try {
    // Raw query o Sequelize distinct
    const [results] = await sequelize.query(
      "SELECT DISTINCT conserje FROM cash_movement WHERE conserje IS NOT NULL"
    )

    // results es un array de objetos { conserje: "Juan Pérez" }, map para simplificar
    const conserjes = results.map(row => row.conserje).filter(Boolean)

    res.json(conserjes)
  } catch (err) {
    res.status(500).json({ error: err.message })
  }
}