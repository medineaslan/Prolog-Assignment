% completed
when(102,10).
when(108,12).
when(341,14).
when(455,16).
when(452,17).

where(102,z23).
where(108,z11).
where(341,z06).
where(455,207).
where(452,207).

enroll(a,102).
enroll(a,108).
enroll(b,102).
enroll(c,108).
enroll(d,341).
enroll(e,455).

schedule(S,P,T):- enroll(S,X),
				  where(X,P), 
				  when(X,T).

usage(P,T):- where(S,P),
			 when(S,T).

conflict(X,Y) :- where(X, P1),
				 where(Y, P2),
				 P1 == P2.

conflict(X,Y) :- when(X, T1),
				 when(Y, T2),
				 T1 == T2.

meet(X,Y):- enroll(X,C1),
            enroll(Y,C2),
            where(C1,P1),
            where(C2,P2),
            when(C1,T1),
            when(C2,T1),
            C1==C2,
            P1==P2,
            X\=Y,
            !.

