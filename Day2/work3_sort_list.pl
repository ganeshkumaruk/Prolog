min(A,A,A).
min(A,B,B) :- B < A.
min(A,B,A) :- A < B.

minInList([X|XS], M) :- minInList(XS, M1), min(X, M1, M).
minInList([X], X).

takeout(X, [X|R], R).
takeout(X, [F|R], [F|S]) :- takeout(X,R,S).

mySort(List, [Min|Sorted]) :- 
    minInList(List, Min), 
    takeout(Min, List, Rest), 
    mySort(Rest, Sorted).
mySort([X], [X]).