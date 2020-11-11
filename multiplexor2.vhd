library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplexor2 is
	port(
	sel_ov : in std_logic;
	ovm  : in std_logic;
	ovsr : in std_logic;
	ov : out std_logic);
end multiplexor2;

architecture behavioral of multiplexor2 is
begin
	with sel_ov select
		ov <=     ovm when  '0',
					 ovsr when '1',
					 '-' when others;
end behavioral;