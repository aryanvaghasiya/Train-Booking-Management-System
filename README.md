
# 🚆 Train Management System

A Java-based application for efficiently managing train operations including scheduling, seat availability, and passenger bookings.

---

## 📑 Table of Contents
- [📘 About](#-about)
- [✨ Features](#-features)
- [⚙️ Installation Guide](#️-installation-guide)
- [🛠️ Technologies Used](#️-technologies-used)
- [👥 Contributors](#-contributors)

---

## 📘 About

The **Train Management System** is a desktop application built in Java to simulate and manage railway operations. It allows both **administrators** and **passengers** to interact with the system through login-based functionalities. Admins can manage train schedules and coach capacities, while passengers can view availability and make bookings.

---

## ✨ Features

### 👨‍💼 Admin Panel
- Manage train schedules (departure & arrival)
- Reset and update seat availability (AC, SC, GE coaches)
- Generate detailed reports for trains and bookings
- Secure login/logout functionality

### 👤 Passenger Module
- Book and cancel train tickets
- View real-time seat availability
- Manage personal profile
- Secure login/logout system

---

## ⚙️ Installation Guide

### 1️⃣ Database Setup

Run the provided SQL script [`train_management_schema.sql`](./train_management_schema.sql) to create and initialize the MySQL database.

### 2️⃣ Java Project Setup

1. Install dependencies:
   - `hamcrest-core-1.3.jar`
   - `junit-4.13.2.jar`
   - `mysql-connector-j-8.3.0.jar`

2. Project structure:
   ```
   project/
   ├── .vscode/
   ├── bin/
   ├── lib/
   │   ├── hamcrest-core-1.3.jar
   │   ├── junit-4.13.2.jar
   │   └── mysql-connector-j-8.3.0.jar
   └── src/
       └── [Java source files]
   ```

3. Clone the source code into `src/`:
   ```bash
   cd src
   git clone https://github.com/aryanvaghasiya/Train-Booking-Management-System.git
   ```

---

## 🛠️ Technologies Used

- **Java** – Core application logic and GUI
- **MySQL** – Backend relational database
- **JDBC** – Java Database Connectivity for MySQL

---

## 👥 Contributors

- Aryan Vaghasiya (IMT2022046)
- Shreyank Bhat (IMT2022516)
- Siddharth Ayathu (IMT2022517)
