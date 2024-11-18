const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');  // Importa la conexión

const Consumition = sequelize.define('consumition', {
    id:{
        type: DataTypes.INTEGER,
        allowNull: false,
        autoIncrement: true,
        primaryKey: true
    },
    shift_id:{
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    type: {
        type: DataTypes.STRING(100),
        allowNull: false
    },
    description:{
        type: DataTypes.STRING(100),
        allowNull: false,
    },
    price:{
        type: DataTypes.INTEGER,
        allowNull: false,
    }

}, {
    tableName: 'consumition',  // Nombre de la tabla en la base de datos
    timestamps: false         // Si no tienes campos createdAt y updatedAt
  })

module.exports = Consumition