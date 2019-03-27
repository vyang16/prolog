boss(s).
smartphonetech(s3).
competitor(ss,a).
developed(s3,ss).
steals(s,s3,ss).

unethical(X):-
    boss(X),
    business(Y),
    rival(Z),
    steals(X,Y,Z).

rival(X):-
    competitor(X,a).

business(X):-
    smartphonetech(X).
