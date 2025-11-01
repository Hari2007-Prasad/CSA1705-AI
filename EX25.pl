start(state(left, low, no)).
goal(state(_, high, yes)).

move(state(Pos, low, Has), state(Pos2, low, Has)) :-
    Pos2 = other(Pos).
move(state(Pos, low, no), state(Pos, high, no)) :- climbable(Pos).
move(state(Pos, high, no), state(Pos, high, yes)) :- reachable(Pos).

other(left, right). other(right, left).
climbable(left). climbable(right).
reachable(right).
