const { DataTypes } = require('sequelize');
const sequelize = require('../config/database'); // Importa la conexión

const Product = sequelize.define(
  'product',
  {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      autoIncrement: true,
      primaryKey: true
    },
    name: {
      type: DataTypes.STRING(50),
      allowNull: false
    },
    price: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    deposit: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    amount: {
      type: DataTypes.INTEGER,
      allowNull: false
    }
  },
  {
    tableName: 'product', // Nombre de la tabla en la base de datos
    timestamps: false // Si no tienes campos createdAt y updatedAt
  }
);

module.exports = Product;
