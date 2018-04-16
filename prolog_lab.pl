% Kyle Webster
% CSCI 305 Prolog Lab 2

% A mother M is female and is the parent of child C
mother(M,C):- female(M), parent(M,C).
% A father F is male and is the parent of child C
father(F,C):- male(F), parent(F,C).
% A spouse S is male and is married to partner X
spouse(S,X):- male(S), married(S,X).
% A spouse S is female and is married to partner X
spouse(S,X):- female(S), married(X,S).
% A child C is child of parent X
child(C, X):- parent(X,C).
% A daughter D is female and child of parent X
daughter(D,X):- female(D), parent(X,D).
% A son S is male and child of parent X
son(D,X):- male(D), parent(X,D).
% A sibling X has same father and mother of sibling Y and X and Y are not the same
sibling(X,Y):- father(F,X),father(F,Y), mother(M,X),mother(M,Y), X\=Y.
% A brother B is male and sibling of X
brother(B, X):- male(B), sibling(B,X).
% A sister S is female and sibling of X
sister(S,X):- female(S), sibling(S,X).
% A blood uncle U is brother of child C's parent X
uncle(U,C):- brother(U,X), parent(X, C).
% A married uncle U is male, spouse of child C's parent Z's sibling X
uncle(U,C):- male(U), spouse(U,X), sibling(X,Z), parent(Z,C).
