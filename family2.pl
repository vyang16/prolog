brother(peter, warren).
brother(jerry,kather).
brother(jerry,stuart).
male(stuart).
male(peter).
male(warren).
male(jerry).
female(kather).
female(ann).
female(maryalice).
sister(kather,jerry).
sister(ann, maryalice).
parent(maryalice,jerry).
parent(warren,jerry).

parent_of(X,Y):-
    parent(X,Y);
    sibling(Y,Z),
    parent(X,Z).

sibling(X,Y):-
    sister(X,Y);
    brother(X,Y);
    sister(Y,X);
    brother(Y,X).
