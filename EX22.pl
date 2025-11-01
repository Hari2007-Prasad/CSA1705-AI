bird(sparrow).
bird(ostrich).
can_fly(X) :- bird(X), not(heavy(X)).
heavy(ostrich).
