const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');  // Importa la conexión

const User = sequelize.define('user', {
    id:{
        type: DataTypes.INTEGER,
        allowNull: false,
        autoIncrement: true,
        primaryKey: true
    },
    name:{
        type: DataTypes.STRING(100),
        allowNull: false,
    },
    last_name:{
        type: DataTypes.STRING(100),
        allowNull: false,
    },
    role:{
        type: DataTypes.STRING(100),
        allowNull: false,
    },
    password:{
        type: DataTypes.STRING(100),
        allowNull: false,
    },
    fingerprint: {
        type: DataTypes.INTEGER,
        allowNull: true
    }

}, {
    tableName: 'user',  // Nombre de la tabla en la base de datos
    timestamps: false         // Si no tienes campos createdAt y updatedAt
  })

module.exports = User