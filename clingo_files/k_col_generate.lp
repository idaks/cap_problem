
#const n=2.
gnode(X) :- e(X,_).
gnode(X) :- e(_,X).

{ col(X,1..n) } = 1 :- gnode(X).
