%Se desa aproximar la función
%f(x)= 1/(1+x^2) en el intervalo [-5,5]
%con grado menor o igual a n = 15 
n = 15;
x = linspace(-5, 5, n+1);
y = 1./(1+x.^2);
p = polyfit(x, y, n);

z = 5*cos(((2*(1:n+1)-1)*pi)/(2*(n+1)));
u = 1./(1+z.^2);
q = polyfit(z, u, n);
xx = linspace(-5, 5, 1000);
yy = 1./(1+(xx).^2);
pp = polyval(p, xx);
qq = polyval(q, xx);
hold on 
title('Aproximación de f(x) por interpolación de polinomios')
plot(xx, yy, 'k', xx, pp, 'r', xx, qq, 'b');
legend('f(x)', 'p(x)', 'q(x)');