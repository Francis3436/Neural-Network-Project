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
.INCLUDE "ADDER.sp"

v1 vdd! 0 0.9v
v2 vss! 0 0v
**v3 A gnd pwl (0ns 0.9v .975ns 0.9v      1ns 0v 1.975ns 0v   2ns 0.9v 2.975ns 0.9v   3ns 0.9v 3.975ns 0.9v   4ns 0v 4.975ns 0v       5ns 0v 5.975ns 0v       6ns 0v 6.975ns 0v       7ns 0.9v 7.975ns 0.9v   8ns 0.9v)
**v4 B gnd pwl (0ns 0.9v .975ns 0.9v      1ns 0v 1.975ns 0v   2ns 0.9v 2.975ns 0.9v   3ns 0v 3.975ns 0v       4ns 0.9v 4.975ns 0.9v   5ns 0.9v 5.975ns 0.9v   6ns 0v 6.975ns 0v       7ns 0.9v 7.975ns 0.9v   8ns 0.9v)
**v5 Ci gnd pwl (0ns 0.9v .975ns 0.9v     1ns 0v 1.975ns 0v   2ns 0v 2.975ns 0v       3ns 0v 3.975ns 0v       4ns 0v 4.975ns 0v       5ns 0.9v 5.975ns 0.9v   6ns 0.9v 6.975ns 0.9v   7ns 0.9v 7.975ns 0.9v   8ns 0.9v)

v3 A 0 pulse 0v 0.9v 5ns .025ns .025ns 20ns 40ns
v4 B 0 pulse 0v 0.9v 5ns .025ns .025ns 20ns 40ns
v5 Ci 0 pulse 0v 0.9v 5ns .025ns .025ns 40ns 80ns

.tr 10ps 100ns


.end