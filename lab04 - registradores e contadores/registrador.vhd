entity contador is
    port(
        clk: in bit;
        ld: in bit;
        cnt: in bit;
        reset: in bit;
        data: in integer range 15 downto 0;
        q: out integer range 15 downto 0
    );

architecture comportamento of contador is
    begin process(clk, reset)
    variable qv: integer range 15 downto 0;

    begin
        if (reset='1') then
            qv := 0;
        else
            if (cnt)