📌 README – Hotel Cannes Management System
🏨 Sobre el Proyecto

Este proyecto es un sistema de gestión integral para el Hotel Cannes (Mar del Plata, Argentina), desarrollado como reemplazo de un sistema obsoleto compuesto por múltiples ejecutables.
El objetivo fue centralizar y simplificar la gestión del hotel en una Single Page Application (SPA) moderna, intuitiva y eficiente.

👉 El sistema actualmente se encuentra en funcionamiento en el hotel, utilizado a diario por administradores y conserjes para la gestión completa de turnos, habitaciones, caja, lavandería, usuarios y consumiciones.

🎯 Problema y Solución

Problema detectado:

El hotel trabajaba con un software antiguo de más de 20 ventanas distintas, poco intuitivo y sin acceso remoto.

El sistema no se adaptaba a las necesidades específicas de un hotel alojamiento (turnos cortos, consumiciones rápidas, control de lavandería en tiempo real).

Solución desarrollada:

SPA con interfaz clara y minimalista basada en principios de UX/UI.

Gestión centralizada de habitaciones y turnos en tiempo real.

Control de caja, inventario y lavandería con métricas automáticas.

Integración con hardware existente (lectores de tarjetas RFID y lector de huellas).

Roles de usuario diferenciados (administradores y conserjes).

⚙️ Funcionalidades Principales

Gestión de habitaciones y turnos (disponible, ocupado, esperando limpieza, en limpieza, mantenimiento).

Dynamic Window interactiva con historial, consumos, descuentos, renovaciones y observaciones.

Control de caja y gastos con filtros por categorías.

Control de lavandería y ropa blanca en tiempo real.

Gestión de usuarios con autenticación biométrica y roles diferenciados.

Integración hardware:

Lectores de tarjetas RFID en cada habitación.

Lector de huellas digitales para validación de usuarios y cambios de encargado de caja.

Notificaciones internas y soporte remoto.

//Añadir capturas de pantalla de la SPA mostrando grid de habitaciones, panel lateral y ventanas dinámicas.

🛠️ Tecnologías Utilizadas

Frontend:

React.js (SPA)

JSX, CSS3

Framer Motion (animaciones)

Backend:

Node.js

Express.js

WebSockets (actualización en tiempo real)

Java (integración con SDK de huellas)

Base de Datos:

MySQL (gestión con XAMPP, JPA para integración en Java)

Otros:

Git & GitHub (control de versiones)

Trello (gestión de proyecto y metodologías ágiles)

Figma (diseño de prototipos y UX/UI)

👨‍💻 Rol y Habilidades Aplicadas

Full-Stack Developer: Desarrollo de frontend y backend, integración de base de datos y hardware.

Gestión de Proyecto: Aplicación de metodologías ágiles (Scrum/Kanban en Trello).

Comunicación con Cliente: Traducción de requerimientos reales a funcionalidades técnicas.

UX/UI Design: Diseño de interfaces accesibles e intuitivas en Figma.

Hardware Integration: Lectores de huellas y RFID conectados mediante RS-232.

🚀 Cómo Ejecutar el Proyecto

⚠️ Nota: El sistema fue desarrollado para un entorno local del hotel, con integración hardware. La versión completa requiere periféricos de huellas y tarjetas RFID.

Clonar el repositorio:

git clone https://github.com/Facupancani/cannes-hotel-system.git
cd cannes-hotel-system


Instalar dependencias:

npm install


Configurar base de datos MySQL en config/db.js

Iniciar backend:

npm run server


Iniciar frontend:

npm start

📊 Resultados

Tiempo de gestión reducido en un 40% respecto al sistema anterior.

Automatización de métricas de limpieza y caja.

Adopción exitosa: el sistema es utilizado diariamente por el personal.

Flexibilidad: posibilidad de mantenimiento remoto y escalabilidad futura.

📷 Capturas y Demostraciones

//Añadir aquí imágenes del grid de habitaciones, panel lateral, dynamic window, control de caja y ropa blanca.
//Opcional: Añadir un GIF mostrando el flujo de uso.

📌 Aprendizajes y Valor para Reclutadores

Experiencia real desarrollando un sistema end-to-end en producción.

Capacidad para trabajar con requerimientos reales de cliente y traducirlos en soluciones técnicas.

Conocimientos aplicados en integración hardware-software, poco común en proyectos de software estándar.

Desarrollo de habilidades blandas: comunicación, negociación de requerimientos, gestión del tiempo.

📞 Contacto

👤 Facundo Pancani
📧 facupancani@gmail.com

🌐 Portfolio
 (añadir enlace cuando lo tengas online)
💼 LinkedIn
 (añadir enlace a tu perfil)
