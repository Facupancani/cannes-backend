const { DataTypes } = require('sequelize');
const sequelize = require('../config/database'); // Importa la conexión

const Observation = sequelize.define(
  'observation',
  {
    id: {
      type: DataTypes.BIGINT,
      allowNull: false,
      autoIncrement: true,
      primaryKey: true
    },
    shift_id: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    text: {
      type: DataTypes.STRING(50),
      allowNull: false
    }
  },
  {
    tableName: 'observation', // Nombre de la tabla en la base de datos
    timestamps: false
  }
);

module.exports = Observation;
