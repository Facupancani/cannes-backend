const sequelize = require('../config/database');
const { Sequelize } = require('sequelize')
const Product = require('../models/Product');
const InternalConsumition = require('../models/InternalConsumition');

// Obtener todas las consumiciones internas
exports.getAllInternalConsumitions = async (req, res) => {
  try {
    const internal_consumitions = await InternalConsumition.findAll();
    res.json(internal_consumitions);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Crear una consumición interna
exports.createInternalConsumition = async (req, res) => {
  const { user_id, description, amount, price } = req.body;
  try {
    const internal_consumition = await InternalConsumition.create({
      user_id,
      description,
      amount,
      price,
      created_at: new Date()
    });
    res.json(internal_consumition);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

