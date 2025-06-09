const sequelize = require('../config/database');
const OvertimePreset = require('../models/OvertimePreset');


exports.getAllOvertimePresets = async (req, res) => {
  try {
    const overtime_presets = await OvertimePreset.findAll();
    res.json(overtime_presets);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.addOvertimePreset = async (req, res) => {
    try {
        const { title, time, type, recharge, details } = req.body;
        const overtime_preset = await OvertimePreset.create({ title, time, type, recharge, details });
        res.json(overtime_preset);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
};

exports.updateOvertimePresetById = async (req, res) => {
    try {
        const id = req.params.id;
        const { title, time, type, recharge, details } = req.body; // Add other fields as needed

        const [updated] = await OvertimePreset.update(
            { title, time, type, recharge, details }, // fields to update
            { where: { id: id } }
        );

        if (updated) {
            const updatedOvertimePreset = await OvertimePreset.findByPk(id);
            res.json({ overtime_preset: updatedOvertimePreset });
        } else {
            res.status(404).json({ error: 'Overtime preset not found' });
        }
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
};

exports.deleteOvertimePreset = async (req,res) => {
    try {
        const overtime_preset = await OvertimePreset.findByPk(req.params.id);
        if (overtime_preset) {
          await overtime_preset.destroy();
          res.json(overtime_preset);
        } else {
          res.status(404).json({ error: 'Overtime preset not found' });
        }
      } catch (err) {
        res.status(500).json({ error: err.message });
      }
}