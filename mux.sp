** Generated for: hspiceD
** Generated on: Nov  9 21:04:12 2022
** Design library name: ECE555
** Design cell name: MULT_fanout
** Design view name: schematic



.INCLUDE "MUX.pex.netlist"
.INCLUDE "load_buffer_cell.pex.netlist"

** Library name: ECE555
** Cell name: ADDER_fanout
** View name: schematic
xm1 VSS! VDD! HIGH Y<2> Y<1> Y<0> Z<2> Z<1> Z<0> MUX
xL0 gnd VDD! Z<2:0> bout0 load_buffer_cell 
xL1 gnd VDD! Z<2:0> bout1 load_buffer_cell 
xL2 gnd VDD! Z<2:0> bout2 load_buffer_cell 
xL3 gnd VDD! Z<2:0> bout3 load_buffer_cell