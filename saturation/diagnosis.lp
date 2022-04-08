v(V):-edge(_,V).
v(V):-edge(V,_).

%number of nodes
count_nodes(N) :- N = #count{V: v(V)}.

% k-coloring
#const k=2.

% Possible colors: 
c(1..k).

1 {color(V,C):c(C)} 1 :- v(V).

problem(X,Y):- edge(X,Y), color(X,C), color(Y,C), X!=Y.

count_problem(C) :- C = #count{A,B: problem(A,B)}.

:- count_problem(C),C!=0.

#show count_nodes/1.