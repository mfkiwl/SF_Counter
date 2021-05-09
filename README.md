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

### Custom HDL files:

* Gate_Set.v
* Recip_Freq_Counter.v
* fine_counter.v
* Add_Counter.v
* SPI_slave.v

### Build and Compile

1. New project -> select the part number **M2S025-VF256** -> select the **create a microcontroller (MSS) based design**, and finish.

2. Double click the MSS component, disable everything else except for: MMUART_1, SPI_0, SPI_1, GPIO, MSS_CCC, and RESET Controller, as the figure below.

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/1.png)


3. Configure the **MMUART_1**, **GPIO**, **MSS_CCC**, and **RESET Controller** as the figures below.

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/2.png)

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/3.png)

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/4.png)

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/5.png)

4. Add custom HDL files into the project, connect the components as the figure below.

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/8.png)

5. Configure the two FCCC components. FCCC_C0 drives the MSS, and FCCC_C1 drives the counter circuit. Configure the FCCC components as the figures below.

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/11.png)

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/9.png)

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/10.png)

6. Configure the Chip Oscillator as the figure below.

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/12.png)

7. Synthesis the design, and click the **manage constraints** to configure the I/O pins. The pin configuration is shown in the figure below. Note that the Schmitt Trigger should be enabled for the sampled_signal external pin.

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/13.png)

8. Click the **Run PROGRAM Action** to run synthesis, Place and Route, and Program. You could also run these steps separately.

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/14.png)


9. Once it shows that the FPGA is successfully programmed, click the **Configure Firmware Cores**, export a sample project containing the UART component as shown in the figure below.
This step is to generate a sample project for host code.

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/17.png)


10. Click the **Export Firmware** and export the firmware to be used in the host program.


## Host Design

The host code that controls the FPGA logic can be found in the **host** folder.

### Custom C file:
* main.c

### Build and Compile

1. Open the SoftConsole software, specify a workspace, and click the **import** from the **File** tab. Choose the **Existing Projects into Workspace** as the figure below. This is to import the sample project generated from the Libero in FPGA step 9.

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/22.png)

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/23.png)


2. Replace the main.c file using the custom **main.c** in the host foler. Replace the **CMSIS**, **drivers**, **drivers_config**, and **hal** under *./Host/* using the ones from *./FPGA/board_deploy/firmware*.


3. Right click the project, select the **Debug Configuration**, and configure the debug mode as the figures below.

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/18.png)

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/19.png)


4. Build the project, invoke debugging, and test the program.

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/21.png)


5. The results can be observed from COM7 serials port, using the data rate of 57600.

6. Once the functionality is confirmed to be correct, build the release mode as the next section introduces.



### Generate Release Code

The release mode allows the FPGA SoC to automatically run when powered on.

1. Set the build configuration as ****Release**** as shown in the figure below.

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/20.png)


2. Build the project. Find the .hex file under the **Release** folder, open it, and remove the first line, as shown in the figure below.

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/24.png)


3. Go back to the FPGA design in Libero, open the MSS configuration tab, click the eNVM to open the eNVM configurator as the figure below.

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/6.png)

4. Click the **Data Storage** and **Add to System**. Import the .hex file from the previous **Release** folder as the figure below.

![](https://github.com/onioncc/SF_Counter/blob/main/Figures/7.png)


5. Run the **Run PROGRAM Action** and program the FPGA. 




