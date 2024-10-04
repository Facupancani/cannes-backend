const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');  // Importa la conexión

const Shift = sequelize.define('shift', {
    id:{
        type: DataTypes.INTEGER,
        allowNull: false,
        autoIncrement: true,
        primaryKey: true
    },
    room_id:{
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    start:{
        type: DataTypes.TIME,
        allowNull: false,
    },
    finish:{
        type: DataTypes.TIME,
        allowNull: false,
    },
    total_price: {
        type: DataTypes.DECIMAL(10, 0),
        allowNull: true,  
    },
    remaining_time: {
        type: DataTypes.TIME(0),
        allowNull: true, 
    },
    type:{
        type: DataTypes.STRING,
        allowNull: false,
    }

},{
    tableName: 'shift',  // Nombre de la tabla en la base de datos
    timestamps: false         // Si no tienes campos createdAt y updatedAt
  })

module.exports = Shift