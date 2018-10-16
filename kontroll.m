%% --- Kontrollstrukturen ---
% --- Verzweigungen ---
x = -9;

% Betrag von x ausgeben
if x > 0 then 
  disp(x); 
else 
  disp(-x); 
end;

y = 5;

% x und y vertauschen, falls x < y
if x < y 
  t = x;
  x = y;
  y = t;
end
x, y

%% --- Schleifen ---
for i = 1:5
  disp(i); 
end;

x = (1:10) / 5
s = 0
for i = x    % i laeuft ueber die Elemente von x 
  s = s + i
end

N = 1;
while N*N <= 1000
  N = N + 1; 
end
disp(['Die kleinste Quadratzahl groesser als 1000 ist ', num2str(N*N)]); 
	
