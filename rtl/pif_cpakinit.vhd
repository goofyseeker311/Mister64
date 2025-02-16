library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pif_cpakinit is
   port
   (
      clk       : in std_logic;
      address   : in std_logic_vector(7 downto 0);
      data      : out std_logic_vector(31 downto 0)
   );
end entity;

architecture arch of pif_cpakinit is

   type t_rom is array(0 to 255) of std_logic_vector(31 downto 0);
   signal rom : t_rom :=
   ( 
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"002D0000",
      x"00065667",
      x"0A0B1740",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00010100",
      x"78E6870C",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"002D0000",
      x"00065667",
      x"0A0B1740",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00010100",
      x"78E6870C",
      x"002D0000",
      x"00065667",
      x"0A0B1740",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00010100",
      x"78E6870C",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"002D0000",
      x"00065667",
      x"0A0B1740",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00010100",
      x"78E6870C",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00710000",
      x"00000000",
      x"00000003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00710000",
      x"00000000",
      x"00000003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00030003",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000",
      x"00000000"
   );
   attribute ramstyle : string;
   attribute ramstyle of rom : signal is "M10K";

begin

   process (clk) 
   begin
      if rising_edge(clk) then
         data <= rom(to_integer(unsigned(address)));
      end if;
   end process;

end architecture;
