reverseA([X], X).
reverseA([X|R], Result) :- reverse(R, T), append(T, [X], Result).