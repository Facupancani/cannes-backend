const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');  // Importa la conexión

const CashMovement = sequelize.define('cash_movement', {
    id:{
        type: DataTypes.BIGINT,
        allowNull: false,
        autoIncrement: true,
        primaryKey: true
    },
    room_number: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    finish: {
        type: DataTypes.TIME,
        allowNull: false
    },
    total_price : {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    physical_cash:{
        type: DataTypes.INTEGER,
        allowNull: true,
    },
    transfer_cash:{
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    created_at: {
        type: DataTypes.TIME,
        allowNull: true
    }

}, {
    tableName: 'cash_movement',  // Nombre de la tabla en la base de datos
    timestamps: false
  })

module.exports = CashMovement