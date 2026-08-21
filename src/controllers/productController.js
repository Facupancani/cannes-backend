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
exports.getAllProductNames = async (req, res) => {
  try {
    const products = await Product.findAll({
      attributes: ['name']
    });

    res.json(products);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

exports.getAllProductsFromDeposit = async (req, res) => {
  try {
    const deposit = req.params.id;

    const products = await Product.findAll({
      where: { deposit }
    });

    res.json(products);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

exports.getProductById = async (req, res) => {
  try {
    const id = req.params.id;

    const product = await Product.findByPk(id);
    res.json(product);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.addProduct = async (req, res) => {
  try {
    const { name, price, deposit, amount } = req.body;
    const product = await Product.create({ name, price, deposit, amount });
    res.json(product);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

exports.updateProductById = async (req, res) => {
  try {
    const id = req.params.id;
    const { name, price, deposit, amount } = req.body; // Add other fields as needed

    const [updated] = await Product.update(
      { name, price, deposit, amount }, // fields to update
      { where: { id: id } }
    );

    if (updated) {
      const updatedProduct = await Product.findByPk(id);
      res.json({ product: updatedProduct });
    } else {
      res.status(404).json({ error: 'Product not found' });
    }
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Eliminar producto
exports.deleteProduct = async (req, res) => {
  try {
    const product = await Product.findByPk(req.params.id);
    if (product) {
      await product.destroy();
      res.json(product);
    } else {
      res.status(404).json({ error: 'Product not found' });
    }
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};
