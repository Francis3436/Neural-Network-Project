** Generated for: hspiceD
** Generated on: Nov  9 21:04:12 2022
** Design library name: ECE555
** Design cell name: MULT_fanout
** Design view name: schematic



.INCLUDE "Neuron.pex.netlist"
.INCLUDE "load_buffer_cell.pex.netlist"

** Library name: ECE555
** Cell name: ADDER_fanout
** View name: schematic
xm1 VSS! W1<1> W0<1> VDD! X1<1> X0<1> W1<0> W0<0> X1<0> X0<0> CI1 W2<0> W2<1> W2<2> CI2 HIGH Z<2> CO Z<1> Z<0> Neuron
xL0 gnd VDD! Z<2:0> bout0 load_buffer_cell 
xL1 gnd VDD! Z<2:0> bout1 load_buffer_cell 
xL2 gnd VDD! Z<2:0> bout2 load_buffer_cell 
xL3 gnd VDD! Z<2:0> bout3 load_buffer_cell