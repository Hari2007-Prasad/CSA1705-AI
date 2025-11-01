match_prefix([H|T],H,T).
match_suffix(List, Last, Init) :- append(Init,[Last],List).
