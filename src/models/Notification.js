const { DataTypes } = require('sequelize');
const sequelize = require('../config/database'); // Importa la conexión

const Notification = sequelize.define(
  'notification',
  {
    id: {
      type: DataTypes.BIGINT,
      allowNull: false,
      autoIncrement: true,
      primaryKey: true
    },
    title: {
      type: DataTypes.STRING(30),
      allowNull: false
    },
    content: {
      type: DataTypes.STRING(100),
      allowNull: false
    },
    time: {
      type: DataTypes.TIME,
      allowNull: true
    }
  },
  {
    tableName: 'notification', // Nombre de la tabla en la base de datos
    timestamps: false
  }
);

module.exports = Notification;
