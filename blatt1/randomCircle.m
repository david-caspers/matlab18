function[] = randomCircle(n)
%
%
x = -1 + (1+1).*rand(n,1);
y = -1 + (1+1).*rand(n,1);

hold on
    for i = 1:n
        Z = [x(i); y(i)];
        if norm(Z,2) <= 1
            plot(x(i),y(i),'r.')
        else
            plot(x(i),y(i),'bs')
        end;
    end;
hold off

title("Random Circle")
xlabel("x1")
ylabel("x2")