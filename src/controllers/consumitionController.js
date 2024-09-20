const Consumition = require('../models/Consumition');

// Obtener todas las habitaciones
exports.getAllConsumitions = async (req, res) => {
  try {
    const consumitions = await Consumition.findAll();
    res.json(consumitions);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Obtener una habitación por ID
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

// Crear una nueva habitación
exports.createConsumition = async (req, res) => {
  try {
    const { turno_id, producto_id, cantidad } = req.body;
    const newConsumition = await Consumition.create({ turno_id, producto_id, cantidad });
    res.status(201).json(newConsumition);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Actualizar una habitación
exports.updateConsumition = async (req, res) => {
  try {
    const { turno_id, producto_id, cantidad } = req.body;
    const consumition = await Consumition.findByPk(req.params.id);
    if (room) {
      consumition.turno_id = turno_id;
      consumition.producto_id = producto_id;
      consumition.cantidad = cantidad;
      await consumition.save();
      res.json(room);
    } else {
      res.status(404).json({ error: 'Consumition not found' });
    }
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Eliminar una habitación
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
