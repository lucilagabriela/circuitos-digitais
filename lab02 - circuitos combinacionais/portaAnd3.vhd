entity PortaAnd3 is
port(
	en1, en2, en3, en4  : in bit;
	saida_or			: out bit);
end PortaAnd3;

architecture behav of PortaAnd3 is
begin
saida_or <= en1 and en2 and en3;
end architecture behav