edge(a,b,1).
edge(a,c,4).
edge(b,d,2).
edge(c,d,1).
heuristic(a,3).
heuristic(b,2).
heuristic(c,1).
heuristic(d,0).

best_first(Start,Goal,Path) :-
  best([node(Start,[],H)],Goal,Path).
best([node(Goal,Path,_)|_],Goal,[Goal|Path]).
best([node(N,Path,_)|Rest],Goal,Sol) :-
  findall(node(M,[N|Path],H2), (edge(N,M,_), heuristic(M,H2)), Children),
  append(Rest, Children, NewOpen),
  sort(3, @=<, NewOpen, Sorted),
  best(Sorted,Goal,Sol).
