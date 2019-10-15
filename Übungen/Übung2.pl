%Aufgabe 3
%a) Geben Sie ein Prolog Programm an, das die Exponentiation auf den natürlichen Zahlen in
%symbolischer Darstellung implementiert. D.h.: es soll die Funktion exp(a,b) = a^b
%implementiert werden. (Sie können hierzu add und mult verwenden!).
%mult(X,Y,H) X * Y = H
mult(o,X,o).
mult(s(X),Y,H) :-  add(Help,Y,H),mult(X,Y,Help).
%exp(X,Y,R) = X hoch Y = R
exp(X,o,s(o)).
exp(o,Y,o).

%3^4 = 3* 3 * 3 * 3
%I.S.
exp(X,s(Y),R) :- exp(X,Y,H), mult(H,X,R).

%b) Kann man dieses Programm auch für den Logarithmus verwenden?
%Wenn ja, implementieren Sie unter Verwendung der Relation aus a) eine Relation, die den Logarithmus zu einer 
%einzugebenden Basis berechnet.

%exp(Y,R,X) 
%log(X,B,R) :- B ist die Basis von X = R
logi(X,B,R) :- exp(B,R,X).

%c) Kann man in Ihren Prolog-Relationen aus a) und b) auch andere Termine als natürliche Zahlen
%in Symbolischer Darstellung verwenden?
%Wenn ja wie kann man das verhindern?
%Ja, man muss die Prolog programme nur mit NatSym erweitern


%Aufgabe 10
%a) Implementieren Sie eine 1stellige Typrelation natList, die Listen von natürlichen Zahlen in
%symbolischer Darstellung enthält.
%I.A
natList(nil).
natList(list(X,Xs)) :-  nat(X), natList(Xs).

%b) Geben Sie ein Prolog-Programm an, das eine 1-stellige Relation invList definiert, die Listen
% der ersten n natürlichen Zahlen in symbolischer Darstellung und umgedrehter Reihenfolge enthält,
%für beliebige natürliche Zahlen n.
%bsp: Es gilt: invList(list(s(s(o)),list(s(o),list(o,nil)))))

%Aufgabe 11
%a) Geben Sie eine induktive Definition für die Anzahl der FUnktoren eines beliebigen Termes an.

%b) Geben Sie eine induktive Definition für die Anzahl der Variablen und Konstanten in einem Term an.

%Aufgabe 12
%Listen mit beliebigen Einträgen seien wie in der Vorlesung mittels der Konstanten nil für die leere
%Liste und dem zweistelligen Funktor list beschrieben.
%Implementieren Sie die folgenden Relationen:
%a) head(Xs,X) -> X ist das erste Element der Liste Xs
%b) tail(Xs,Ys) -> Ys ist die Liste Xs ohne deren erstes Element.
%c) append(Xs,Ys,Rs) -> Dabei ergibt sich die Liste Rs durch Anhängen der Liste Ys an die Liste Xs

%Aufgabe 13
%Geben Sie von der Darstellung eines Graphen durch Angabe der Kanten als Relation kante aus Aufgabe 9 aus.
%Erweitern Sie die Prolog-Implementierung, indem Sie die folgende Relation implementieren:
%a) wegstrecke(X,Y,Knotens).-> Die Liste Knotens enthält die Knoten auf dem gefunden Weg zwischen X und Y
%b) Wie kann man mittels des Prädikats aus a) alle Wege zwischen zwei Konaten erhalten?
