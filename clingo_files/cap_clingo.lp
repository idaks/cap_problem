edge(2, 4).
edge(1, 3).
edge(3, 5).
edge(4, 5).
edge(1, 5).
edge(1, 4).
edge(3, 4).
edge(1, 2).
m(X) :- edge(X,_).
m(X) :- edge(_,X).
con(X,Y):-edge(X,Y).
req (X):- con(X,_).
req (X):- con(_,X).
uses(X,Y):- m(X),req(Y),X=Y.
box(1..3).
1 { on(B,M) : box(B) } 1  :- m(M).
inst(B,R) :- on(B,M), uses(M,R).
:- con(R1,R2), R1 != R2, inst(B,R1), inst(B,R2).