LIBRARY ieee ;
USE ieee.std_logic_1164.all ;



ENTITY EntradaSerial IS
PORT ( Reloj, Restablecimiento: IN STD_LOGIC ;
Salida_Serial, Empiece : OUT STD_LOGIC );
END EntradaSerial ;

ARCHITECTURE entrada_serial_arch OF EntradaSerial IS


signal valor_salida: std_logic_vector (7 downto 0);
signal inicio: std_logic_vector (3 downto 0);


BEGIN

Senal_empiece: PROCESS ( Reloj, Restablecimiento )
BEGIN
IF Restablecimiento = '0' -- cambiar a 1 si es activo en alto
	THEN 
		 inicio(3 downto 0) <= "0001";

	ELSIF Reloj'EVENT AND Reloj = '1' THEN  
	inicio(3 downto 1) <= inicio(2 downto 0);
	inicio(0) <= '0';
	
END IF ;
END PROCESS ;

Empiece <= inicio(3);

-- Generacion vector datos
Generacion_datos: PROCESS (Reloj, Restablecimiento)
BEGIN
IF Restablecimiento = '0' -- cambiar a 1 si es activo en alto
	THEN 
 valor_salida(7 downto 0) <= "00000001"; -- Cambiar los últimos 4 bits para ajustar el nivel del árbitro
		
	ELSIF Reloj'EVENT AND Reloj = '1' THEN  
	valor_salida(7 downto 1) <= valor_salida(6 downto 0);
	valor_salida(0) <= '0';
	
END IF ;
END PROCESS ;

-- Salida dato
Salida_Serial <= valor_salida(7);

END entrada_serial_arch;