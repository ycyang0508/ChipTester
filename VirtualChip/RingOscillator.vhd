library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity RingOscillator is
  port( rst, Enable, clkin :     in  std_logic;
          Output      :     inout std_logic);
end RingOscillator;

architecture Behavioral of RingOscillator is
  signal Counter : std_logic_vector (2 downto 0);
begin
  process(clkin, rst)
  begin
    if Enable = '0' then
      Counter <= "000";
      Output <= '0';
    elsif rst = '0' then
      Output <= '0';
      Counter <= "000";
    elsif clkin = '0' and clkin'event then
      if Counter = "100" then
        Counter <= "000";
        Output <= not(Output);
      else
        Counter <= Counter+1;
      end if;
    end if;
  end process;
end Behavioral;