const sequelize = require('../config/database');
const Notification = require('../models/Notification');

// Obtener todas las notificaciones
exports.getAllNotifications = async(req, res) => {
    try {
        const notifications = await Notification.findAll()
        res.json(notifications)
    } catch (err){
        res.status(500).json({ error: err.message })
    }
}

// Obtener notificacion por ID
exports.getNotificationById = async(req, res) => {
    try {
        const id = req.params.id
        const notification = await Notification.findOne({where: {id: id}})

        if (notification) {
            res.json(notification)
        } 
        else {
            res.status(404).json({error: "Notification not found"})
        } 
    } catch (err) {
        res.status(500).json({error: err.message})
    }
}

// Crear notificacion
exports.createNotification = async(req, res) => {
    try {
        const { title, content } = req.body
        const created = await Notification.create({ title, content });
        const newNotification = await Notification.findByPk(created.id);
        
        res.status(201).json(newNotification)
    } catch (err) {
        res.status(500).json({ error: err.message })
    }
}

// Eliminar notificacion por ID
exports.deleteNotification = async(req, res) => {
    try {
        const id = req.params.id
        const notification = await Notification.destroy({where: {id: id}})

        if (notification) {
            res.status(204).send()
        } 
        else {
            res.status(404).json({error: "Notification not found"})
        } 
    } catch (err) {
        res.status(500).json({error: err.message})
    }
}

// Actualizar notificacion por ID
exports.updateNotification = async(req, res) => {
    try {
        const id = req.params.id
        const { title, content } = req.body
        const notification = await Notification.update({title, content}, {where: {id: id}})

        if (notification) {
            res.status(204).send()
        } 
        else {
            res.status(404).json({error: "Notification not found"})
        } 
    } catch (err) {
        res.status(500).json({error: err.message})
    }
}

