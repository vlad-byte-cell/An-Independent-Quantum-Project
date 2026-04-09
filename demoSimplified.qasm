OPENQASM 2.0;
include "qelib1.inc";
qreg q[1];
qreg ancilla[3];
creg c[2];

ry(1.9106332362490185563277142) q[0];
h ancilla[2];
// @phaseDisk
barrier q, ancilla; // @phaseDisk
h ancilla[0];
ch ancilla[2], ancilla[1];
cz q[0], ancilla[0];
cx ancilla[0], ancilla[1];
h ancilla[0];
barrier q, ancilla; // @phaseDisk
measure ancilla[0] -> c[1];
barrier q, ancilla; // @phaseDisk
measure ancilla[2] -> c[0];
barrier q, ancilla;
reset ancilla;
reset q[0];
