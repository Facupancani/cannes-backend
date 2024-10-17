const sequelize = require('../config/database');
const Product = require('../models/Product');

// Obtener todas los productos
exports.getAllProducts = async (req, res) => {
  try {
    const products = await Product.findAll();
    res.json(products);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Obtener todos los nombres de los productos
exports.getAllProductNames = async (req,res) => {
    try {  
        const products = await Product.findAll({
            attributes: ['name']
        })
        
        res.json(products)
    } catch (error) {
        res.status(500).json({ error: error.message})
    }
}

exports.getAllProductsFromDeposit = async(req,res) => {
    try {
        const deposit = req.params.id

        const products = await Product.findAll({
            where: {deposit}
        })

        res.json(products)
    } catch (error) {
        res.status(500).json({ error: error.message })
    }
}

exports.getProductById = async (req,res) => {
    try {
        const id = req.params.id

        const product = await Product.findByPk(id)
        res.json(product)
    } catch (err) {
        res.status(500).json({ error: err.message })
    }
}