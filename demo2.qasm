OPENQASM 2.0;
include "qelib1.inc";

gate ry1 q0 {
  ry(1.9106332362490185563277142) q0;
}
gate ccz q0, q1, q2 {
  h q2;
  cz q1, q2;
  rz(-pi / 4) q2;
  cz q0, q2;
  rz(pi / 4) q2;
  cz q1, q2;
  rz(-pi / 4) q2;
  cz q0, q2;
  rz(pi / 4) q1;
  rz(pi / 4) q2;
  h q2;
  cz q0, q1;
  rz(-pi / 4) q0;
  rz(pi / 4) q1;
  cz q0, q1;
  h q2;
}
gate cx1 q0, q1 {
  h q1; cz q0, q1; h q1;
}
gate ccx1 q0, q1, q2 {
  h q2; ccz q0, q1, q2; h q2;
}
gate x1 q0 {
  h q0; z q0; h q0;
}
qreg q[1];
qreg ancilla[3];
creg cregone[2];

//Dicke States:
ry(1.9106332362490185563277142) q[0];
h ancilla[2];
// @phaseDisk
// Simultaneous non-demolition parity + Hamming weight measurement
// Parity encoding on ancilla[0]
// Hamming weight encoding on ancilla[1]
// Perform the measurements, reset qubits
barrier q, ancilla; // @phaseDisk
h ancilla[0];
ch ancilla[2], ancilla[1];
cz q[0], ancilla[0];
cx ancilla[0], ancilla[1];
h ancilla[0];
barrier q, ancilla; // @phaseDisk
measure ancilla[0] -> cregone[1];
barrier q, ancilla; // @phaseDisk
measure ancilla[2] -> cregone[0];
barrier q, ancilla;
reset ancilla[0];
reset ancilla[1];
reset ancilla[2];
reset q[0];
