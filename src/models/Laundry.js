const { DataTypes } = require('sequelize');
const sequelize = require('../config/database'); // Importa la conexión

const Laundry = sequelize.define(
  'laundry',
  {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      autoIncrement: true,
      primaryKey: true
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false
    },
    deposit: {
      type: DataTypes.STRING,
      allowNull: false
    },
    amount: {
      type: DataTypes.INTEGER,
      allowNull: false,
      defaultValue: 0
    }
  },
  {
    tableName: 'laundry', // Nombre de la tabla en la base de datos
    timestamps: false // Si no tienes campos createdAt y updatedAt
  }
);

module.exports = Laundry;
