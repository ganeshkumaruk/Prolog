append2([],Ys,Ys).
append2([X|Xs],Ys,[X|Zs]) :- append2(Xs,Ys,Zs).