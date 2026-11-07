# APB Interfaced SPI Master Controller

## Project Overview

This project involves the design and implementation of an APB Interfaced SPI Master Controller using Verilog HDL.

The design integrates the Advanced Peripheral Bus (APB) protocol with the Serial Peripheral Interface (SPI) protocol to enable serial communication between a processor-side bus and SPI slave devices.

## Project Objectives

- To design an SPI Master controller using Verilog HDL.
- To interface SPI communication with the APB protocol.
- To implement programmable SPI clock generation.
- To design modular RTL blocks for SPI communication.

## Technologies & Tools

- Verilog HDL
- ModelSim
- APB (Advanced Peripheral Bus)
- SPI (Serial Peripheral Interface)

## Design Architecture

The design consists of the following modules:

1. APB Slave Interface

Handles APB read and write transactions and manages communication between the APB bus and SPI controller.

2. Baud Rate Generator

Generates the programmable SPI clock based on the configured clock divider values.

3. Shift Register

Handles parallel-to-serial and serial-to-parallel data shifting during SPI communication.

4. Slave Control Select

Controls the SPI slave selection signal.

5. Top Module

Integrates all the individual RTL modules to implement the complete APB-SPI Master controller.

SPI Interface Signals

- MOSI: Master Out Slave In
- MISO: Master In Slave Out
- SCLK: Serial Clock
- SS: Slave Select

## Project Directory Structure

APB-Interfaced-SPI-Master/
│
├── apb_slave_interface.v
├── apb_slave_interface_tb.v
├── baud_rate_gen.v
├── baud_rate_gen_tb.v
├── shift_register.v
├── shift_register_tb.v
├── slave_control_select.v
├── slave_control_select_tb.v
├── top.v
├── top_tb.v
└── README.md

## Verification

Individual Verilog testbench files are provided for the design modules.

Simulation waveforms and results will be added to the repository.

## Learning Outcomes

- Understanding APB and SPI protocols.
- RTL design using Verilog HDL.
- Modular digital design.
- Testbench development and functional simulation.
- Understanding serial communication interfaces.

## Author

Sahithi K.

B.Tech – Electronics and Communication Engineering (2026)

Project Domain

VLSI Design | RTL Design | Digital Design
