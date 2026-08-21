const sequelize = require('../config/database');
const Advance = require('../models/Advance');
const User = require('../models/User');

// Obtener avances
exports.getAllAdvances = async (req, res) => {
  try {
    const advances = await Advance.findAll();
    res.json(advances);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Obtener avances con datos de usuario
exports.getAllAdvancesWithUser = async (req, res) => {
  try {
    const sqlQuery = `
        SELECT advance.*, user.name, user.last_name, user.role
        FROM advance
        LEFT JOIN user ON advance.user_id = user.id;
    `;
    const [results, metadata] = await sequelize.query(sqlQuery);
    res.json(results);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Obtener ultimo avance
exports.getLastAdvance = async (req, res) => {
  try {
    const lastAdvance = await Advance.findOne({
      order: [['id', 'DESC']]
    });
    res.status(200).json(lastAdvance);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Obtener ID de ultimo avance
exports.getLastAdvanceId = async (req, res) => {
  try {
    const [result] = await sequelize.query(`
    SELECT AUTO_INCREMENT 
    FROM INFORMATION_SCHEMA.TABLES 
    WHERE TABLE_SCHEMA = 'cannes_db' 
    AND TABLE_NAME = 'advance';
    `);

    const nextAutoIncrementId = result[0].AUTO_INCREMENT;

    res.json(nextAutoIncrementId);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Sumar la cantidad de avances de un usuario
exports.getAllAdvancesAmountByUserId = async (req, res) => {
  const user_id = req.params.id;

  try {
    const [result] = await sequelize.query(
      `
            SELECT user_id, SUM(amount) AS total_amount
            FROM advance
            WHERE user_id = ${user_id}
            GROUP BY user_id;
            `
    );

    res.json(Number(result[0].total_amount));
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Crear avance
exports.createAdvance = async (req, res) => {
  try {
    const { user_id, amount, details } = req.body;
    const newAdvance = await Advance.create({ user_id, amount, details });
    res.status(201).json(newAdvance);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Actualizar avance

exports.updateAdvance = async (req, res) => {
  try {
    const id = req.params.id;
    const { amount, details } = req.body; // Add other fields as needed

    const [updated] = await Advance.update(
      { amount, details }, // fields to update
      { where: { id: id } }
    );

    if (updated) {
      const updatedAdvance = await Advance.findByPk(id);
      res.json({ updatedAdvance });
    } else {
      res.status(404).json({ error: 'Advance not found' });
    }
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Eliminar avance
exports.deleteAdvance = async (req, res) => {
  try {
    const advance = await Advance.findByPk(req.params.id);
    if (advance) {
      await advance.destroy();
      res.json(advance);
    } else {
      res.status(404).json({ error: 'Advance not found' });
    }
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
