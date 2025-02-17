const sequelize = require('../config/database');
const Bill = require('../models/Bill');

// Obtener gastos
exports.getAllBills = async(req, res) => {
    try {
        const bills = await Bill.findAll()
        res.json(bills)
    } catch (err){
        res.status(500).json({ error: err.message })
    }

}

// Obtener ultimo gasto
exports.getLastBill = async(req, res) => {
    try {
        const lastBill = await Bill.findOne({
            order: [['id', 'DESC']]
        })
        res.status(200).json(lastBill)
    } catch (err){
        res.status(500).json({error: err.message})
    }
}

// Obtener ID de ultimo gasto
exports.getLastBillId = async(req, res) => {
    try {
        const [result] = await sequelize.query(`
    SELECT AUTO_INCREMENT 
    FROM INFORMATION_SCHEMA.TABLES 
    WHERE TABLE_SCHEMA = 'cannes_db' 
    AND TABLE_NAME = 'bill';
    `);

    const nextAutoIncrementId = result[0].AUTO_INCREMENT

    res.json(nextAutoIncrementId)
    } catch(err) {
        res.status(500).json({ error: err.message })
    }
}

// Crear gasto
exports.createBill = async(req, res) => {
    try {
        const { concept, details, amount, provider } = req.body
        const newBill = await Bill.create({concept, details, amount, provider})
        res.status(201).json(newBill)
    } catch (err) {
        res.status(500).json({ error: err.message })
    }

}

// Actualizar gasto
exports.updateBill = async(req,res) => {
    try {
        const id = req.params.id;
        const { concept, provider, amount, details} = req.body; // Add other fields as needed

        const [updated] = await Bill.update(
            { amount, details, concept, provider }, // fields to update
            { where: { id: id } }
        );

        if (updated) {
            const updatedBill = await Bill.findByPk(id);
            res.json(updatedBill);
        } else {
            res.status(404).json({ error: 'Bill not found' });
        }
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
}

// Eliminar gasto
exports.deleteBill = async (req, res) => {
    try {
        const bill = await Bill.findByPk(req.params.id);
        if (bill) {
          await bill.destroy();
          res.json(bill);
        } else {
          res.status(404).json({ error: 'Bill not found' });
        }
      } catch (err) {
        res.status(500).json({ error: err.message });
      }
}
