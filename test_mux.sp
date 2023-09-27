.GLOBAL vss! vdd!
.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    HIER_DELIM=0
.options accurate=1 NUMDGT=8 measdgt=5 GMINDC=1e-18 DELMAX=1n method=gear INGOLD=2 POST=1
.INCLUDE "/cae/apps/data/asap7PDK-2022/asap7PDK_r1p7/models/hspice/7nm_TT_160803.pm"
.INCLUDE "mux.sp"

v1 vdd! 0 0.9v
v2 vss! 0 0v 


**Testing inputs for Mux
v3 HIGH 0 pulse 0.9v 0.9v 1ns .025ns .025ns 20ns 40ns 
v4 Y<2> 0 pulse 0v 0.9v 2ns .025ns .025ns 20ns 40ns  
v5 Y<0> 0 pulse 0v 0.9v 3ns .025ns .025ns 20ns 40ns  
v6 Y<1> 0 pulse 0v 0.9v 6ns .025ns .025ns 20ns 40ns  

.tr 10ps 60ns

.end