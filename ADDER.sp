

** Generated for: hspiceD
** Generated on: Nov  9 21:04:12 2022
** Design library name: ECE555
** Design cell name: AND_fanout
** Design view name: schematic



.INCLUDE "ADDER.pex.netlist"
.INCLUDE "load_buffer_cell.pex.netlist"

** Library name: ECE555
** Cell name: ADDER_fanout
** View name: layout
** Instantiate your FO4 load (pins -> *.SUBCKT load_buffer_cell VSS VDD A Y)
xadder1 VSS! B VDD! A CI CO S ADDER
**xL0 gnd vdd! S bout0 load_buffer_cell 
**xL1 gnd vdd! S bout1 load_buffer_cell 
**xL2 gnd vdd! S bout2 load_buffer_cell 
**xL3 gnd vdd! S bout3 load_buffer_cell
C1 S gnd 3.5f 
C2 CO gnd 3.5f

