female(li).
female(viviane).
female(yvonne).
female(liping).
female(shirong).
female(liying).

male(kevin).
male(yuanxiang).
male(ke).
male(naiqiao).
male(gang).

sister(yvonne,viviane).
brother(gang,li).

parent(shirong,li).
parent(yuanxiang,li).
parent(li,viviane).
parent(ke,viviane).
parent(liying,ke).
parent(naiqiao,ke).
parent(gang,kevin).
parent(liping,kevin).

parent_of(X,Y):-
    parent(X,Y);
    sibling(Y,Z),
    parent(X,Z).

father(X,Y):-
    parent_of(X,Y),
    male(X).

mother(X,Y):-
    parent_of(X,Y),
    female(X).

son(X,Y):-
    parent_of(Y,X),
    male(X).

daugther(X,Y):-
    parent_of(Y,X),
    female(X).

grandfather(X,Y):-
    parent_of(X,Z),
    parent_of(Z,Y),
    male(X).

sibling(X,Y):-
    sister(X,Y);
    brother(X,Y);
    sister(Y,X);
    brother(Y,X).

aunt(X,Y):-
    sibling(X,Z),
    parent_of(Z,Y),
    female(X);
    spouse(X,T),
    sibling(T,G),
    parent_of(G,Y),
    female(X).

uncle(X,Y):-
    sibling(X,Z),
    parent_of(Z,Y),
    male(X).

spouse(X,Y):-
    parent_of(X,Z),
    parent_of(Y,Z),
    X\==Y.

cousin(X,Y):-
    parent_of(Z,X),
    uncle(Z,Y).
