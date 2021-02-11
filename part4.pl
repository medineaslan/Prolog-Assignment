:-style_check(-singleton).

element(E,S) :- member(E,S).


same(X,Y):-  foreach(element(I,X),element(I,Y)).
control(X,Y,Z):- foreach(element(I,Z),element(I,X);element(I,Y)).           

union(S1,S2,S3):-same(S1,S3), 
                 same(S2,S3),
                 control(S1,S2,S3).

overlap(X,Y,Z):-foreach((element(I,X),element(I,Y)),element(I,Z)).
intersectFlag(X,Y,Z):- foreach(element(I,Z),(element(I,X),element(I,Y))).

intersect(S1,S2,S3):-overlap(S1,S2,S3),
                     intersectFlag(S1,S2,S3).  

equivalent(S1,S2):-S1==S2.
