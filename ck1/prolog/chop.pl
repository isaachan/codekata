chop(-1, _, []).
chop(0, E, [E]).

chop(Index, E, List) :-
  length(List, Length),
  chop(Index, E, List, 0, Length).

chop(MiddleIndex, MiddleElement, List, Start, End) :-
  Length is End - Start, 
  MiddleIndex is div(Length, 2) + Start, 
  indexOf(MiddleElement, MiddleIndex, List).

chop(Index, E, List, Start, End) :-
  Length is End -Start,
  MiddleIndex is div(Length, 2) + Start,
  indexOf(MiddleElement, MiddleIndex, List),
  MiddleElement > E,
  chop(Index, E, List, Start, MiddleIndex).

chop(Index, E, List, Start, End) :-
  Length is End - Start,
  MiddleIndex is div(Length, 2) + Start,
  indexOf(MiddleElement, MiddleIndex, List),
  MiddleElement < E,
  chop(Index, E, List, MiddleIndex, End).

indexOf(E, 0, [E|_]) :- !.
indexOf(E, N, [_|R]) :- N1 is N-1, indexOf(E, N1, R), !.
