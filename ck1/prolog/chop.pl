chop(-1, _, []).
chop(0, E, [E]).

chop(Index, E, List) :-
  length(List, Length),
  chop(Index, E, List, 0, Length).

chop(MiddleIndex, E, List, Start, End) :-
  Length is End -Start,
  MiddleIndex is Length / 2,
  indexOf(MiddleElement, MiddleIndex, List).

indexOf(E, 0, [E|_]) :- !.
indexOf(E, N, [_|R]) :- N1 is N-1, indexOf(E, N1, R), !.
