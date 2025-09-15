# 🏨 Hotel Cannes Management System

## 📌 About the Project

This is a **comprehensive hotel management system** developed for **Hotel Cannes (Mar del Plata, Argentina)**.  
It was created to replace an outdated legacy software composed of multiple disconnected executables, centralizing all operations into a **modern, scalable, and intuitive Single Page Application (SPA)** accessible both locally and remotely.  

The system was tailored to the **specific needs of a short-stay hotel**, including fast check-ins, real-time consumptions, laundry control, and cashier operations.  

> 👥 Developed collaboratively by a two-person team, following agile principles and shared responsibilities across frontend, backend, and database integration.

---

## 🛠️ Tech Stack

**Frontend**
- React.js (SPA architecture)  
- JSX & CSS3  
- Framer Motion (animations, interactive UI)  
- Figma (UI/UX prototyping)

**Backend**
- Node.js + Express.js  
- RESTful API + WebSockets (real-time updates)  
- Java microservice for biometric integration (DigitalPersona SDK)

**Database**
- MySQL (managed with XAMPP)  
- JPA/Hibernate for Java integration

**Project Management & Tools**
- Git & GitHub (version control)  
- Trello (Agile methodology & project tracking)  
- AnyDesk-ready (remote maintenance & scalability)  

---

## 🎯 Problem & Solution

**Problem**
- Legacy system with **20+ separate windows**, poor usability, and no remote access.  
- Not adapted to **short-stay hotel dynamics** (quick room turnover, consumptions, laundry).  

**Solution**
- Centralized SPA with **clean, minimal UX**.  
- Real-time room status management.  
- Integrated **cashier, expenses, and laundry control** with automatic metrics.  
- Hardware integration for **RFID cards** and **fingerprint authentication**.  
- Role-based access (Admin vs. Receptionist).  

---

## ⚙️ Core Features

- **Room & Shift Management**  
  - Real-time availability and status: Available, Occupied, Awaiting Cleaning, In Cleaning, Maintenance.  

- **Dynamic Window**  
  - History, consumptions, discounts, renewals, and notes per room.  

- **Cashier & Expenses**  
  - Categorized transactions, automatic metrics, and summaries.  

- **Laundry / White Clothes Control**  
  - Real-time tracking of sheets and towels.  

- **User Management**  
  - Biometric authentication (fingerprint reader).  
  - Role differentiation: Admin / Receptionist.  

- **Hardware Integration**  
  - RFID card system per room.  
  - DigitalPersona U.are.U 4500 fingerprint reader.  
  - Internal notifications & secure cashier validation.  

// ➡️ Add screenshots of the SPA (room grid, side panel, dynamic window).  
// ➡️ Add captures of cashier and laundry control.  

---

## 📊 Results

- **Faster operations** for check-ins, consumptions, and cashier tracking.  
- **Reduced errors** and missing funds in cashier.  
- **Automated metrics** for cleaning, laundry, and cashier.  
- **Remote access** for hotel owner.  
- **Future scalability** for new features (reports, analytics, online booking).  

---

## Core Features & Demos

### 1. Gestión de Habitaciones y Turnos
Gestión completa de estados de habitación: disponible, ocupado, esperando limpieza, en limpieza y en mantenimiento.  
Permite iniciar turnos manualmente, renovar turnos, agregar tiempo extra, añadir observaciones y consumiciones.  

**Screenshots / Videos:**
![Free Room Screen](src/assets/screenshots/free-room-screen.png)
![Occupied Room & Dynamic Window](src/assets/screenshots/close-room-screen.png)
![Pending Cleaning](src/assets/screenshots/pending-cleaning.png)
![In Cleaning](src/assets/screenshots/cleaning.png)
![Observations & Notes](src/assets/screenshots/observations.png)
[Room Change Demo](src/assets/vids/roomChange.mp4)

---

### 2. Control de Caja y Movimientos
Registro de movimientos de caja, filtrado por categorías, generación de reportes y métricas automáticas para control financiero.  

**Screenshots / Videos:**
![Advances](src/assets/screenshots/Advances.png)
![Bills](src/assets/screenshots/bills.png)
![Surcharge](src/assets/screenshots/surcharge.png)
[Cash Movements Demo](src/assets/vids/cashMovements.mp4)
[Commission & Discount Demo](src/assets/vids/comision-discount.mp4)

---

### 3. Control de Lavandería y Ropa Blanca
Seguimiento en tiempo real de la cantidad de prendas por artículo, registro de prendas sucias durante limpieza y control de inventario.  

**Screenshots / Videos:**
![Domestic Consumptions](src/assets/screenshots/domesticConsumptions.png)
![Linen Control](src/assets/screenshots/linen.png)
[Laundry Movements Demo](src/assets/vids/laundryMovements.mp4)

---

### 4. Interfaz y Experiencia de Usuario
SPA clara, minimalista, basada en principios de UX/UI. Modo oscuro, ventana dinámica interactiva y panel lateral colapsable con accesos rápidos.  

**Screenshots:**
![Dark Mode](src/assets/screenshots/darkMode.png)
![Shift Window](src/assets/screenshots/shift_window.png)

---

## 👥 Authors & Contact

**Developers**  
- 👤 **Facundo Pancani**  
  📧 facupancani@gmail.com  
  🌐 Portfolio (coming soon)  
  💼 [[LinkedIn](https://www.linkedin.com/in/facundopancani/)]  

- 👤 **Luciano Frias**  
  📧 lucianofrias1@hotmail.com
  🌐 [[Portfolio](https://lucianofrias.github.io/portfolio/#/)]
  💼 [[LinkedIn](https://www.linkedin.com/in/luciano-frias-1439b71b7/)]

---
