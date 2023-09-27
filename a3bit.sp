** Generated for: hspiceD
** Generated on: Nov  9 21:04:12 2022
** Design library name: ECE555
** Design cell name: MULT_fanout
** Design view name: schematic



.INCLUDE "ADDER_3bit.pex.netlist"
.INCLUDE "load_buffer_cell.pex.netlist"

** Library name: ECE555
** Cell name: ADDER_fanout
** View name: schematic
xm1 VSS! B<0> VDD! A<0> B<1> A<1> B<2> A<2> CI S<0> CO S<1> S<2> ADDER_3bit
xL0 gnd VDD! S<2:0> bout0 load_buffer_cell 
xL1 gnd VDD! S<2:0> bout1 load_buffer_cell 
xL2 gnd VDD! S<2:0> bout2 load_buffer_cell 
xL3 gnd VDD! S<2:0> bout3 load_buffer_cell