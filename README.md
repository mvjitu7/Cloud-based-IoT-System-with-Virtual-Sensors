# Cloud-based-IoT-System-with-Virtual-Sensors

1. Introduction
This report details the development of a cloud-based IoT system with virtual sensors. The system utilizes Wokwi for simulation and ThingSpeak for cloud storage. The focus is on building a virtual environmental station that transmits sensor data (temperature, humidity, CO2) to the cloud platform.
2. System Components
Virtual Sensors: Simulated on an ESP32 board within the Wokwi environment.
Wokwi: A web-based platform for simulating microcontrollers.
ThingSpeak: A cloud platform for receiving, storing, and visualizing sensor data.
MQTT (Message Queueing Telemetry Transport): A lightweight messaging protocol used for communication between devices and the cloud.
3. Development Steps
Virtual Sensor Development (Wokwi):
An ESP32 board is simulated in Wokwi.
The following libraries are installed:
“network” for network interface management (WiFi).
“time” for time-related functionalities.
“urandom” for generating random numbers (simulating sensor data).
“umqtt.simple” for MQTT communication with ThingSpeak.
Code is written to:
Generate random sensor values for temperature, humidity, and CO2.
Establish an MQTT connection with ThingSpeak using the credentials.
Publish sensor data to designated ThingSpeak channels at regular intervals.
Cloud Backend (ThingSpeak):
 A ThingSpeak channel is created with three fields for the sensor data.
The Write API Key for the channel is obtained for use in the Wokwi code.
ThingSpeak Data Retrieval (MATLAB Code):
The code defines the ThingSpeak channel ID and read API key 
It retrieves the current time and calculates the time five hours ago. 
The code builds a URL to access ThingSpeak's API for fetching sensor data within the specified time window 
It uses webread to fetch data from the constructed URL.
The code checks for retrieved data. If data exists, it extracts sensor readings and timestamps from the specific field and displays them.
