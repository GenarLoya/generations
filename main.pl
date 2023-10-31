%Definition of sex.
male(ken).
male(rene).
male(fernando).
male(ernesto).
male(richard).

female(juana).
female(lucia).
female(kenia).
female(maria).
female(remina).
female(rogelia).
female(mariana).
female(alondra).


% Definition of family relations
% father(X, Y) means X is the father of Y


parent(ken, rene).
parent(ken, lucia).

parent(ernesto, richard).
parent(ernesto, rogelia).

parent(richard, kenia).
parent(richard, fernando).

parent(juana, rene).
parent(juana, lucia).

parent(remina, richard).
parent(remina, rogelia).

parent(mariana, alondra).

parent(lucia, kenia).
parent(lucia, fernando).

parent(kenia, maria).

mother(X,Y):- parent(X,Y),female(X).
father(X,Y):- parent(X,Y),male(X).
haschild(X):- parent(X,_).
sister(X,Y):- parent(Z,X),parent(Z,Y),female(X),X\==Y.
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\==Y.
