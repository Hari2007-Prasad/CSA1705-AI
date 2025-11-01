parent(alice, bob).
parent(bob, charlie).
parent(alice, diana).
grandparent(X,Z) :- parent(X,Y), parent(Y,Z).
sibling(X,Y):- parent(P,X), parent(P,Y), X\=Y.
