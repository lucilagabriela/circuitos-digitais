library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflopD is
    port (
        c: in bit;
        s, r: in bit;
        q: out bit
    );
end flipflopD;

architecture behavioral of 