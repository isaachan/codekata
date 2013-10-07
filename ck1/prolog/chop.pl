chop(Index, E, List) :-
  length(List, Length),
  chop(Index, E, List, 0, Length).

chop(-1, _,  [], _, _).
chop( 0, E, [E], _, _).
chop(-1, _, [_], _, _).

chop(Index, Element, List, Start, End) :-
  middleElement(Element, Index, List, Start, End).

chop(Index, E, List, Start, End) :-
  middleElement(MiddleElement, MiddleIndex, List, Start, End),
  ( 
    MiddleElement > E -> chop(Index, E, List, Start, MiddleIndex);
    MiddleElement < E -> chop(Index, E, List, MiddleIndex, End)
  ).

indexOf(E, 0, [E|_]) :- !.
indexOf(E, N, [_|R]) :- N1 is N-1, indexOf(E, N1, R), !.

middleElement(Element, Index, List, Start, End) :-
  Index is div((End-Start), 2) + Start,
  indexOf(Element, Index, List).
