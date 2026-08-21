const Observation = require('../models/Observation');

// Obtener observaciones
exports.getAllObservations = async (req, res) => {
  try {
    const observations = await Observation.findAll();
    res.json(observations);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Obtener observacion por Shift ID
exports.getAllObservationsByShiftId = async (req, res) => {
  try {
    const id = req.params.id;
    const observation = await Observation.findAll({ where: { shift_id: id } });

    if (id) {
      res.json(observation);
    } else {
      res.status(404).json({ error: 'Observation not found' });
    }
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Crear observacion
exports.createObservation = async (req, res) => {
  try {
    const { shift_id, text } = req.body;
    const newObservation = Observation.create({ shift_id, text });
    res.status(201).json(newObservation);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
