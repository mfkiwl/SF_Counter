# This is the deployment project of a reciprocal counter implemented on SmartFusion2 FPGA

<!-- TABLE OF CONTENTS -->
<!-- ## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Dataset](#dataset)
  * [Synthetic data](#synthetic-data)
  * [Real-case data](#real-case-data)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap) -->



<!-- ABOUT THE PROJECT -->
## About The Project

This project implements a reciprocal counter on SmartFusion2 FPGA, counting the periodical signal detected by gas sensors.


## Prerequisites

* Libero v12.5 -- for FPGA development
* SoftConsole v4.0 -- for host development


<!-- GETTING STARTED -->
## FPGA Design

The FPGA design project can be found in the **FPGA** folder.

### Custom HDL files:

* Gate_Set.v
* Recip_Freq_Counter.v
* fine_counter.v
* Add_Counter.v
* SPI_slave.v

### Build and Compile

### Program the FPGA

## Host Design

The host code that controls the FPGA logic can be found in the **host** folder.

Custom .C file:
* main.c

### Build and Compile

### Generate Release Code


