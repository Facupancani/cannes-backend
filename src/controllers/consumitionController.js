const sequelize = require('../config/database');
const { Sequelize } = require('sequelize')
const Consumition = require('../models/Consumition');
const Product = require('../models/Product')

// Obtener todas las consumiciones
exports.getAllConsumitions = async (req, res) => {
  try {
    const consumitions = await Consumition.findAll();
    res.json(consumitions);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Obtener una consumicion por ID
exports.getConsumitionById = async (req, res) => {
  try {
    const consumition = await Consumition.findByPk(req.params.id);
    if (consumition) {
      res.json(consumition);
    } else {
      res.status(404).json({ error: 'Consumition not found' });
    }
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Obtener todos los datos sobre consumiciones (consumicion y producto)
exports.getConsumitionsDetails = async(req, res) => {
  try {
    const sqlQuery = `
    SELECT
    c.id,
    c.shift_id,
    c.amount,
    p.name,
    p.price
  FROM 
    consumition c
  JOIN 
    product p ON c.product_id = p.id
  `
    const [results, metadata] = await sequelize.query(sqlQuery)

    if (results) {
      res.json(results)
    } else {
      res.status(404).json({ error: 'Consumition details not found' })
    }


  } catch (error) {
    res.status(500).json({ error: error.message })
  }

}

// Obtener todos los datos de una consumicion por numero de habitacion (consumicion y producto)
exports.getConsumitionsDetailsByRoomId = async(req, res) => {

  const room_id = req.params.id

  try {
    const sqlQuery = `
    SELECT
    c.id,
    c.shift_id,
    c.amount,
    p.name,
    p.price
  FROM 
    consumition c
  JOIN 
    product p ON c.product_id = p.id
  WHERE
  c.shift_id = ${room_id}
  `
    const [results, metadata] = await sequelize.query(sqlQuery)

    if (results) {
      res.json(results)
    } else {
      res.status(404).json({ error: 'Consumition not found' })
    }

  } catch (error) {
    res.status(500).json({ error: error.message })
  }

}

// Crear una nueva consumicion
exports.createConsumition = async (req, res) => {
  try {
    const { shift_id , product_id, amount } = req.body;
    const newConsumition = await Consumition.create({ shift_id, product_id, amount });
    res.status(201).json(newConsumition);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Actualizar una consumicion
exports.updateConsumition = async (req, res) => {
  try {
    const { shift_id, product_id, amount } = req.body;
    const consumition = await Consumition.findByPk(req.params.id);
    if (consumition) {
      consumition.shift_id = shift_id;
      consumition.product_id = product_id;
      consumition.amount = amount;
      await consumition.save();
      res.json(consumition);
    } else {
      res.status(404).json({ error: 'Consumition not found' });
    }
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Eliminar una consumicion
exports.deleteConsumition = async (req, res) => {
  try {
    const consumition = await Consumition.findByPk(req.params.id);
    if (consumition) {
      await consumition.destroy();
      res.status(204).end();
    } else {
      res.status(404).json({ error: 'Consumition not found' });
    }
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
