% Guess a color for vertex V: 
% color(V,black) ; color(V,white) :- v(V).

color(V,black) :- v(V), not color(V,white).
color(V,white) :- v(V), not color(V,black).
