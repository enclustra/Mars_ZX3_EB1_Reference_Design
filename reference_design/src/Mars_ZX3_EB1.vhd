---------------------------------------------------------------------------------------------------
-- Copyright (c) 2022 by Enclustra GmbH, Switzerland.
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of
-- this hardware, software, firmware, and associated documentation files (the
-- "Product"), to deal in the Product without restriction, including without
-- limitation the rights to use, copy, modify, merge, publish, distribute,
-- sublicense, and/or sell copies of the Product, and to permit persons to whom the
-- Product is furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Product.
--
-- THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
-- INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
-- PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
-- HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
-- OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
-- PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- libraries
---------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

---------------------------------------------------------------------------------------------------
-- entity declaration
---------------------------------------------------------------------------------------------------
entity Mars_ZX3_EB1 is
  
  port (
    -- PS MIO Pins
    FIXED_IO_mio                   : inout  std_logic_vector(53 downto 0);
    FIXED_IO_ddr_vrn               : inout  std_logic;
    FIXED_IO_ddr_vrp               : inout  std_logic;
    FIXED_IO_ps_srstb              : inout  std_logic;
    FIXED_IO_ps_clk                : inout  std_logic;
    FIXED_IO_ps_porb               : inout  std_logic;
    DDR_cas_n                      : inout  std_logic;
    DDR_cke                        : inout  std_logic;
    DDR_ck_n                       : inout  std_logic;
    DDR_ck_p                       : inout  std_logic;
    DDR_cs_n                       : inout  std_logic;
    DDR_reset_n                    : inout  std_logic;
    DDR_odt                        : inout  std_logic;
    DDR_ras_n                      : inout  std_logic;
    DDR_we_n                       : inout  std_logic;
    DDR_ba                         : inout  std_logic_vector(2 downto 0);
    DDR_addr                       : inout  std_logic_vector(14 downto 0);
    DDR_dm                         : inout  std_logic_vector(3 downto 0);
    DDR_dq                         : inout  std_logic_vector(31 downto 0);
    DDR_dqs_n                      : inout  std_logic_vector(3 downto 0);
    DDR_dqs_p                      : inout  std_logic_vector(3 downto 0);
    
    -- Anios IO Connector 0
    IOA_D0_P                       : inout   std_logic;
    IOA_D1_N                       : inout   std_logic;
    IOA_D2_P                       : inout   std_logic;
    IOA_D3_N                       : inout   std_logic;
    IOA_D4_P                       : inout   std_logic;
    IOA_D5_N                       : inout   std_logic;
    IOA_D6_P                       : inout   std_logic;
    IOA_D7_N                       : inout   std_logic;
    IOA_D8_P                       : inout   std_logic;
    IOA_D9_N                       : inout   std_logic;
    IOA_D10_P                      : inout   std_logic;
    IOA_D11_N                      : inout   std_logic;
    IOA_D12_P                      : inout   std_logic;
    IOA_D13_N                      : inout   std_logic;
    IOA_D14_P                      : inout   std_logic;
    IOA_D15_N                      : inout   std_logic;
    IOA_D16_P                      : inout   std_logic;
    IOA_D17_N                      : inout   std_logic;
    IOA_D18_P                      : inout   std_logic;
    IOA_D19_N                      : inout   std_logic;
    IOA_D20_P                      : inout   std_logic;
    IOA_D21_N                      : inout   std_logic;
    IOA_D22_P                      : inout   std_logic;
    IOA_D23_N                      : inout   std_logic;
    IOA_CLK_N                      : inout   std_logic;
    IOA_CLK_P                      : inout   std_logic;
    
    -- Mini Camera Link Interface 0
    CAM0_X0_N                      : inout   std_logic;
    CAM0_X0_P                      : inout   std_logic;
    CAM0_X1_N                      : inout   std_logic;
    CAM0_X1_P                      : inout   std_logic;
    CAM0_X2_N                      : inout   std_logic;
    CAM0_X2_P                      : inout   std_logic;
    CAM0_X3_N                      : inout   std_logic;
    CAM0_X3_P                      : inout   std_logic;
    CAM0_CC1_N                     : inout   std_logic;
    CAM0_CC1_P                     : inout   std_logic;
    CAM0_CC2_N                     : inout   std_logic;
    CAM0_CC2_P                     : inout   std_logic;
    CAM0_XCLK_N                    : inout   std_logic;
    CAM0_XCLK_P                    : inout   std_logic;
    CAM0_SERTC_N                   : inout   std_logic;
    CAM0_SERTC_P                   : inout   std_logic;
    CAM0_SERTFG_N                  : inout   std_logic;
    CAM0_SERTFG_P                  : inout   std_logic;
    
    -- Mini Camera Link Interface 1
    CAM1_XY0_N                     : inout   std_logic;
    CAM1_XY0_P                     : inout   std_logic;
    CAM1_XY1_N                     : inout   std_logic;
    CAM1_XY1_P                     : inout   std_logic;
    CAM1_XY2_N                     : inout   std_logic;
    CAM1_XY2_P                     : inout   std_logic;
    CAM1_XY3_N                     : inout   std_logic;
    CAM1_XY3_P                     : inout   std_logic;
    CAM1_Z1N_CC1_N                 : inout   std_logic;
    CAM1_Z1P_CC1_P                 : inout   std_logic;
    CAM1_Z2P_CC2_N                 : inout   std_logic;
    CAM1_Z2N_CC2_P                 : inout   std_logic;
    CAM1_ZCLK_CC3_N                : inout   std_logic;
    CAM1_ZCLK_CC3_P                : inout   std_logic;
    CAM1_Z3P_CC4_N                 : inout   std_logic;
    CAM1_Z3N_CC4_P                 : inout   std_logic;
    CAM1_XYCLK_N                   : inout   std_logic;
    CAM1_XYCLK_P                   : inout   std_logic;
    CAM1_SERTC_N                   : inout   std_logic;
    CAM1_SERTC_P                   : inout   std_logic;
    CAM1_SERTFG_Z0_N               : inout   std_logic;
    CAM1_SERTFG_Z0_P               : inout   std_logic;
    
    -- DDR3
    DDR3_VSEL                      : inout   std_logic;
    
    -- HDMI
    HDMI_CEC                       : inout   std_logic;
    HDMI_HPD                       : in      std_logic;
    HDMI_D0_N                      : out     std_logic;
    HDMI_D0_P                      : out     std_logic;
    HDMI_D1_N                      : out     std_logic;
    HDMI_D1_P                      : out     std_logic;
    HDMI_D2_N                      : out     std_logic;
    HDMI_D2_P                      : out     std_logic;
    HDMI_CLK_N                     : out     std_logic;
    HDMI_CLK_P                     : out     std_logic;
    
    -- I2C PL
    I2C_INT_N                      : in      std_logic;
    Rev4                           : in      std_logic;
    Rev5                           : in      std_logic;
    I2C_SCL                        : inout   std_logic;
    I2C_SDA                        : inout   std_logic;
    
    -- IO Connector B
    IOB_D0_P                       : inout   std_logic;
    IOB_D1_N                       : inout   std_logic;
    IOB_D2_P                       : inout   std_logic;
    IOB_D3_N                       : inout   std_logic;
    IOB_D4_P                       : inout   std_logic;
    IOB_D5_N                       : inout   std_logic;
    IOB_D6_P                       : inout   std_logic;
    IOB_D7_N                       : inout   std_logic;
    
    -- IO Connector C
    IOC_D0_SC0_BTN0_N              : inout   std_logic;
    IOC_D1_SC1_BTN1_N              : inout   std_logic;
    IOC_D2_SC2                     : inout   std_logic;
    IOC_D3_SC3                     : inout   std_logic;
    IOC_D4_SC4                     : inout   std_logic;
    IOC_D5_SC5                     : inout   std_logic;
    IOC_D6_SC6                     : inout   std_logic;
    IOC_D7_SC7                     : inout   std_logic;
    
    -- IO Connector D
    IOD_D0_P                       : inout   std_logic;
    IOD_D1_N                       : inout   std_logic;
    IOD_D2_P                       : inout   std_logic;
    IOD_D3_N                       : inout   std_logic;
    
    -- LED
    LED0_N                         : out     std_logic;
    LED1_N                         : out     std_logic;
    LED2_N                         : out     std_logic;
    LED3_N                         : out     std_logic;
    
    -- PL Gig Ethernet
    ETH_LED2_N                     : inout   std_logic;
    ETH_MDC                        : out     std_logic;
    ETH_RXCLK                      : in      std_logic;
    ETH_TXCLK                      : out     std_logic;
    ETH_MDIO                       : inout   std_logic;
    ETH_RESET_N                    : out     std_logic;
    ETH_RXCTL                      : in      std_logic;
    ETH_TXCTL                      : out     std_logic;
    ETH_RXD                        : in      std_logic_vector(3 downto 0);
    ETH_TXD                        : out     std_logic_vector(3 downto 0);
    
    -- USB
    USB_RST_N                      : inout   std_logic
  );
end Mars_ZX3_EB1;

architecture rtl of Mars_ZX3_EB1 is

  ---------------------------------------------------------------------------------------------------
  -- component declarations
  ---------------------------------------------------------------------------------------------------
  component Mars_ZX3 is
    port (
      Clk50               : out    std_logic;
      Rst_N               : out    std_logic;
      FIXED_IO_mio        : inout  std_logic_vector(53 downto 0);
      FIXED_IO_ddr_vrn    : inout  std_logic;
      FIXED_IO_ddr_vrp    : inout  std_logic;
      FIXED_IO_ps_srstb   : inout  std_logic;
      FIXED_IO_ps_clk     : inout  std_logic;
      FIXED_IO_ps_porb    : inout  std_logic;
      DDR_cas_n           : inout  std_logic;
      DDR_cke             : inout  std_logic;
      DDR_ck_n            : inout  std_logic;
      DDR_ck_p            : inout  std_logic;
      DDR_cs_n            : inout  std_logic;
      DDR_reset_n         : inout  std_logic;
      DDR_odt             : inout  std_logic;
      DDR_ras_n           : inout  std_logic;
      DDR_we_n            : inout  std_logic;
      DDR_ba              : inout  std_logic_vector(2 downto 0);
      DDR_addr            : inout  std_logic_vector(14 downto 0);
      DDR_dm              : inout  std_logic_vector(3 downto 0);
      DDR_dq              : inout  std_logic_vector(31 downto 0);
      DDR_dqs_n           : inout  std_logic_vector(3 downto 0);
      DDR_dqs_p           : inout  std_logic_vector(3 downto 0);
      IIC_sda_i           : in     std_logic;
      IIC_sda_o           : out    std_logic;
      IIC_sda_t           : out    std_logic;
      IIC_scl_i           : in     std_logic;
      IIC_scl_o           : out    std_logic;
      IIC_scl_t           : out    std_logic;
      LED_N               : out    std_logic_vector(3 downto 0);
      I2C_INT             : in     std_logic
    );
    
  end component Mars_ZX3;
  
  component OBUFDS is
    port (
      I : in STD_LOGIC;
      O : out STD_LOGIC;
      OB : out STD_LOGIC
    );
  end component OBUFDS;

  ---------------------------------------------------------------------------------------------------
  -- signal declarations
  ---------------------------------------------------------------------------------------------------
  signal Clk50            : std_logic;
  signal Rst_N            : std_logic;
  signal IIC_sda_i        : std_logic;
  signal IIC_sda_o        : std_logic;
  signal IIC_sda_t        : std_logic;
  signal IIC_scl_i        : std_logic;
  signal IIC_scl_o        : std_logic;
  signal IIC_scl_t        : std_logic;
  signal LED_N            : std_logic_vector(3 downto 0);
  signal I2C_INT          : std_logic;
  signal LedCount         : unsigned(23 downto 0);

begin
  
  ---------------------------------------------------------------------------------------------------
  -- processor system instance
  ---------------------------------------------------------------------------------------------------
  Mars_ZX3_i: component Mars_ZX3
    port map (
      Clk50                => Clk50,
      Rst_N                => Rst_N,
      FIXED_IO_mio         => FIXED_IO_mio,
      FIXED_IO_ddr_vrn     => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp     => FIXED_IO_ddr_vrp,
      FIXED_IO_ps_srstb    => FIXED_IO_ps_srstb,
      FIXED_IO_ps_clk      => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb     => FIXED_IO_ps_porb,
      DDR_cas_n            => DDR_cas_n,
      DDR_cke              => DDR_cke,
      DDR_ck_n             => DDR_ck_n,
      DDR_ck_p             => DDR_ck_p,
      DDR_cs_n             => DDR_cs_n,
      DDR_reset_n          => DDR_reset_n,
      DDR_odt              => DDR_odt,
      DDR_ras_n            => DDR_ras_n,
      DDR_we_n             => DDR_we_n,
      DDR_ba               => DDR_ba,
      DDR_addr             => DDR_addr,
      DDR_dm               => DDR_dm,
      DDR_dq               => DDR_dq,
      DDR_dqs_n            => DDR_dqs_n,
      DDR_dqs_p            => DDR_dqs_p,
      IIC_sda_i            => IIC_sda_i,
      IIC_sda_o            => IIC_sda_o,
      IIC_sda_t            => IIC_sda_t,
      IIC_scl_i            => IIC_scl_i,
      IIC_scl_o            => IIC_scl_o,
      IIC_scl_t            => IIC_scl_t,
      LED_N                => LED_N,
      I2C_INT              => I2C_INT
    );
  
  DDR3_VSEL <= 'Z';
  
  hdmi_clock_buf: component OBUFDS
    port map (
      I => '0',
      O => HDMI_CLK_P,
      OB => HDMI_CLK_N
    );
  
  hdmi_d0_buf: component OBUFDS
    port map (
      I => '0',
      O => HDMI_D0_P,
      OB => HDMI_D0_N
    );
  
  hdmi_d1_buf: component OBUFDS
    port map (
      I => '0',
      O => HDMI_D1_P,
      OB => HDMI_D1_N
    );
  
  hdmi_d2_buf: component OBUFDS
    port map (
      I => '0',
      O => HDMI_D2_P,
      OB => HDMI_D2_N
    );
  
  I2C_SDA  <= IIC_sda_o when IIC_sda_t = '0' else 'Z';
  IIC_sda_i <= I2C_SDA;
  I2C_SCL <= IIC_scl_o when IIC_scl_t = '0' else 'Z';
  IIC_scl_i <= I2C_SCL;
  I2C_INT <= not I2C_INT_N when Rev5 = '0' else I2C_INT_N;
  
  process (Clk50)
  begin
    if rising_edge (Clk50) then
      if Rst_N = '0' then
        LedCount    <= (others => '0');
      else
        LedCount    <= LedCount + 1;
      end if;
    end if;
  end process;
  LED0_N <= '0' when LedCount(LedCount'high) = '0' else 'Z';
  LED1_N <= '0' when LED_N(0) = '0' else 'Z';
  LED2_N <= '0' when LED_N(1) = '0' else 'Z';
  LED3_N <= '0' when LED_N(2) = '0' else 'Z';
  
end rtl;
