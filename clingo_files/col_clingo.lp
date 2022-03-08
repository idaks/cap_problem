edge(2, 4).
edge(1, 3).
edge(3, 5).
edge(4, 5).
edge(1, 5).
edge(1, 4).
edge(3, 4).
edge(1, 2).
#const n = 3.
{ color(X,1..n) } = 1 :- node(X).
node(X) :- edge(X,_).
node(X) :- edge(_,X).
:- edge(X,Y), color(X,C), color(Y,C).