male(albert).
male(bob).

female(alice).
female(yvonne).

parent(albert, alice).
parent(alice, bob).
parent(albert, yvonne).

get_grandparent(Y,X) :-
    parent(Z,X),
    parent(Y,Z).

related(X,Y) :-
    parent(X,Y).

related(X,Y):-
    parent(X,Z),
    related(Z,Y).

father(X,Y) :- parent(X,Y), male(X).
mother(X,Y) :- parent(X,Y), female(X).

sister(X,Y) :- parent(Z,Y), parent(Z,X), female(X), X\==Y.
brother(X,Y) :- parent(Z,X), parent(Z,Y), male(X), X\==Y.

