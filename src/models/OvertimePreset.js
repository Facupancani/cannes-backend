const { DataTypes } = require('sequelize');
const sequelize = require('../config/database'); // Importa la conexión

const OvertimePreset = sequelize.define(
  'overtime_preset',
  {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      autoIncrement: true,
      primaryKey: true
    },
    title: {
      type: DataTypes.STRING(255),
      allowNull: false
    },
    time: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    type: {
      type: DataTypes.STRING(255),
      allowNull: false
    },
    recharge: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    details: {
      type: DataTypes.STRING(255),
      allowNull: false
    }
  },
  {
    tableName: 'overtime_preset', // Nombre de la tabla en la base de datos
    timestamps: false // Si no tienes campos createdAt y updatedAt
  }
);

module.exports = OvertimePreset;
