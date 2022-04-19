v(X) :- edge(X,_).
v(X) :- edge(_,X).

% Test whether there are "bad" edges (with same color): 
bad :- edge(X,Y), color(X,C), color(Y,C).

good :- not bad.


#show bad/0.
#show good/0.
%#show color/2.
