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
        type: DataTypes.DATE,
        allowNull: false,
    },
    finish:{
        type: DataTypes.DATE,
        allowNull: false,
    },
    type:{
        type: DataTypes.STRING,
        allowNull: false,
    },
    bar_price: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    shift_price :{
        type: DataTypes.INTEGER,
        allowNull: false
    },
    total_price: {
        type: DataTypes.DECIMAL(10, 0),
        allowNull: true,  
    }

},{
    tableName: 'shift',  // Nombre de la tabla en la base de datos
    timestamps: false         // Si no tienes campos createdAt y updatedAt
  })

module.exports = Shift
