figure

f1=@(x)(sin(x))
f2=@(x)(cos(x))
f3=@(x)(sin(x)*cos(x))

hold on
    fplot(f1,[-pi,pi],'b')
    fplot(f2,[-pi,pi],'r--')
    fplot(f3,[-pi,pi],'g-.')
hold off

title("Trigonometrische Funktionen")
xlabel("\theta")
ylabel("f_i(\theta), 1 \leq i \leq 3")
legend('f_1(\theta) = sin(\theta)','f_2(\theta) = cos(\theta)','f_3(\theta) = sin(\theta) \cdot cos(\theta)')