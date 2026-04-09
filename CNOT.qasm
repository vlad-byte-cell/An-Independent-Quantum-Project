OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
qreg anc[1];
creg c[2];
h q[1];
cx q[1], anc[0];
tdg anc[0];
cx q[0], anc[0];
t anc[0];
cx q[1], anc[0];
x q[1];
cx q[1], anc[0];
tdg anc[0];
cx q[0], anc[0];
t anc[0];
cx q[1], anc[0];
h q[1];
barrier q, anc;
measure q[1] -> c[1];
measure q[0] -> c[0];


