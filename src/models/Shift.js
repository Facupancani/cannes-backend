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
    type:{
        type: DataTypes.STRING,
        allowNull: false,
    }

})