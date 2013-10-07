chop(-1, _, []).
chop(0, E, [E]).


indexOf(E, 0, [E|_]).
indexOf(E, N, [_|R]) :- N1 is N-1, indexOf(E, N1, R).
