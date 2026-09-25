LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Full_Adder_8bit IS
    PORT(
        A    : IN  std_logic_vector(7 downto 0);
        B    : IN  std_logic_vector(7 downto 0);
        Cin  : IN  std_logic;

        SUM  : OUT std_logic_vector(7 downto 0);
        COUT : OUT std_logic
    );
END Full_Adder_8bit;


ARCHITECTURE Structural OF Full_Adder_8bit IS

    -- Component Declaration
    COMPONENT Full_Adder
    PORT(
        A    : IN  std_logic;
        B    : IN  std_logic;
        Cin  : IN  std_logic;
        SUM  : OUT std_logic;
        COUT : OUT std_logic
    );
    END COMPONENT;

    -- Carry signals
    signal C : std_logic_vector(8 downto 0);

BEGIN

    -- Initial Carry
    C(0) <= Cin;

    -- Bit 0
    FA0: Full_Adder
    PORT MAP(
        A    => A(0),
        B    => B(0),
        Cin  => C(0),
        SUM  => SUM(0),
        COUT => C(1)
    );

    -- Bit 1
    FA1: Full_Adder
    PORT MAP(
        A    => A(1),
        B    => B(1),
        Cin  => C(1),
        SUM  => SUM(1),
        COUT => C(2)
    );

    -- Bit 2
    FA2: Full_Adder
    PORT MAP(
        A    => A(2),
        B    => B(2),
        Cin  => C(2),
        SUM  => SUM(2),
        COUT => C(3)
    );

    -- Bit 3
    FA3: Full_Adder
    PORT MAP(
        A    => A(3),
        B    => B(3),
        Cin  => C(3),
        SUM  => SUM(3),
        COUT => C(4)
    );

    -- Bit 4
    FA4: Full_Adder
    PORT MAP(
        A    => A(4),
        B    => B(4),
        Cin  => C(4),
        SUM  => SUM(4),
        COUT => C(5)
    );

    -- Bit 5
    FA5: Full_Adder
    PORT MAP(
        A    => A(5),
        B    => B(5),
        Cin  => C(5),
        SUM  => SUM(5),
        COUT => C(6)
    );

    -- Bit 6
    FA6: Full_Adder
    PORT MAP(
        A    => A(6),
        B    => B(6),
        Cin  => C(6),
        SUM  => SUM(6),
        COUT => C(7)
    );

    -- Bit 7
    FA7: Full_Adder
    PORT MAP(
        A    => A(7),
        B    => B(7),
        Cin  => C(7),
        SUM  => SUM(7),
        COUT => C(8)
    );

    -- Final Carry
    COUT <= C(8);

END Structural;