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
sister(ann, maryalice).
sister(kather,jerry).
parent(warren,jerry).
parent(maryalice,jerry).

parent_of(X,Y):-
    parent(X,Y);
    parent(X,Z),
    sibling(Y,Z).

sibling(X,Y):-
    sister(X,Y);
    brother(X,Y);
    sister(Y,X);
    brother(Y,X).
