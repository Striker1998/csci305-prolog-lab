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
% A blood aunt A is a sister of child C's parent X
aunt(A,C):- sister(A,X), parent(X,C).
% A married aunt A is a female, a spouse of child C's parent Z's sibling X
aunt(A,C):- female(A), spouse(A,X), sibling(X,Z), parent(Z,C).
% A grandparent G is the parent of X who where X is the parent of child C
grandparent(G,C):- parent(G,X), parent(X,C).
% A grandfather F of child C is C's grandparent and male
grandfather(F,C):- grandparent(F,C), male(F).
% A grandfather M of child C is C's grandparent and female
grandmother(M,C):- grandparent(M,C), female(M).
% A grandchild C has a grandparent G and Parent X
grandchild(C,G):- grandparent(G,X), parent(X,C).
% A person X is an Ancestor of Y
ancestor(X,Y):- parent(X,Y).
ancestor(X,Y):- parent(X,Z), ancestor(Z,Y).
% A person X is a decendent of Y
decendent(X,Y):- parent(Y,X).
decendent(X,Y):- parent(Z,X), decendent(Z,Y).
% determines if X is older than Y
older(X,Y):- born(X,A), born(Y,B), A>B.
% determines if X is younger than Y
younger(X,Y):- born(X,A), born(Y,B), B>A.
% determines if X was ruling when Y was born. S is when Reign started and F is when it finished
regentWhenBorn(X,Y):- reigned(X,S,F), born(Y,A), A>S, F>A.
% Cousins X and Y has parents who are siblings
cousin(X,Y):- parent(AU, X), parent(Z,Y), sibling(AU,Z).
