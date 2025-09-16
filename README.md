# Hotel Cannes Management System

## About the Project
This project is a full management system for **Hotel Cannes** (Mar del Plata, Argentina), developed to replace an obsolete multi-executable system. The goal was to centralize hotel operations into a modern **Single Page Application (SPA)** with real-time updates, intuitive navigation, and remote accessibility for the hotel owner.

---

## 🛠️ Technologies Used

**Frontend:**
- React.js (SPA)
- JSX, CSS3

**Backend:**
- Node.js
- Express.js
- WebSockets (real-time updates)
- Java (integration with fingerprint SDK)

**Database:**
- MySQL (managed via XAMPP, JPA for Java integration)

**Other Tools:**
- Git & GitHub (version control)
- Trello (project management & agile methodologies)
- Figma (UX/UI prototyping)

---

## 🎯 Problem & Solution

**Problem:**
- Old system had 20+ windows, was unintuitive, and lacked remote access.
- System didn’t meet hotel-specific needs (short shifts, quick consumptions, real-time laundry tracking).

**Solution:**
- SPA with clear, minimalistic UX/UI.
- Real-time room and shift management.
- Automated cash, stock, and laundry tracking with metrics.
- Integration with existing hardware (RFID card readers & fingerprint scanner).
- Differentiated user roles (administrators and concierges).

---

## 🏨 Room States
The system tracks multiple room states with real-time updates through WebSockets:

- **Occupied:** Shows check-in/out times, time remaining, and allows discounts, adding consumptions, renewals, and observations.
- **Pending Cleaning:** Displays a timer and button to start cleaning manually.
- **Cleaning in Progress:** Shows cleaning duration, a form for registering laundry, and automatically updates room availability.
- **Available / Free:** Shows recent history, option to start a manual shift, and maintenance toggle.
- **Maintenance:** Room cannot be booked until marked as available again.


![Free Room Screen](src/assets/screenshots/free-room-screen.png)  
This screenshot illustrates the SPA layout with the room grid, interactive window, and side navigation.

![Pending Cleaning](src/assets/screenshots/pending-cleaning.png)  
Shows timer and manual cleaning button for pending rooms.

![Cleaning in Progress](src/assets/screenshots/cleaning.png)  
Displays cleaning duration and laundry registration form.

---

## ⏱️ Shift / Turn Management
- Start and manage room shifts manually.
- Renew or extend shifts.
- Apply discounts or surcharges.
- Add observations and consumptions to a shift.

![Shift Window](src/assets/screenshots/shift_window.png)  
Dynamic window for managing room shifts with all actions.

![Surcharge](src/assets/screenshots/surcharge.png)  
Inner window for managing surcharges, shift renovals and extra time

![Room Change Demo](src/assets/screenshots/roomChange.png)  
Video demonstration of changing a room assignment.

![Observations & Notes](src/assets/screenshots/observations.png)  
Interactive window for notes and observations.

[Commission & Discount Demo](src/assets/vids/comision-discount.mp4)  
Comision and discount video Demo

![Close Room](src/assets/screenshots/close-room-screen.png)  
Close room modal, where you choose to pay in cash, card or mixed and the amounts are checked before closing.


---

## 📌 Side Navigation Panel Features

### Advances
Register advances for staff (concierges).  
![Advances](src/assets/screenshots/Advances.png)  

### Expenses
Register and track hotel expenses.  
![Bills](src/assets/screenshots/bills.png)  

### Laundry Movements
Track laundry operations and update inventory in real-time.  
[Laundry Movements Demo](src/assets/vids/laundryMovements.mp4)  

### Cash Movements
Detailed view of cash operations with filtering and categorization.  
[Cash Movements Demo](src/assets/vids/cashMovements.mp4)  

### Linen / Stock Control
Track inventory of linens and other stock items.  
![Linen](src/assets/screenshots/linen.png)  

### Internal Consumptions
Register consumptions made internally by staff.  
![Internal Consumptions](src/assets/screenshots/domesticConsumptions.png)  

---

## 🖥️ UI & UX
SPA with minimalistic and user-friendly interface.  
Dark mode support, interactive dynamic window, collapsible side navigation with quick access buttons.

![Dark Mode](src/assets/screenshots/darkMode.png)  

---

## 👥 Developers
This project was developed by two developers:

- **Facundo Pancani**  
📧 facupancani@gmail.com  

- **[Your Partner’s Name]**  
📧 [Partner Email]

---

## 📞 Contact
For more information or to view the portfolio:

- Portfolio: [Add Link]  
- LinkedIn: [Add Link]
