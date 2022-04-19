v(V) :-edge(_,V).
v(V) :-edge(V,_).

%number of nodes
count_nodes(N) :- N = #count{V: v(V)}.

% k-coloring
#const k=3.

% Possible colors: 
c(1..k).

1 { color(V,C) : c(C) } 1 :- v(V).


problem(X,Y):- edge(X,Y), color(X,C), color(Y,C), X!=Y.

count_problem(C) :- C = #count{A,B: problem(A,B)}.

invalid :- count_problem(C),C > 0.
valid :- not invalid.
    
#show count_nodes/1.
% #show color/2.
#show invalid/0.
#show valid/0.
