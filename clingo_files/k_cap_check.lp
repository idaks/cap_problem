

inst(B,R) :- on(M,B), uses(M,R).
 :- has_conflict(R1,R2), inst(B,R1), inst(B,R2).

#show inst/2.
