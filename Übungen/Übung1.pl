%Aufgabe 6

%a) Geben Sie ein Prolog-Programm an, das die Addition auf den natürlichen Zahlen 
%in symbolischer Darstellung implementiert.

%add(X,Y,H) = X+Y= H 

add(o,X,X). % 0 + 1 = 1
add(s(X),Y,s(H)) :- add(X,Y,H). %I.S.

% b) Kann man dieses Programm auch für die Subtraktion verwenden? -> Ja Query -> add(s(o),Z,s(s(o))).
% d.h. man kann eine Variabel in die ersten beiden schreiben und die letzte ausfüllen.


% c) Wie kann man dieses Programm auch zum halbieren verwenden?
% Query -> add(Z,Z,Konstante) -> Z + Z muss die Konstante ergeben.


%d) Kann man das Prolog Programm aus a) auch andere Terme als natürliche Zahlen in symbolischer Darstellung verwenden.
%   Wenn ja, wie kann man das verhindern?

%Man kann alles einsetzen um das zu verhindern muss man die symbolische Darstellung definieren.
natSym(o). %I.A.
natSym(s(X)) :- natSym(X). %I.S.

% e) Erweitern Sie um eine Relation mult, die im 3. Argument das Produkt Ihrer ersten beiden Argumente liefert.^^
%mult(X,Y,H) X * Y = H
mult(o,X,o).
mult(s(X),Y,H) :-  add(Help,Y,H),mult(X,Y,Help).

%Aufgabe 7 
% c) Geben Sie eine Induktive Definition für die Höhe eines Termes an. Dabei ist die Höhe die Anzahl der Kanten auf dem längsten Ast.
%height(N) -> N gleich die Höhe
%height(N) = 0, wenn N eine Variabel oder Konstante ist.
%height(N) 1 + ..... wenn N funktoren besitzt 


%Aufgabe 8
%a) eqZero(X) -> X ist gleich 0
eqZero(o).

%b) neqZero(X) -> X ist ungleich 0
neqZero(s(X)) :-natSym(X).

%c)less(X,Y) -> X ist kleiner als Y
less(X,Y) :- natSym(Y), natSym(X), add(X,H,Y), neqZero(H). 

%d) square(X,Y) -> Y ist X^2
%I.A.
square(X,Y) :- natSym(X), natSym(Y), mult(X,X,Y).

%Aufgabe 9 
%a) Stellen Sie obigen Graph als Prolog Programm dar
%kante(X,Y) :- X geht nach Y
kante(b,c).
kante(a,b).
kante(a,e).
kante(e,d).
kante(a,d).
kante(a,c).
kante(b,e).
kante(c,d).
kante(e,c).
kante(b,d).

%b) Erweitern Sie Ihr Prolog-Programm aus a) durch Hinzunahme von Regeln um ein Prädikat
%   weg(X,Y), das ein Wert true genau dann liefer, wenn man von X nach Y über einen gerichteten Weg kommt.
%   Also z.B. liefern weg(a,c) und weg(a,a) den wert True und weg(b,a) den Wert false.

%weg(X,Y) X->Y
weg(X,X).
weg(X,Y) :- kante(X,HZwischen), weg(HZwischen,Y).

%c) Erweitern Sie Ihr Prolog-Programm aus b) durch Hinzunahme von Regeln um ein Prädikat wegLänge(X,Y,Länge) das n der 3. Komponente
%   die Länge des gefundenen Weges als symbolische Zahl liefert.
%   z.B. ist das Tupel (a,c,s(s(s(s(O)))) in der Relation wegLänge da es einen Weg von a nach c der länge 3 gibt 

%wegLänge(X,Y,Länge) :- Der Weg von X nach Y wird in Länge gespeichert
weglänge(X,X,o). %I.A.
weglänge(X,Y,s(Länge)) :- kante(X,HZwischen), weglänge(HZwischen,Y,Länge).


