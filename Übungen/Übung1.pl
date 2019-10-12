%Aufgabe 6

%a) Geben Sie ein Prolog-Programm an, das die Addition auf den natürlichen Zahlen 
%in symbolischer Darstellung implementiert.

%add(X,Y,H) = X+Y= H 

add(o,o,o). %I.A. 0+0=0
add(o,X,X). % 0 + 1 = 1
add(s(X),Y,s(H)) :- add(X,Y,H). %I.S.

% b) Kann man dieses Programm auch für die Subtraktion verwenden? -> Ja Query -> add(s(o),X,s(s(o))).
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



