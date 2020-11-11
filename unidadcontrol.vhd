library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity unidadcontrol is
	port(
	sel: in std_logic_vector(2 downto 0);
	sel_s : out std_logic_vector(1 downto 0);
	sr : out std_logic;
	sel_b : out std_logic;
	sel_ov : out std_logic;
	sel_log : out std_logic_vector(1 downto 0));
end unidadcontrol;

architecture behavioral of unidadcontrol is
begin
	sel_s <= sel(2 downto 1);

	sel_ov <= sel(1);
		
	with sel select
		sr <= '0' when "100",
				'1' when "101",
				'-' when others;		
	sel_b <= sel(1);
	sel_log<=sel(1 downto 0);
end behavioral;
		