const sequelize = require('../config/database');
const CashMovement = require('../models/CashMovement');

// Obtener todos los movimientos de caja
exports.getAllCashMovements = async (req, res) => {
  try {
    const cashMovements = await CashMovement.findAll({
      order: [['date', 'DESC']] // opcional: orden por fecha descendente
    });
    res.json(cashMovements);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Crear un nuevo movimiento de caja
exports.createCashMovement = async (req, res) => {
  try {
    const {
      date,
      type,
      details,
      room,
      room_price,
      consumptions,
      commission,
      discount,
      cash_amount,
      transfer_amount,
      total,
      conserje
    } = req.body;

    // Validar que consumptions sea null o un array
    let safeConsumptions = null;
    if (consumptions !== undefined && consumptions !== null) {
      if (!Array.isArray(consumptions)) {
        return res.status(400).json({ error: 'El campo consumptions debe ser un array o null' });
      }
      safeConsumptions = consumptions.length > 0 ? consumptions : null;
    }

    const newCashMovement = await CashMovement.create({
      date,
      type,
      details,
      room,
      room_price,
      consumptions: safeConsumptions,
      commission,
      discount,
      cash_amount,
      transfer_amount,
      total,
      conserje
    });

    res.status(201).json(newCashMovement);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Obtener todos los conserjes únicos (no null) de movimientos de caja
exports.getAllConserjes = async (req, res) => {
  try {
    // Raw query o Sequelize distinct
    const [results] = await sequelize.query(
      'SELECT DISTINCT conserje FROM cash_movement WHERE conserje IS NOT NULL'
    );

    // results es un array de objetos { conserje: "Juan Pérez" }, map para simplificar
    const conserjes = results.map((row) => row.conserje).filter(Boolean);

    res.json(conserjes);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
