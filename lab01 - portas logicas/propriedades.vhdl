library ieee;
use ieee.std_logic_1164.all;

-- Entidade

entity lab1 is
    port(
        a, b, c: in bit;
        ldm11, ldm12,ldm21, ldm22, pt1, pt2, pt3, comutiA1, comutiA2, comutiM1, comutiM2, associA1, associA2, associM1, associM2, dist11,
          dist12, dist21, dist22: out bit
    );
end lab1;


architecture main of lab1 is
begin


-- Primeira Lei de Morgan
    -- (A * B)'
    ldm11 <= not(a AND b);
    --(A' +  B')
    ldm12 <= not(a) OR not(b);


-- Segunda lei de Morgan
    ldm21 <= not(a OR b);
    ldm22 <= not(a) AND not(b);


-- Testando os postulados
    -- postulado 1 =>  A + 0 = A
    pt1 <= a OR '0';


    -- Postulado 2 => A * 1 = A
    pt2 <= a AND '1';


    -- Postulado 3 => (A')' = A    
    pt3 <= not(not(a));


-- Testando as Propriedades de operações Booleanas
    -- Comutatividade - Adição A + B = B + A
    comutiA1 <= a OR b;
    comutiA2 <= b OR a;


    -- Comutatividade - Multiplicação A * B = B * A
    comutiM1 <= a AND b;
    comutiM2 <= b AND a;


    -- Associatividade - Adição A + ( B + C )= (A + B) + C
    associA1 <= a OR (b OR c);
    associA2 <= (a OR b) OR c;


    -- Associatividade - Multiplicação A * ( B * C) = (A * B) * C
    associM1 <= a AND (b AND c);
    associM2 <= (a AND b) AND c;


    -- Distributiva A * (B + C) = (A * B) + (A * C)
    dist11 <= a AND (b OR c);
    dist12 <= (a AND b) OR (a AND c);


    -- Distributiva A + (B * C) = (A + B) * (A + C)
    dist21 <= a OR (b AND c);
    dist22 <= (a OR b) AND (a OR c);


end architecture main;






library ieee;
use ieee.std_logic_1164.all;

-- Entidade
entity lab1 is
    port(
        a, b, c: in bit;
        post1, post2, post3,
		  comAdd1, comAdd2,
		  comMult1, comMult2,
		  assocAdd1, assocAdd2,
		  assocMult1, assocMult2,
		  distribAdd1, distribAdd2,
		  distribMult1, distribMult2,
		  morgan1L, morgan1,
		  morgan2L, morgan2: out bit
    );
end lab1;

-- Arquitetura
architecture main of lab1 is

begin
-- Postulados
	post1 <= a or '0';
	post2 <= a and '1';
	post3 <= not(not a);
	
	comAdd1 <= a or b;
	comAdd2 <= b or a;
	
	comMult1 <= a and b;
	comMult2 <= b and a;
	
	assocAdd1 <= a or (b or c);
	assocAdd2 <= (a or b) or c;
	
	assocMult1 <= a and (b and c);
	assocMult2 <= (a and b) and c;
	
	distribAdd1 <= a and (b or c);
	distribAdd2 <= (a and b) or (a and c);
	
	distribMult1 <= a or (b and c);
	distribMult2 <= (a or b) and (a or c);
	
	morgan1L <= not(a and b);
	morgan1 <= (not a) or (not b);
	
	morgan2L <= not(a or b);
	morgan2 <= (not a) and (not b);
end architecture main;