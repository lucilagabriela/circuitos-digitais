entity PortaAnd2 is
port(
	en1, en2  : in bit;
	saida_or  : out bit);
end PortaAnd2;

architecture behav of PortaAnd2 is
begin
saida_or <= en1 and en2;
end architecture behav