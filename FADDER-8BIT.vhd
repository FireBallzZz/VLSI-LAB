LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Full_Adder_8bit_tb IS
END Full_Adder_8bit_tb;


ARCHITECTURE behavior OF Full_Adder_8bit_tb IS

    COMPONENT Full_Adder_8bit
    PORT(
        A    : IN  std_logic_vector(7 downto 0);
        B    : IN  std_logic_vector(7 downto 0);
        Cin  : IN  std_logic;
        SUM  : OUT std_logic_vector(7 downto 0);
        COUT : OUT std_logic
    );
    END COMPONENT;

    signal A    : std_logic_vector(7 downto 0);
    signal B    : std_logic_vector(7 downto 0);
    signal Cin  : std_logic;

    signal SUM  : std_logic_vector(7 downto 0);
    signal COUT : std_logic;

BEGIN

    uut: Full_Adder_8bit
    PORT MAP(
        A    => A,
        B    => B,
        Cin  => Cin,
        SUM  => SUM,
        COUT => COUT
    );


    stim_proc: process
    begin

        -- Test 1
        A <= "00000000";
        B <= "00000000";
        Cin <= '0';
        wait for 100 ns;

        -- Test 2
        A <= "00000101";
        B <= "00000011";
        Cin <= '0';
        wait for 100 ns;

        -- Test 3
        A <= "00001111";
        B <= "00000001";
        Cin <= '0';
        wait for 100 ns;

        -- Test 4
        A <= "10101010";
        B <= "01010101";
        Cin <= '0';
        wait for 100 ns;

        -- Test 5
        A <= "11111111";
        B <= "00000001";
        Cin <= '0';
        wait for 100 ns;

        -- Test 6
        A <= "11111111";
        B <= "11111111";
        Cin <= '0';
        wait for 100 ns;

        -- Test 7
        A <= "11111111";
        B <= "11111111";
        Cin <= '1';
        wait for 100 ns;

        wait;

    end process;

END behavior;