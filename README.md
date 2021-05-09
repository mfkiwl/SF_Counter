# SmartFusion2 FPGA

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


### Prerequisites

* Libero v12.5 -- for FPGA development
* SoftConsole v4.0 -- for host development


<!-- GETTING STARTED -->
## FPGA Design

The FPGA design project can be found in the **FPGA** folder.

#### Custom HDL files:

* Gate_Set.v
* Recip_Freq_Counter.v
* fine_counter.v
* Add_Counter.v
* SPI_slave.v

#### Build and Compile

1. New project -> select the part number "M2S025-VF256" -> select the "create a microcontroller (MSS) based design", and finish.

2. Double click the MSS component, disable everything else expect for: MMUART_1, SPI_0, SPI_1, GPIO, MSS_OCC, and RESET Cntroller, as the figure below.

![alt text](https://github.com/onioncc/SF_Counter/Figures/1.png)

### Program the FPGA

## Host Design

The host code that controls the FPGA logic can be found in the **host** folder.

#### Custom C file:
* main.c

#### Build and Compile

#### Generate Release Code


