move(0,_,_,_) :- !.
move(N,A,B,C) :-
  N>0, M is N-1,
  move(M,A,C,B),
  format('Move disk ~w from ~w to ~w~n',[N,A,B]),
  move(M,C,B,A).
