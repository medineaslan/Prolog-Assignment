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

%distances facts

distance(edirne,edremit,225).
distance(edremit,edirne,225).
distance(edremit,erzincan,1044).
distance(erzincan,edremit,1044).
distance(istanbul,izmir,328).
distance(izmir,istanbul,328).
distance(izmir,ısparta,308).
distance(ısparta,izmir,308).
distance(ısparta,burdur,24).
distance(burdur,ısparta,24).
distance(istanbul,antalya,482).
distance(antalya,istanbul,482).
distance(antalya,gaziantep,592).
distance(gaziantep,antalya,592).
distance(antalya,konya,192).
distance(konya,antalya,192).
distance(konya,ankara,227).
distance(ankara,konya,227).
distance(ankara,van,920).
distance(van,ankara,920).
distance(van,rize,373).
distance(rize,van,373).
distance(istanbul,gaziantep,848).
distance(gaziantep,istanbul,848).
distance(istanbul,ankara,350).
distance(ankara,istanbul,350).
distance(istanbul,van,1262).
distance(van,istanbul,1262).
distance(istanbul,rize,967).
distance(rize,istanbul,967).

sroute(X,Y,Z) :- flight(X,Y),distance(X,Y,Z).
