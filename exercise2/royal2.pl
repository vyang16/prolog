child(charles, elizabeth).
child(ann, elizabeth).
child(andrew, elizabeth).
child(edward, elizabeth).

male(charles).
male(andrew).
male(edward).

female(ann).
female(elizabeth).

older(charles,ann).
older(ann, andrew).
older(andrew, edward).

higherrank(X,Y):-
    is_older(X,Y).

is_older(X,Y):-
    older(X,Y);
    older(X,Z),
    is_older(Z,Y).

successionList(X, List):-
    findall(Y,child(Y,X), Children),
    succession_sort(Children, List).

succession_sort([],[]).
succession_sort([A|B], Sorted):- succession_sort(B, SortedTail), insert(A,SortedTail, Sorted).

insert(A, [B|C], [B|D]) :- not(higherrank(A,B)), !, insert(A, C, D).
insert(A, C, [A|C]).
