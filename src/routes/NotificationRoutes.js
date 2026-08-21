const express = require('express');
const router = express.Router();
const notificationController = require('../controllers/notificationController');

// Obtener notificaciones
router.get('/notification', notificationController.getAllNotifications);

// Obtener notificacion por ID
router.get('/notification/:id', notificationController.getNotificationById);

// Crear notificacion
router.post('/notification', notificationController.createNotification);

// Eliminar notificacion por ID
router.delete('/notification/:id', notificationController.deleteNotification);

// Actualizar notificacion por ID
router.put('/notification/:id', notificationController.updateNotification);

module.exports = router;
