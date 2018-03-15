transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/SAMSUNG/Downloads/Quesop (1)/Quesop/QuesoConexion.vhd}
vcom -93 -work work {C:/Users/SAMSUNG/Downloads/Quesop (1)/Quesop/ContadorLetra.vhd}
vcom -93 -work work {C:/Users/SAMSUNG/Downloads/Quesop (1)/Quesop/ContadorSelec.vhd}
vcom -93 -work work {C:/Users/SAMSUNG/Downloads/Quesop (1)/Quesop/registropalabra.vhd}
vcom -93 -work work {C:/Users/SAMSUNG/Downloads/Quesop (1)/Quesop/registro5p.vhd}
vcom -93 -work work {C:/Users/SAMSUNG/Downloads/Quesop (1)/Quesop/selecpalabra.vhd}
vcom -93 -work work {C:/Users/SAMSUNG/Downloads/Quesop (1)/Quesop/mux3_1.vhd}
vcom -93 -work work {C:/Users/SAMSUNG/Downloads/Quesop (1)/Quesop/contador.vhd}
vcom -93 -work work {C:/Users/SAMSUNG/Downloads/Quesop (1)/Quesop/selecletra.vhd}
vcom -93 -work work {C:/Users/SAMSUNG/Downloads/Quesop (1)/Quesop/mux8_1.vhd}
vcom -93 -work work {C:/Users/SAMSUNG/Downloads/Quesop (1)/Quesop/contadortiempo.vhd}
vcom -93 -work work {C:/Users/SAMSUNG/Downloads/Quesop (1)/Quesop/contadorbits.vhd}
vcom -93 -work work {C:/Users/SAMSUNG/Downloads/Quesop (1)/Quesop/selecbit.vhd}
vcom -93 -work work {C:/Users/SAMSUNG/Downloads/Quesop (1)/Quesop/mux10_1.vhd}
vcom -93 -work work {C:/Users/SAMSUNG/Downloads/Quesop (1)/Quesop/control.vhd}

