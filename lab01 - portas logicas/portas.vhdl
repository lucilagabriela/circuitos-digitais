library ieee;
use ieee.std_logic_1164.all;

-- Entidade
entity lab1 is
    port(
        a, b: in bit;
        x, y, z: out bit;
    );
end lab1;

-- Arquitetura
architecture main of lab1 is

begin
-- operacoes logicas
x <= a and b;
y <= a or b;
z <= not(a);
end architecture main;