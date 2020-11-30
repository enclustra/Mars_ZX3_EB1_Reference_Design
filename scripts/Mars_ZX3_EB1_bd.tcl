# ----------------------------------------------------------------------------------
# Copyright (c) 2020 by Enclustra GmbH, Switzerland.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this hardware, software, firmware, and associated documentation files (the
# "Product"), to deal in the Product without restriction, including without
# limitation the rights to use, copy, modify, merge, publish, distribute,
# sublicense, and/or sell copies of the Product, and to permit persons to whom the
# Product is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Product.
#
# THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
# PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
# ----------------------------------------------------------------------------------

create_bd_design $module


create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7 processing_system7
set_property -dict [ list \
  CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
  CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
  CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {1} \
  CONFIG.PCW_SINGLE_QSPI_DATA_MODE {x4} \
  CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
  CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
  CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
  CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
  CONFIG.PCW_SD0_GRP_CD_IO {MIO 50} \
  CONFIG.PCW_MIO_50_PULLUP {disabled} \
  CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {50} \
  CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} \
  CONFIG.PCW_UART0_PERIPHERAL_ENABLE {1} \
  CONFIG.PCW_UART0_UART0_IO {MIO 46 .. 47} \
  CONFIG.PCW_MIO_46_PULLUP {disabled} \
  CONFIG.PCW_MIO_47_PULLUP {disabled} \
  CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {1} \
  CONFIG.PCW_WDT_PERIPHERAL_ENABLE {1} \
  CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
  CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
  CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
  CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
  CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
  CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
  CONFIG.PCW_EN_CLK1_PORT {1} \
  CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {50} \
  CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
  CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 1.8V} \
  CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
  CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
  CONFIG.PCW_IRQ_F2P_INTR {1} \
] [get_bd_cells processing_system7]

if { $CPU_FREQ == "1C"} {
  set_property -dict [ list \
    CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {667} \
  ] [get_bd_cells processing_system7]
}

if { $CPU_FREQ == "2I"} {
  set_property -dict [ list \
    CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {767} \
  ] [get_bd_cells processing_system7]
}

create_bd_cell -type ip -vlnv xilinx.com:ip:xadc_wiz xadc_wiz
set_property -dict [ list \
  CONFIG.CHANNEL_ENABLE_VP_VN {false} \
] [get_bd_cells xadc_wiz]

if { $PS_DDR == "PS_D9"} {
  set_property -dict [ list \
    CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533} \
    CONFIG.PCW_UIPARAM_DDR_CWL {6} \
    CONFIG.PCW_UIPARAM_DDR_T_RC {50.625} \
    CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {37.5} \
    CONFIG.PCW_UIPARAM_DDR_T_FAW {40} \
    CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0} \
    CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.012} \
    CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0} \
    CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0} \
    CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.238} \
    CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.241} \
    CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.248} \
    CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.285} \
    CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3 (Low Voltage)} \
    CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {2048 MBits} \
    CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
    CONFIG.PCW_UIPARAM_DDR_PARTNO {Custom} \
  ] [get_bd_cells processing_system7]
}

if { $PS_DDR == "PS_D10"} {
  set_property -dict [ list \
    CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533} \
    CONFIG.PCW_UIPARAM_DDR_CWL {6} \
    CONFIG.PCW_UIPARAM_DDR_T_RC {50.625} \
    CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {37.5} \
    CONFIG.PCW_UIPARAM_DDR_T_FAW {40} \
    CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0} \
    CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.012} \
    CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {0} \
    CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {0} \
    CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.238} \
    CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.241} \
    CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.248} \
    CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.285} \
    CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3 (Low Voltage)} \
    CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {4096 MBits} \
    CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
    CONFIG.PCW_UIPARAM_DDR_PARTNO {Custom} \
  ] [get_bd_cells processing_system7]
}

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 LED
set_property -dict [ list \
  CONFIG.C_GPIO_WIDTH {4} \
  CONFIG.C_ALL_OUTPUTS {1} \
] [get_bd_cells LED]

create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0
set_property -dict [list CONFIG.NUM_MI {2} CONFIG.NUM_SI {1}] [get_bd_cells smartconnect_0]
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 ps_sys_reset
set_property -dict [list CONFIG.C_AUX_RESET_HIGH.VALUE_SRC USER] [get_bd_cells ps_sys_reset]
set_property -dict [list CONFIG.C_AUX_RESET_HIGH {0}] [get_bd_cells ps_sys_reset]
connect_bd_net [get_bd_pins processing_system7/FCLK_CLK0] [get_bd_pins processing_system7/M_AXI_GP0_ACLK]
connect_bd_net [get_bd_pins smartconnect_0/aclk] [get_bd_pins processing_system7/FCLK_CLK0]
connect_bd_intf_net [get_bd_intf_pins smartconnect_0/M01_AXI] [get_bd_intf_pins xadc_wiz/s_axi_lite]
connect_bd_net [get_bd_pins xadc_wiz/s_axi_aclk] [get_bd_pins processing_system7/FCLK_CLK0]
connect_bd_intf_net [get_bd_intf_pins smartconnect_0/S00_AXI] [get_bd_intf_pins processing_system7/M_AXI_GP0]
connect_bd_net [get_bd_pins ps_sys_reset/slowest_sync_clk] [get_bd_pins processing_system7/FCLK_CLK0]
connect_bd_net [get_bd_pins ps_sys_reset/ext_reset_in] [get_bd_pins processing_system7/FCLK_RESET0_N]
connect_bd_net [get_bd_pins ps_sys_reset/peripheral_aresetn] [get_bd_pins xadc_wiz/s_axi_aresetn]
connect_bd_net [get_bd_pins ps_sys_reset/interconnect_aresetn] [get_bd_pins smartconnect_0/aresetn]
set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
connect_bd_intf_net [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7/FIXED_IO]
set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
connect_bd_intf_net [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7/DDR]
set IIC_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC_0 ]
connect_bd_intf_net [get_bd_intf_ports IIC_0] [get_bd_intf_pins processing_system7/IIC_0]
connect_bd_intf_net [get_bd_intf_pins smartconnect_0/M00_AXI] [get_bd_intf_pins LED/S_AXI]
connect_bd_net [get_bd_pins LED/s_axi_aclk] [get_bd_pins processing_system7/FCLK_CLK0]
connect_bd_net [get_bd_pins ps_sys_reset/peripheral_aresetn] [get_bd_pins LED/s_axi_aresetn]

set Clk50 [ create_bd_port -dir O -type clk Clk50]
connect_bd_net [get_bd_ports Clk50] [get_bd_pins processing_system7/FCLK_CLK1]
set Rst_N [ create_bd_port -dir O -type rst Rst_N]
connect_bd_net [get_bd_ports Rst_N] [get_bd_pins processing_system7/FCLK_RESET0_N]
set I2C_INT [ create_bd_port -dir I I2C_INT]
connect_bd_net [get_bd_ports I2C_INT] [get_bd_pins processing_system7/IRQ_F2P]
set LED_N [ create_bd_port -dir O -from 3 -to 0 LED_N]
connect_bd_net [get_bd_ports LED_N] [get_bd_pins LED/gpio_io_o]
assign_bd_address
save_bd_design
validate_bd_design
save_bd_design
