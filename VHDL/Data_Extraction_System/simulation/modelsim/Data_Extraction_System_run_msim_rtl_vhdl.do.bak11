transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Zed/Desktop/PROJ324 - Project Folder/PROJ324/VHDL/Data_Extraction_System/FIFObuffer.vhd}

vcom -93 -work work {C:/Users/Zed/Desktop/PROJ324 - Project Folder/PROJ324/VHDL/Data_Extraction_System/simulation/modelsim/FIFObuffer.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  FIFObuffer_vhd_tst

add wave *
view structure
view signals
run -all
