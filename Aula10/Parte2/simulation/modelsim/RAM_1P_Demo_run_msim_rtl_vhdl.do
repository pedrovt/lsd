transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Pedro/Documents/Universidade de Aveiro/LSD/LSD-Docs/Aula10/Parte2/RAM_1P_16_8.vhd}

