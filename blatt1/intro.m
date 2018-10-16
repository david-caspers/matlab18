%% --- Vektoren --- 
disp('VEKTOREN -------------------')
v = [1 3 7]   % Zeilenvektor
w = [1; 3; 7] % Spaltenvektor 
x = 1:10      % Zeilenvektor von 1 bis 10
x = 1:0.5:4   % Zeilenvektor von 1 bis 4 in 0.5-Schritten
x'            % Transponieren 

%% --- Matrizen ---
disp('MATRIZEN -------------------')

A = [1 2 3; 4 5 6; 7 8 9]
B = eye(3, 3)  % 3 x 3 - Einheitsmatrix 
C = ones(3, 4) % 3 x 4 - Matrix aus Einsen

%% --- Zugriff auf Elemente --- 
disp('ZUGRIFF AUF ELEMENTE -------------------')

v
v(1)
v(1:2)
A
A(1, 3)
A(:, 1)     % erste Spalte
A(2, :)     % zweite Zeile
A(1:2, 1:2) % oberer, linker 2x2 Block 

%% --- Arithmetik ---
disp('ARITHMETIK -------------------')

A
x = (1:3)'
y = [5; 4; 3]
x + y          % Addition
A * x          % Matrix-Vektor-Produkt
y' * A         % dito 
A * C          % Matrix-Matrix-Produkt
x' * y         % Skalarprodukt

% Achtung: Die Dimensionen muessen
%          zueinander passen!!
try                % Versuche den nachfolgendne Befehl auszufuehren
    x * A          % Fehler
catch err          % Falls ein Fehler auftritt, tue folgendes
   err             % Ausgabe der Fehlermeldung
   size(x)         % Ausgabe der Groesse des Vektors x
   size(A)         % Ausgabe der Groesse der Matrix A
   size(x,1)       % Anzahl der Zeilen von x
   size(A,2)       % Anzahl der Spalten von A
end

%% --- Elementweise Operationen ---
disp('OPERATIONEN -------------------')

%  --- fuer Vektoren            ---
v = [1; 3; 7]
w = [7; 3; 1]
v .* w
v ./ w
sin(v)
cos(w)

%  --- fuer Matrizen            ---
A = [1 2 3; 2 3 4; 3 4 5]
A .* eye(3, 3)
A * 5

%% --- Plotten von Daten        ---

% Vektor anlegen fuer Intervall [0, pi],
% das Semikolon unterdrueckt die Ausgabe
x = (0:100) * pi / 100;       % etwas umstaendlich
x = linspace( 0, pi, 101);    % macht dasselbe
y = sin(x);
plot(x, y);

