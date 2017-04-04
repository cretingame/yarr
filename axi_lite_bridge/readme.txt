*************************************************************************
   ____  ____ 
  /   /\/   / 
 /___/  \  /   
 \   \   \/    © Copyright 2015 Xilinx, Inc. All rights reserved.
  \   \        This file contains confidential and proprietary 
  /   /        information of Xilinx, Inc. and is protected under U.S. 
 /___/   /\    and international copyright and other intellectual 
 \   \  /  \   property laws. 
  \___\/\___\ 
 
*************************************************************************

Vendor: Xilinx 
Current readme.txt Version: 1.0.0
Date Last Modified:  15MAY2016
Date Created: 15MAY2016

Associated Filename: xapp1268.zip
Associated Document: XAPP1268, 7 Series FPGAs Gen2 Integrated Block for PCIe 
to AXI4-Lite Bridge

Supported Device(s): Artix-7, Kintex-7, 
Virtex-7 (devices with GTX Transceivers), Zynq 7000
   
*************************************************************************

Disclaimer: 

      This disclaimer is not a license and does not grant any rights to 
      the materials distributed herewith. Except as otherwise provided in 
      a valid license issued to you by Xilinx, and to the maximum extent 
      permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE 
      "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL 
      WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
      INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, 
      NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and 
      (2) Xilinx shall not be liable (whether in contract or tort, 
      including negligence, or under any other theory of liability) for 
      any loss or damage of any kind or nature related to, arising under 
      or in connection with these materials, including for any direct, or 
      any indirect, special, incidental, or consequential loss or damage 
      (including loss of data, profits, goodwill, or any type of loss or 
      damage suffered as a result of any action brought by a third party) 
      even if such damage or loss was reasonably foreseeable or Xilinx 
      had been advised of the possibility of the same.

Critical Applications:

      Xilinx products are not designed or intended to be fail-safe, or 
      for use in any application requiring fail-safe performance, such as 
      life-support or safety devices or systems, Class III medical 
      devices, nuclear facilities, applications related to the deployment 
      of airbags, or any other applications that could lead to death, 
      personal injury, or severe property or environmental damage 
      (individually and collectively, "Critical Applications"). Customer 
      assumes the sole risk and liability of any use of Xilinx products 
      in Critical Applications, subject only to applicable laws and 
      regulations governing limitations on product liability.

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS 
FILE AT ALL TIMES.

*************************************************************************

This readme file contains these sections:

1. REVISION HISTORY
2. OVERVIEW
3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS
4. DESIGN FILE HIERARCHY
5. INSTALLATION AND OPERATING INSTRUCTIONS
6. SUPPORT


1. REVISION HISTORY 

            Readme  
Date        Version      Revision Description
=========================================================================
15MAY2016   1.0          Initial Xilinx release.
=========================================================================


2. OVERVIEW

This readme describes how to use the files that come with XAPP1286, 7 Series 
FPGAs Gen2 Integrated Block for PCIe to AXI4-Lite Bridge.

The PCI Express to AXI bridge logic delivered through this XAPP is a design 
that converts 1 Dword read or write packets received from the PCIe interface
into AXI memory reads or writes.

In addition, the delivered code allows for the user to map PCIe BAR address
ranges to specific AXI address ranges.  

Both a pre-packaged IP and the source code for the IP are delivered
The delivered code is simple and easy to modify.  Additional functionality
such as larger than 1 Dword support can be added if desired.

Finally, two pre-canned designs targeting the Zynq ZC706 and the AC701 
Xilinx reference boards are included.  Bitstreams can be downloaded directly 
or the designs can be run through simulation (PIPE mode) and implementation.


3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS

* Xilinx Vivado 2015.4 or higher
  * Future versions of Vivado will require that the packaged IP be upgraded,
    but there is nothing 2015.4 specific in the RTL code.  


4. DESIGN FILE HIERARCHY

The directory structure underneath this top-level folder is described 
below:

\ac701_f2_x4_lite
 |   This folder contains project files for the AC701 board.  Simulation
 |   is setup to run using PIPE mode.  The PCIe core is configured to run
 |   at a link width and speed of Gen2 x4.
 |       
\zc706_g1_x1_lite
 |   This folder contains project files for the ZC706 board.  Simulation
 |   is setup to run using PIPE mode but requires an AXI BFM license.  
 |   The PCIe core is configured to run at a link width and speed of Gen1 x1.
\ready_for_download
 |   This folder contains bitstreams for both the ZC701 and ZC706 boards.
 \packaged_IP
 |   This folder contains AXI Lite Bridge packaged as an IP.  This is the 
 |   directory to point to when using the IP as-is without any 
 |   customizations.
\vivado_IP_GEN
 |   This folder contains the project used to create the packaged IP.  If
 |   customizations are desired, this is where the RTL can be modified and 
 |   a new IP created with the desired customizations.


5. INSTALLATION AND OPERATING INSTRUCTIONS 

1) Install the Xilinx Vivado 2015.4 or later tools.
2) Unzip the xapp1268.zip file.
3) Open Vivado and browse to the directory of the board that will be simulated
and implemented.
4) Open the Vivado project.
5) Run the behavioral simulation.  The link should train and a single memory 
write is followed by a memory read.
6) Run implementation.
7) Download the design to the board.
8) If memory access fail in hardware, make sure that the memory enable bit 
in the PCIe configuration space has been enabled.


7. SUPPORT

To obtain technical support for this reference design, go to 
www.xilinx.com/support to locate answers to known issues in the Xilinx
Answers Database.  