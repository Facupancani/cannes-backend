const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');  // Importa la conexión

const Laundry = sequelize.define('laundry', {
    id:{
        type: DataTypes.INTEGER,
        allowNull: false,
        autoIncrement: true,
        primaryKey: true
    },
    name:{
        type: DataTypes.STRING,
        allowNull: false
    },
    deposit:{
        type: DataTypes.STRING,
        allowNull: true
    },
    amount:{
        type: DataTypes.INTEGER,
        allowNull: false
    }
},{
    tableName: 'laundry',  // Nombre de la tabla en la base de datos
    timestamps: false         // Si no tienes campos createdAt y updatedAt
  })

module.exports = Laundry