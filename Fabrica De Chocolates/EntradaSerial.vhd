LIBRARY ieee ;
USE ieee.std_logic_1164.all ;



ENTITY EntradaSerial IS
PORT ( Reloj, Restablecimiento: IN STD_LOGIC ;
Empiece : OUT STD_LOGIC );
END EntradaSerial ;

ARCHITECTURE entrada_serial_arch OF EntradaSerial IS

signal inicio: std_logic_vector (2 downto 0);


BEGIN

Senal_empiece: PROCESS ( Reloj, Restablecimiento )
BEGIN
   IF Restablecimiento = '1' -- cambiar a 1 si es activo en alto
	THEN 
		 inicio(2 downto 0) <= "101";

	ELSIF Reloj'EVENT AND Reloj = '1' THEN  
	inicio(2 downto 1) <= inicio(1 downto 0);
	inicio(0) <= '0';
	
END IF ;
END PROCESS ;

Empiece <= inicio(2);

END entrada_serial_arch;