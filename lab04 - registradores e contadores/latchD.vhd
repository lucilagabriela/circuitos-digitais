LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY latchD is
    PORT (
        D, C: IN BIT;
        Q, nQ: OUT BIT
    );
END ENTITY latchD;

ARCHITECTURE main OF latchD IS
begin
    PROCESS(C, D)
    begin
        IF (C = '1') THEN
        Q <= D;
        nQ <= NOT D;
        END IF;
    END PROCESS;
END;