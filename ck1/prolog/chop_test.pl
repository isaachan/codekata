:- ['chop.pl'].

test :-
  indexOf(a, 0, [a,b,c]),
  indexOf(c, 2, [a,b,c]),

  chop(-1, 1, []),
  chop(0, 10, [10]),
  chop(1, 11, [10, 11]).

