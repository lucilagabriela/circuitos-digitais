library ieee;
use ieee.std_logic_1164.all;

entity flipflopSR is
    port (
        s, r, clk: in bit;
        q: out bit
    );
end;

architecture behav of flipflopSR is
    begin
        if(clik event and clk='1')