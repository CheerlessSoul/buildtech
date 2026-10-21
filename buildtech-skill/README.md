# ⚡ BuildTech — Autonomous 3D Hardware Prototyping & Product Engineering AI

> **Turn any hardware idea into a fully engineered, coded, wired, and 3D VIRTUALLY SIMULATED product — complete with an interactive 3D WebGL laboratory and 1-click local run link.**

Compatible with **Google Antigravity**, **Anthropic Claude Code**, and **OpenAI Codex / Cursor**.

---

## 🌟 What makes `/buildtech` unique?

Unlike typical AI tools that just output text or code snippets, **BuildTech** actually builds your hardware in an **interactive 3D virtual world (Three.js WebGL)** and launches a **local run link**:

1. 🌐 **Interactive 3D Virtual World (`simulator3d.html`)**:
   - **Full 360° Orbit & Zoom**: Rotate, inspect pins, zoom into chips, and pan across the 3D workbench.
   - **Realistic 3D Hardware**: 3D ESP32/Arduino, breadboards, terracotta plant pots, water pumps, ultrasonic sensors, servos, and dynamic LCD/OLED screens.
   - **Real 3D PointLight LEDs**: When LEDs illuminate, they cast true colored 3D light onto nearby components.
   - **Dynamic 3D Spline Wires**: Curved colored jumper wires connecting pin-to-pin in 3D space.
   - **Moving Actuators**: Water sprays dynamically, motors spin, servo arms rotate, and relays click.
2. 🔗 **1-Click Local Run Link**:
   - Automatically provides a local web server link (`http://localhost:8080/simulator3d.html`) so you can test and play with your invention immediately.
3. 🧰 **Massive 50+ Hardware Component Library**:
   - Supports microcontrollers, environmental sensors, biometric scanners, motors, solenoids, displays, and wireless radios across IoT, robotics, and wearables.
4. 🖨️ **1-Click Manufacturing Blueprint & PDF (`blueprint.html`)**:
   - Generates an industrial-grade specification dossier with complete BOM, pricing, schematics, and print-to-PDF formatting.

---

## 🧰 Supported Hardware Component Matrix

BuildTech is pre-trained with 3D models, pinouts, and electrical limits for:

| Category | Supported Components |
| :--- | :--- |
| **Microcontrollers** | ESP32 DevKit, ESP32-S3, ESP32-CAM, Arduino Uno R3/R4, Arduino Nano, Raspberry Pi Pico / Pico W, STM32 BluePill, ATtiny85 |
| **Environmental & Weather** | DHT11/DHT22, BME280/BMP280 (Temp/Humidity/Pressure), DS18B20 Waterproof Probe, Capacitive Soil Moisture, Rain/Water Level |
| **Motion & Distance** | HC-SR04 Ultrasonic, VL53L0X ToF Laser, PIR Motion (HC-SR501), RCWL-0516 Microwave Radar, MPU6050 6-Axis Gyro |
| **Optical & Biometrics** | LDR Photoresistor, BH1750 Lux, APDS-9960 Gesture Sensor, RC522 RFID, R307 Fingerprint, MAX30102 Heart Rate |
| **Motors & Fluidics** | SG90 / MG996R Servos, 5V Submersible Pump, 12V Solenoid Valve, 28BYJ-48 Stepper, TT DC Gear Motors, N20 Metal Gear |
| **Displays & Lights** | 0.96" I2C OLED (SSD1306), 16x2 / 20x4 LCD with I2C Backpack, WS2812B NeoPixel RGB Rings/Strips, 5mm Discrete LEDs |
| **Power & Switching** | 5V Optocoupled Relays (1/2/4-CH), TIP120 Darlington, IRFZ44N MOSFET, 18650 Li-ion Battery Shields, TP4056 USB-C Charger |

---

## 🚀 Quick Install

### Option 1: Universal 1-Line Installer

#### Linux / macOS:
```bash
curl -sSL https://raw.githubusercontent.com/YOUR_USERNAME/buildtech-skill/main/install.sh | bash
```

#### Windows (PowerShell):
```powershell
irm https://raw.githubusercontent.com/YOUR_USERNAME/buildtech-skill/main/install.ps1 | iex
```

---

### Option 2: Clone or Copy Manually

#### For Google Antigravity:
```bash
# Workspace level:
git clone https://github.com/YOUR_USERNAME/buildtech-skill.git .agents/skills/buildtech

# Global level (all projects):
git clone https://github.com/YOUR_USERNAME/buildtech-skill.git ~/.gemini/config/skills/buildtech
```

#### For Claude (Claude Code):
```bash
git clone https://github.com/YOUR_USERNAME/buildtech-skill.git .claude/skills/buildtech
```

#### For Cursor / Codex:
```bash
git clone https://github.com/YOUR_USERNAME/buildtech-skill.git .agents/skills/buildtech
```

---

## 💡 How to Use

1. Type `/buildtech` followed by your gadget idea:
   - *"/buildtech autonomous plant watering system with moisture sensor and mini pump"*
   - *"/buildtech fingerprint & RFID smart security lock with OLED display and solenoid bolt"*
   - *"/buildtech self-balancing robot with MPU6050 gyro and DC encoder motors"*
2. Click the **Local Run Link** (`http://localhost:8080/simulator3d.html`) to interact with your gadget in 3D!
3. Click **Export to PDF** on `blueprint.html` to save the hardware manufacturing blueprint!

---

## 📄 License
MIT License — Free to use, modify, and distribute.
