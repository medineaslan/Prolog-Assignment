% knowledge base

flight(edirne, edremit).
flight(edremit, edirne).
flight(edremit, erzincan).
flight(erzincan, edremit).
flight(istanbul, izmir).
flight(izmir, istanbul).
flight(izmir, ısparta).
flight(ısparta, izmir).
flight(ısparta, burdur).
flight(burdur, ısparta).
flight(istanbul, antalya).
flight(antalya, istanbul).
flight(antalya, gaziantep).
flight(gaziantep, antalya).
flight(antalya, konya).
flight(konya, antalya).
flight(konya, ankara).
flight(ankara, konya).
flight(ankara, van).
flight(van, ankara).
flight(van, rize).
flight(rize, van).
flight(istanbul, gaziantep).
flight(gaziantep, istanbul).
flight(istanbul, ankara).
flight(ankara, istanbul).
flight(istanbul, van).
flight(van, istanbul).
flight(istanbul, rize).
flight(rize, istanbul).

% rules

find_route(Vac, X, Y) :- flight(X, Y),
					   not(member(Y, Vac)). 

find_route(Vac, X, Y) :- flight(X, Temp), 
					   not(member(Temp,Vac)), 
					   find_route([Temp|Vac], Temp, Y), 
					   not(flight(X, Y)). 

route(X, Y) :- find_route([X], X, Y). 
