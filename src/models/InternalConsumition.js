const { DataTypes } = require('sequelize');
const sequelize = require('../config/database'); // Importa la conexión

const InternalConsumition = sequelize.define(
  'internal_consumition',
  {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      autoIncrement: true,
      primaryKey: true
    },
    user_id: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    description: {
      type: DataTypes.STRING(200),
      allowNull: false
    },
    amount: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    price: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    created_at: {
      type: DataTypes.TIME,
      allowNull: false
    }
  },
  {
    tableName: 'internal_consumition', // Nombre de la tabla en la base de datos
    timestamps: false // Si no tienes campos createdAt y updatedAt
  }
);

module.exports = InternalConsumition;
