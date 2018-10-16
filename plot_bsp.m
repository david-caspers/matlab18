%% --- 2D Punktdaten ---

x = 0:0.1:1;            % Erstelle einen Vektor aequidistant 
                        % verteilter Werte von 0 in 0.1-er 
                        % Schritten bis 1
                        
y1 = x.^2;              % Jeder Eintrag in x wird quadriert
y2 = x.^2 - 2*x;        % ..., es wird der Vektor 2*x subtrahiert
y3 = x.^2 - 2*x + 1;    % ... und der konstante Eins-Vektor addiert

plot(x,y1)              % Einfacher plot
hold on                 % Mehrere Graphen in einem Bild
    plot(x,y2,'ro')         % Plotte Punktdaten als rote (r) Kreise (o)
    plot(x,y3,'gs--')       % Plotte Punktdaten als gruene (g) 
                            % Quadrate (s), verbunden durch eine gestrichelte
                            % Linie (--)
hold off

title('Viele Funktionen')   % Titel des Plots
xlabel('x')                 % Beschriftung der x-Achse
ylabel('Funktionswerte')    % Beschriftung der y-Achse
legend('x^2', 'x^2 - 2x', 'x^2 - 2x  + 1'); % Legende

%% Alternativ:
figure                  % Neues Fenster 

plot(x,y1,x,y2,'ro',x,y3,'gs--') % Mehrere Plots in einem Bild
title('Viele Funktionen')   % Titel des Plots
xlabel('x')                 % Beschriftung der x-Achse
ylabel('Funktionswerte')    % Beschriftung der y-Achse
legend('x^2', 'x^2 - 2x', 'x^2 - 2x  + 1'); % Legende

%% --- Function Handles ---

figure                  % Neues Fenster 

f = @(x)(exp(sin(x) * x^2));    % definiere eine Funktion
f(1.2)                          % Werte Funktion bei x=1.2 aus

fplot(f,[0,pi],':')             % Function-Handle plot von f im Intervall
                                % [0,pi], mit gestrichelter (blauer) Linie
                                
title('Die Funktion f(x) = exp(sin(x) x^2)')   % Titel des Plots
xlabel('x')                 % Beschriftung der x-Achse
ylabel('f(x)')              % Beschriftung der y-Achse

%% --- Mehrere Bilder in einem Fenster ---

figure                  % Neues Fenster 

subplot(1,2,1) % Erstelle 1x2 (Zeile x Spalte) Bilder im gleichen Fenster 
               % und zeichne in das erste

    hold on
        fplot(f,[0,pi],':')     % Function-Handle plot von f im Intervall
        plot(x,y1)              % Einfacher plot
        title('2 Funktionen')   % Titel des Plots
        xlabel('x')                 % Beschriftung der x-Achse
        ylabel('f(x)')              % Beschriftung der y-Achse
        legend('Funktion 1', 'Funktion 2'); % Legende   
    hold off
   
 subplot(1,2,2) % Zeichne in das zweite Bild

   plot(x,y1,x,y2,'ro',x,y3,'gs--') % Mehrere Plots in einem Bild
    title('Viele Funktionen')   % Titel des Plots
    xlabel('x')                 % Beschriftung der x-Achse
    ylabel('Funktionswerte')    % Beschriftung der y-Achse
    legend('x^2', 'x^2 - 2x', 'x^2 - 2x  + 1'); % Legende


