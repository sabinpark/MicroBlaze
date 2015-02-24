-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    RESET : in std_logic;
    GCLK : in std_logic;
    axi_uartlite_0_RX_pin : in std_logic;
    axi_uartlite_0_TX_pin : out std_logic;
    led_peripheral_0_LED_pin : out std_logic_vector(7 downto 0)
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      RESET : in std_logic;
      GCLK : in std_logic;
      axi_uartlite_0_RX_pin : in std_logic;
      axi_uartlite_0_TX_pin : out std_logic;
      led_peripheral_0_LED_pin : out std_logic_vector(7 downto 0)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      RESET => RESET,
      GCLK => GCLK,
      axi_uartlite_0_RX_pin => axi_uartlite_0_RX_pin,
      axi_uartlite_0_TX_pin => axi_uartlite_0_TX_pin,
      led_peripheral_0_LED_pin => led_peripheral_0_LED_pin
    );

end architecture STRUCTURE;

