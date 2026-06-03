library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ENCODER_TB is
end ENCODER_TB;

architecture Simulation of ENCODER_TB is

    signal I : std_logic_vector(3 downto 0) := "0000";
    signal Y : std_logic_vector(1 downto 0);
    signal V : std_logic;

begin

    DUT: entity work.ENCODER_4TO2
        port map (
            I => I,
            Y => Y,
            V => V
        );

    process
    begin
        I <= "0001"; wait for 10 ns;
        I <= "0010"; wait for 10 ns;
        I <= "0100"; wait for 10 ns;
        I <= "1000"; wait for 10 ns;
        I <= "1010"; wait for 10 ns;
        I <= "0000"; wait for 10 ns;

        wait;
    end process;

end architecture;