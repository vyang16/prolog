male(jerry).
male(stuart).
male(warren).
male(peter).
female(kather).
female(maryalice).
female(ann).
brother(jerry,stuart).
brother(jerry,kather).
brother(peter, warren).
sister(ann, mayalice).
sister(kather,jerry).
parent(warren,jerry).
parent(maryalice,jerry).

parent_of(X,Y):-
    parent(X,Y);
    sibling(Y,Z),
    parent(X,Z).

sibling(X,Y):-
    sister(X,Y);
    brother(X,Y);
    sister(Y,X);
    brother(Y,X).
