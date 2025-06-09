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
    start: {
        type: DataTypes.DATE,
        allowNull: false
    },
    finish: {
        type: DataTypes.DATE,
        allowNull: false
    },
    bar_price : {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    shift_price : {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    discount_price: {
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    physical_cash:{
        type: DataTypes.INTEGER,
        allowNull: true,
    },
    transfer_cash:{
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    commission_amount: {
        type: DataTypes.INTEGER,
        allowNull: false
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