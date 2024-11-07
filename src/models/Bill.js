const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');  // Importa la conexión

const Bill = sequelize.define('bill', {
    id:{
        type: DataTypes.BIGINT,
        allowNull: false,
        autoIncrement: true,
        primaryKey: true
    },
    concept:{
        type: DataTypes.STRING(50),
        allowNull: false,
    },
    details:{
        type: DataTypes.STRING(50),
        allowNull: true,
    },
    amount:{
        type: DataTypes.INTEGER,
        allowNull: false,
    },
    provider: {
        type: DataTypes.STRING(50),
        allowNull: false
    },
    created_at: {
        type: DataTypes.TIME,
        allowNull: true
    }

}, {
    tableName: 'bill',  // Nombre de la tabla en la base de datos
    timestamps: false
  })

module.exports = Bill