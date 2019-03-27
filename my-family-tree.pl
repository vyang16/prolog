male(ke).
male(kevin).
male(gang).
male(naiqiao).
male(yuanxiang).

female(viviane).
female(yvonne).
female(li).
female(liying).
female(shirong).
female(liping).

sister(yvonne, viviane).
sister(viviane, yvonne).
sister(li, gang).
brother(gang, li).

parent_of(naiqiao,ke).
parent_of(liying, ke).
parent_of(shirong, li).
parent_of(yuanxiang, li).
parent_of(shirong, gang).
parent_of(yuanxiang, gang).
parent_of(li, viviane).
parent_of(ke, viviane).
parent_of(li, yvonne).
parent_of(ke, yvonne).
parent_of(gang, kevin).
parent_of(liping, kevin).

father(X,Y) :-
    parent_of(X,Y),
    male(X).

mother(X,Y) :-
    parent_of(X,Y),
    female(X).

son(X,Y) :-
    parent_of(Y,X),
    male(X).

daughter(X,Y) :-
    parent_of(Y,X),
    female(X).

grandfather(X,Y) :-
    parent_of(X,Z),
    parent_of(Z,Y),
    male(X).

sibling(X,Y) :-
    brother(X,Y), X\==Y;
    sister(X,Y), X\==Y.

spouse(X,Y) :-
    parent_of(X,Z),
    parent_of(Y,Z),
    X\==Y.

aunt(X,Y) :-
    spouse(X,Z),
    brother(Z,W),
    parent_of(W,Y);
    sister(X,T),
    parent_of(T,Y).

uncle(X,Y) :-
    spouse(X,Z),
    sister(Z,W),
    parent_of(W,Y);
    brother(X,T),
    parent_of(T,Y).

cousin(X,Y) :-
    parent_of(T,X),
    uncle(T,Y).






