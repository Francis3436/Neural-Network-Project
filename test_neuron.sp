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
.INCLUDE "neuron.sp"

v1 vdd! 0 0.9v
v2 vss! 0 0v 

**Testing inputs for Multiplier
**name, input/weight, square wave pulse(vmin, vmax, delay, rise time, fall time, pulse width, period)

v3 X0<0> 0 pulse 0v 0.9v 10ns .025ns .025ns 10ns 200ns 
v4 X0<1> 0 pulse 0v 0.9v 20ns .025ns .025ns 20ns 200ns
v5 W0<0> 0 pulse 0v 0.9v 30ns .025ns .025ns 30ns 200ns
v6 W0<1> 0 pulse 0v 0.9v 40ns .025ns .025ns 40ns 200ns
v7 X1<0> 0 pulse 0v 0.9v 50ns .025ns .025ns 50ns 200ns 
v8 X1<1> 0 pulse 0v 0.9v 60ns .025ns .025ns 60ns 200ns
v9 W1<0> 0 pulse 0v 0.9v 70ns .025ns .025ns 70ns 200ns
v10 W1<1> 0 pulse 0v 0.9v 80ns .025ns .025ns 80ns 200ns
v11 W2<0> 0 pulse 0v 0.9v 60ns .025ns .025ns 90ns 200ns
v12 W2<1> 0 pulse 0v 0.9v 100ns .025ns .025ns 100ns 200ns
v13 W2<2> 0 pulse 0v 0v 110ns .025ns .025ns 110ns 200ns
v14 HIGH 0 pulse 0.9v 0.9v 120ns .025ns .025ns 120ns 200ns 
v15 Ci1 0 pulse 0v 0v 130ns .025ns .025ns 130ns 200ns
v16 Ci2 0 pulse 0v 0v 140ns .025ns .025ns 160ns 200ns

.tr 10ps 300ns

.end