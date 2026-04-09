# CNOT decomposition with clean ancilla primitive and with no chain of CNOTs

Take a look at the calculations for the hypergeometric distribution with a deck of cards, black (successes) and red. 

We analyze the case where the following is done with the N-card deck ($\frac{N}{2}$ of them black): 

1. Half of the deck is drawn; black cards are counted
2. The agent decides whether half of the rest of the cards should be drawn or not
3. Half of the rest of the cards are either drawn or not; black cards are counted

Here comes the interesting part: It may seem that, if certain conditions are met, then,  after step 1 is done, one can literally predict if experiment will continue (the agent's decision), based only on the number of black cards in the first draw, using the Bayesian theorem. In fact, the greater the deviation of the first sample is, the bigger the probability of the experiment's continuation:

With the prior probability of continuation being set to 0.5, we get:

$P(Continued|k_0=x) = \frac{P(k_0=x|Continued)*0,5}{P(k_0=x)}$


![The mechanism behind the CNOT as a quantum circut](demo1_QuantumCircuit.svg)

![The corresponding histogram](demo1_histogram.png)


![The CNOT's visualisation as a quantum circuit](CNOT_QuantumCircuit.svg)



Code and the corresponding pictures of the quantum circuits are licensed under GPLv3.
