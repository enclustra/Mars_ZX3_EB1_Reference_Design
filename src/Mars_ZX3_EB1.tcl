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

set_property BITSTREAM.CONFIG.OVERTEMPPOWERDOWN ENABLE [current_design]
 
# ----------------------------------------------------------------------------------
# Important! Do not remove this constraint!
# This property ensures that all unused pins are set to high impedance.
# If the constraint is removed, all unused pins have to be set to HiZ in the top level file.
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLNONE [current_design]
# ----------------------------------------------------------------------------------

# Anios_0
set_property -dict {PACKAGE_PIN N22   IOSTANDARD LVCMOS18  } [get_ports {IOA_D0_P}]
set_property -dict {PACKAGE_PIN P22   IOSTANDARD LVCMOS18  } [get_ports {IOA_D1_N}]
set_property -dict {PACKAGE_PIN M15   IOSTANDARD LVCMOS18  } [get_ports {IOA_D2_P}]
set_property -dict {PACKAGE_PIN M16   IOSTANDARD LVCMOS18  } [get_ports {IOA_D3_N}]
set_property -dict {PACKAGE_PIN L17   IOSTANDARD LVCMOS18  } [get_ports {IOA_D4_P}]
set_property -dict {PACKAGE_PIN M17   IOSTANDARD LVCMOS18  } [get_ports {IOA_D5_N}]
set_property -dict {PACKAGE_PIN J20   IOSTANDARD LVCMOS18  } [get_ports {IOA_D6_P}]
set_property -dict {PACKAGE_PIN K21   IOSTANDARD LVCMOS18  } [get_ports {IOA_D7_N}]
set_property -dict {PACKAGE_PIN J16   IOSTANDARD LVCMOS18  } [get_ports {IOA_D8_P}]
set_property -dict {PACKAGE_PIN J17   IOSTANDARD LVCMOS18  } [get_ports {IOA_D9_N}]
set_property -dict {PACKAGE_PIN K16   IOSTANDARD LVCMOS18  } [get_ports {IOA_D10_P}]
set_property -dict {PACKAGE_PIN L16   IOSTANDARD LVCMOS18  } [get_ports {IOA_D11_N}]
set_property -dict {PACKAGE_PIN J18   IOSTANDARD LVCMOS18  } [get_ports {IOA_D12_P}]
set_property -dict {PACKAGE_PIN K18   IOSTANDARD LVCMOS18  } [get_ports {IOA_D13_N}]
set_property -dict {PACKAGE_PIN J15   IOSTANDARD LVCMOS18  } [get_ports {IOA_D14_P}]
set_property -dict {PACKAGE_PIN K15   IOSTANDARD LVCMOS18  } [get_ports {IOA_D15_N}]
set_property -dict {PACKAGE_PIN R19   IOSTANDARD LVCMOS18  } [get_ports {IOA_D16_P}]
set_property -dict {PACKAGE_PIN T19   IOSTANDARD LVCMOS18  } [get_ports {IOA_D17_N}]
set_property -dict {PACKAGE_PIN N17   IOSTANDARD LVCMOS18  } [get_ports {IOA_D18_P}]
set_property -dict {PACKAGE_PIN N18   IOSTANDARD LVCMOS18  } [get_ports {IOA_D19_N}]
set_property -dict {PACKAGE_PIN P20   IOSTANDARD LVCMOS18  } [get_ports {IOA_D20_P}]
set_property -dict {PACKAGE_PIN P21   IOSTANDARD LVCMOS18  } [get_ports {IOA_D21_N}]
set_property -dict {PACKAGE_PIN N15   IOSTANDARD LVCMOS18  } [get_ports {IOA_D22_P}]
set_property -dict {PACKAGE_PIN P15   IOSTANDARD LVCMOS18  } [get_ports {IOA_D23_N}]
set_property -dict {PACKAGE_PIN M20   IOSTANDARD LVCMOS18  } [get_ports {IOA_CLK_N}]
set_property -dict {PACKAGE_PIN M19   IOSTANDARD LVCMOS18  } [get_ports {IOA_CLK_P}]

# CAM_0
set_property -dict {PACKAGE_PIN F17   IOSTANDARD LVCMOS18  } [get_ports {CAM0_X0_N}]
set_property -dict {PACKAGE_PIN G17   IOSTANDARD LVCMOS18  } [get_ports {CAM0_X0_P}]
set_property -dict {PACKAGE_PIN F19   IOSTANDARD LVCMOS18  } [get_ports {CAM0_X1_N}]
set_property -dict {PACKAGE_PIN G19   IOSTANDARD LVCMOS18  } [get_ports {CAM0_X1_P}]
set_property -dict {PACKAGE_PIN G21   IOSTANDARD LVCMOS18  } [get_ports {CAM0_X2_N}]
set_property -dict {PACKAGE_PIN G20   IOSTANDARD LVCMOS18  } [get_ports {CAM0_X2_P}]
set_property -dict {PACKAGE_PIN H20   IOSTANDARD LVCMOS18  } [get_ports {CAM0_X3_N}]
set_property -dict {PACKAGE_PIN H19   IOSTANDARD LVCMOS18  } [get_ports {CAM0_X3_P}]
set_property -dict {PACKAGE_PIN G22   IOSTANDARD LVCMOS18  } [get_ports {CAM0_CC1_N}]
set_property -dict {PACKAGE_PIN H22   IOSTANDARD LVCMOS18  } [get_ports {CAM0_CC1_P}]
set_property -dict {PACKAGE_PIN E20   IOSTANDARD LVCMOS18  } [get_ports {CAM0_CC2_N}]
set_property -dict {PACKAGE_PIN E19   IOSTANDARD LVCMOS18  } [get_ports {CAM0_CC2_P}]
set_property -dict {PACKAGE_PIN C19   IOSTANDARD LVCMOS18  } [get_ports {CAM0_XCLK_N}]
set_property -dict {PACKAGE_PIN D18   IOSTANDARD LVCMOS18  } [get_ports {CAM0_XCLK_P}]
set_property -dict {PACKAGE_PIN C22   IOSTANDARD LVCMOS18  } [get_ports {CAM0_SERTC_N}]
set_property -dict {PACKAGE_PIN D22   IOSTANDARD LVCMOS18  } [get_ports {CAM0_SERTC_P}]
set_property -dict {PACKAGE_PIN E16   IOSTANDARD LVCMOS18  } [get_ports {CAM0_SERTFG_N}]
set_property -dict {PACKAGE_PIN F16   IOSTANDARD LVCMOS18  } [get_ports {CAM0_SERTFG_P}]

# CAM_1
set_property -dict {PACKAGE_PIN A17   IOSTANDARD LVCMOS18  } [get_ports {CAM1_XY0_N}]
set_property -dict {PACKAGE_PIN A16   IOSTANDARD LVCMOS18  } [get_ports {CAM1_XY0_P}]
set_property -dict {PACKAGE_PIN G16   IOSTANDARD LVCMOS18  } [get_ports {CAM1_XY1_N}]
set_property -dict {PACKAGE_PIN G15   IOSTANDARD LVCMOS18  } [get_ports {CAM1_XY1_P}]
set_property -dict {PACKAGE_PIN D15   IOSTANDARD LVCMOS18  } [get_ports {CAM1_XY2_N}]
set_property -dict {PACKAGE_PIN E15   IOSTANDARD LVCMOS18  } [get_ports {CAM1_XY2_P}]
set_property -dict {PACKAGE_PIN A19   IOSTANDARD LVCMOS18  } [get_ports {CAM1_XY3_N}]
set_property -dict {PACKAGE_PIN A18   IOSTANDARD LVCMOS18  } [get_ports {CAM1_XY3_P}]
set_property -dict {PACKAGE_PIN C20   IOSTANDARD LVCMOS18  } [get_ports {CAM1_Z1N_CC1_N}]
set_property -dict {PACKAGE_PIN D20   IOSTANDARD LVCMOS18  } [get_ports {CAM1_Z1P_CC1_P}]
set_property -dict {PACKAGE_PIN D21   IOSTANDARD LVCMOS18  } [get_ports {CAM1_Z2P_CC2_N}]
set_property -dict {PACKAGE_PIN E21   IOSTANDARD LVCMOS18  } [get_ports {CAM1_Z2N_CC2_P}]
set_property -dict {PACKAGE_PIN B20   IOSTANDARD LVCMOS18  } [get_ports {CAM1_ZCLK_CC3_N}]
set_property -dict {PACKAGE_PIN B19   IOSTANDARD LVCMOS18  } [get_ports {CAM1_ZCLK_CC3_P}]
set_property -dict {PACKAGE_PIN F22   IOSTANDARD LVCMOS18  } [get_ports {CAM1_Z3P_CC4_N}]
set_property -dict {PACKAGE_PIN F21   IOSTANDARD LVCMOS18  } [get_ports {CAM1_Z3N_CC4_P}]
set_property -dict {PACKAGE_PIN C18   IOSTANDARD LVCMOS18  } [get_ports {CAM1_XYCLK_N}]
set_property -dict {PACKAGE_PIN C17   IOSTANDARD LVCMOS18  } [get_ports {CAM1_XYCLK_P}]
set_property -dict {PACKAGE_PIN B22   IOSTANDARD LVCMOS18  } [get_ports {CAM1_SERTC_N}]
set_property -dict {PACKAGE_PIN B21   IOSTANDARD LVCMOS18  } [get_ports {CAM1_SERTC_P}]
set_property -dict {PACKAGE_PIN D17   IOSTANDARD LVCMOS18  } [get_ports {CAM1_SERTFG_Z0_N}]
set_property -dict {PACKAGE_PIN D16   IOSTANDARD LVCMOS18  } [get_ports {CAM1_SERTFG_Z0_P}]

# DDR3
set_property -dict {PACKAGE_PIN AA22  IOSTANDARD LVCMOS18  } [get_ports {DDR3_VSEL}]

# HDMI
set_property -dict {PACKAGE_PIN J22   IOSTANDARD LVCMOS18  } [get_ports {HDMI_CEC}]
set_property -dict {PACKAGE_PIN J21   IOSTANDARD LVCMOS18  } [get_ports {HDMI_HPD}]
set_property -dict {PACKAGE_PIN L22   IOSTANDARD LVCMOS18  } [get_ports {HDMI_D0_N}]
set_property -dict {PACKAGE_PIN L21   IOSTANDARD LVCMOS18  } [get_ports {HDMI_D0_P}]
set_property -dict {PACKAGE_PIN M22   IOSTANDARD LVCMOS18  } [get_ports {HDMI_D1_N}]
set_property -dict {PACKAGE_PIN M21   IOSTANDARD LVCMOS18  } [get_ports {HDMI_D1_P}]
set_property -dict {PACKAGE_PIN R21   IOSTANDARD LVCMOS18  } [get_ports {HDMI_D2_N}]
set_property -dict {PACKAGE_PIN R20   IOSTANDARD LVCMOS18  } [get_ports {HDMI_D2_P}]
set_property -dict {PACKAGE_PIN N20   IOSTANDARD LVCMOS18  } [get_ports {HDMI_CLK_N}]
set_property -dict {PACKAGE_PIN N19   IOSTANDARD LVCMOS18  } [get_ports {HDMI_CLK_P}]

# I2C_PL
set_property -dict {PACKAGE_PIN H17   IOSTANDARD LVCMOS18  } [get_ports {I2C_INT_N}]
set_property -dict {PACKAGE_PIN AB21  IOSTANDARD LVCMOS18  PULLUP TRUE} [get_ports {Rev4}]
set_property -dict {PACKAGE_PIN Y21   IOSTANDARD LVCMOS18  PULLUP TRUE} [get_ports {Rev5}]
set_property -dict {PACKAGE_PIN R15   IOSTANDARD LVCMOS18  } [get_ports {I2C_SCL}]
set_property -dict {PACKAGE_PIN H15   IOSTANDARD LVCMOS18  } [get_ports {I2C_SDA}]

# IO_B
set_property -dict {PACKAGE_PIN P17   IOSTANDARD LVCMOS18  } [get_ports {IOB_D0_P}]
set_property -dict {PACKAGE_PIN P18   IOSTANDARD LVCMOS18  } [get_ports {IOB_D1_N}]
set_property -dict {PACKAGE_PIN T16   IOSTANDARD LVCMOS18  } [get_ports {IOB_D2_P}]
set_property -dict {PACKAGE_PIN T17   IOSTANDARD LVCMOS18  } [get_ports {IOB_D3_N}]
set_property -dict {PACKAGE_PIN P16   IOSTANDARD LVCMOS18  } [get_ports {IOB_D4_P}]
set_property -dict {PACKAGE_PIN R16   IOSTANDARD LVCMOS18  } [get_ports {IOB_D5_N}]
set_property -dict {PACKAGE_PIN R18   IOSTANDARD LVCMOS18  } [get_ports {IOB_D6_P}]
set_property -dict {PACKAGE_PIN T18   IOSTANDARD LVCMOS18  } [get_ports {IOB_D7_N}]

# IO_C
set_property -dict {PACKAGE_PIN A21   IOSTANDARD LVCMOS18  } [get_ports {IOC_D0_P}]
set_property -dict {PACKAGE_PIN A22   IOSTANDARD LVCMOS18  } [get_ports {IOC_D1_N}]
set_property -dict {PACKAGE_PIN F18   IOSTANDARD LVCMOS18  } [get_ports {IOC_D2_P}]
set_property -dict {PACKAGE_PIN E18   IOSTANDARD LVCMOS18  } [get_ports {IOC_D3_N}]
set_property -dict {PACKAGE_PIN C15   IOSTANDARD LVCMOS18  } [get_ports {IOC_D4_P}]
set_property -dict {PACKAGE_PIN B15   IOSTANDARD LVCMOS18  } [get_ports {IOC_D5_N}]
set_property -dict {PACKAGE_PIN B16   IOSTANDARD LVCMOS18  } [get_ports {IOC_D6_P}]
set_property -dict {PACKAGE_PIN B17   IOSTANDARD LVCMOS18  } [get_ports {IOC_D7_N}]

# IO_D
set_property -dict {PACKAGE_PIN L18   IOSTANDARD LVCMOS18  } [get_ports {IOD_D0_P}]
set_property -dict {PACKAGE_PIN L19   IOSTANDARD LVCMOS18  } [get_ports {IOD_D1_N}]
set_property -dict {PACKAGE_PIN K19   IOSTANDARD LVCMOS18  } [get_ports {IOD_D2_P}]
set_property -dict {PACKAGE_PIN K20   IOSTANDARD LVCMOS18  } [get_ports {IOD_D3_N}]

# LED
set_property -dict {PACKAGE_PIN H18   IOSTANDARD LVCMOS18  } [get_ports {LED0_N}]
set_property -dict {PACKAGE_PIN AA14  IOSTANDARD LVCMOS18  } [get_ports {LED1_N}]
set_property -dict {PACKAGE_PIN AA13  IOSTANDARD LVCMOS18  } [get_ports {LED2_N}]
set_property -dict {PACKAGE_PIN AB15  IOSTANDARD LVCMOS18  } [get_ports {LED3_N}]

# PL_Gig_Ethernet
set_property -dict {PACKAGE_PIN U12   IOSTANDARD LVCMOS18  } [get_ports {ETH_LED2_N}]
set_property -dict {PACKAGE_PIN AA12  IOSTANDARD LVCMOS18  } [get_ports {ETH_MDC}]
set_property -dict {PACKAGE_PIN U10   IOSTANDARD LVCMOS18  } [get_ports {ETH_RXD[0]}]
set_property -dict {PACKAGE_PIN Y11   IOSTANDARD LVCMOS18  } [get_ports {ETH_RXD[1]}]
set_property -dict {PACKAGE_PIN W11   IOSTANDARD LVCMOS18  } [get_ports {ETH_RXD[2]}]
set_property -dict {PACKAGE_PIN U11   IOSTANDARD LVCMOS18  } [get_ports {ETH_RXD[3]}]
set_property -dict {PACKAGE_PIN Y9    IOSTANDARD LVCMOS18  } [get_ports {ETH_RXCLK}]
set_property -dict {PACKAGE_PIN V8    IOSTANDARD LVCMOS18  } [get_ports {ETH_TXD[0]}]
set_property -dict {PACKAGE_PIN W8    IOSTANDARD LVCMOS18  } [get_ports {ETH_TXD[1]}]
set_property -dict {PACKAGE_PIN U6    IOSTANDARD LVCMOS18  } [get_ports {ETH_TXD[2]}]
set_property -dict {PACKAGE_PIN V9    IOSTANDARD LVCMOS18  } [get_ports {ETH_TXD[3]}]
set_property -dict {PACKAGE_PIN W10   IOSTANDARD LVCMOS18  } [get_ports {ETH_TXCLK}]
set_property -dict {PACKAGE_PIN AB12  IOSTANDARD LVCMOS18  } [get_ports {ETH_MDIO}]
set_property -dict {PACKAGE_PIN AB11  IOSTANDARD LVCMOS18  } [get_ports {ETH_RESET_N}]
set_property -dict {PACKAGE_PIN Y8    IOSTANDARD LVCMOS18  } [get_ports {ETH_RXCTL}]
set_property -dict {PACKAGE_PIN V10   IOSTANDARD LVCMOS18  } [get_ports {ETH_TXCTL}]

# USB
set_property -dict {PACKAGE_PIN U14   IOSTANDARD LVCMOS18  } [get_ports {USB_RST_N}]
