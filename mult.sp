** Generated for: hspiceD
** Generated on: Nov  9 21:04:12 2022
** Design library name: ECE555
** Design cell name: MULT_fanout
** Design view name: schematic



.INCLUDE "Multiplier.pex.netlist"
.INCLUDE "load_buffer_cell.pex.netlist"

** Library name: ECE555
** Cell name: ADDER_fanout
** View name: schematic
xmult1 VSS! W<1> VDD! X<1> W<0> X<0> Y<0> Y<1> Multiplier
xL0 gnd vdd! Y<1:0> bout0 load_buffer_cell 
xL1 gnd vdd! Y<1:0> bout1 load_buffer_cell 
xL2 gnd vdd! Y<1:0> bout2 load_buffer_cell 
xL3 gnd vdd! Y<1:0> bout3 load_buffer_cell