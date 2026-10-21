# Example /buildtech Walkthrough: Smart Fingerprint & RFID Door Lock

### 1. User Prompt
> `/buildtech I want to build a smart front-door lock that unlocks when an authorized RFID card is scanned or a fingerprint is matched. It should have a small OLED screen displaying "Welcome [Name]" or "Access Denied", an emergency red/green LED indicator, a solenoid lock mechanism, and Wi-Fi notification to my phone if an unauthorized person tries 3 times.`

---

### 2. What BuildTech AI Outputs Automatically

#### Phase 1: Architecture & Bill of Materials (BOM)
- **Controller**: ESP32 Dev Module (Wi-Fi + BLE enabled)
- **Sensors**: R307 Optical Fingerprint Sensor (UART) + RC522 RFID Reader (SPI)
- **Display**: 0.96" I2C Monochrome OLED Display (128x64 SSD1306)
- **Actuator**: 12V DC Solenoid Door Lock via TIP120 Darlington Transistor / Relay
- **Indicators**: Green LED (Access Granted), Red LED (Alert), Active Piezo Buzzer

#### Phase 2: Pin-to-Pin Wiring Matrix
| Component Pin | Connects to ESP32 Pin | Logic Level | Notes |
| :--- | :--- | :--- | :--- |
| R307 Fingerprint TX | GPIO 16 (RX2) | 3.3V UART | SoftwareSerial / HardwareSerial 2 |
| R307 Fingerprint RX | GPIO 17 (TX2) | 3.3V UART | |
| RC522 RFID SDA (SS) | GPIO 5 | 3.3V SPI | Slave Select |
| RC522 RFID SCK | GPIO 18 | 3.3V SPI | Clock |
| RC522 RFID MOSI | GPIO 23 | 3.3V SPI | Master Out |
| RC522 RFID MISO | GPIO 19 | 3.3V SPI | Master In |
| OLED Display SDA | GPIO 21 | 3.3V I2C | Wire.h default |
| OLED Display SCL | GPIO 22 | 3.3V I2C | Wire.h default |
| Lock Relay / TIP120 | GPIO 4 | 3.3V Output | Flyback diode (1N4007) across solenoid! |

#### Phase 3: Production Firmware
- Provides complete C++ code ready to flash via Arduino IDE or PlatformIO.
- Non-blocking loop checking RFID and Fingerprint in parallel.
- Failsafe lockout after 3 failed attempts with Telegram/Webhook notification over Wi-Fi.

#### Phase 4: Virtual World Simulator (`simulator.html`)
- Opens an interactive browser page where the user can:
  - Click "Scan Valid RFID" or "Scan Invalid Fingerprint"
  - Watch the virtual OLED display change from "SCAN CARD" to "ACCESS GRANTED - WELCOME ALEX"
  - Hear the virtual buzzer beep and see the solenoid latch slide open in real time!

#### Phase 5: Manufacturing Dossier & PDF (`blueprint.html`)
- Generates the full printable engineering document with 1-click "Export to PDF" button.

#### Phase 6: Interactive Bug Fixes & Upgrades
- If the user says: *"Hey, the solenoid lock gets hot if kept open too long!"*
- The AI immediately modifies the code with a 4-second auto-re-lock pulse timer, updates the schematic with a flyback diode safeguard, and updates the virtual simulator!
