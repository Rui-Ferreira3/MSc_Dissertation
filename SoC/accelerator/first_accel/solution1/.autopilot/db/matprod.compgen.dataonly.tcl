# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_BUS1 {
m1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
m2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
m3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
N1 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 52
	offset_end 59
}
N2 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 60
	offset_end 67
}
N3 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 68
	offset_end 75
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict BUS1 $port_BUS1


