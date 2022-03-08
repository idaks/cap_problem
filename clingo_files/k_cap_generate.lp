
box(1..3).
mod(M) :- uses(M,_).
%% This works: for each M, choose exactly one B:
1 { on(M,B) : box(B) } 1  :- mod(M).