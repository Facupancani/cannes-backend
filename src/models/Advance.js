const { DataTypes } = require('sequelize');
const sequelize = require('../config/database'); // Importa la conexión

const Advance = sequelize.define(
  'advance',
  {
    id: {
      type: DataTypes.BIGINT,
      allowNull: false,
      autoIncrement: true,
      primaryKey: true
    },
    user_id: {
      type: DataTypes.BIGINT,
      allowNull: false
    },
    amount: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    details: {
      type: DataTypes.STRING(100),
      allowNull: true
    },
    created_at: {
      type: DataTypes.TIME,
      allowNull: true
    }
  },
  {
    tableName: 'advance', // Nombre de la tabla en la base de datos
    timestamps: false
  }
);

module.exports = Advance;
