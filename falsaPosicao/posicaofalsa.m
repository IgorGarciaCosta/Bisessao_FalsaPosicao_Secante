%%%%%%%%%%%%%%%%%%%%F2NUM - Calculo Numerico%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%-------------------- ZEROS DE FUNCOES REAIS ------------------------------
%                    Método da Posicao Falsa                              %

% Objetivo: Dada uma funcao continua num intervalo [a,b] tal que f(a)f(b)<0, 
% refinaremos o intervalo inicial através de sucessivas divisoes,
% considerando uma media ponderada dos extremos.

% A funcao foi definida em function
% f(x) = x*x + log(x)

clear all
clc

% ---------Parametros
epsilon = 0.000001; %tolerancia
a=0.5; %limite superior do intervalo inicial
b=1; %limite inferior do intervalo inicial
k=0; %contador de iteracoes
kf=floor((log(b-a)-log(epsilon))/log(2))+1; %n° max iteracoes
x=(a* f(b)-b* f(a))/(f(b)-f(a)); %x0
%-----------Iteracoes
tic
for i=1:kf %kf tb e criterio de parada
    %while (abs(f(x))>=epsilon | abs(b-a)>=epsilon)
    if abs(f(x))>=epsilon %criterio de parada
        if (f(a)*f(x))<0 %teste
            b=x; %novo intervalo se o teste se verifica
        else
            a=x;  %novo intervalo se o teste nao se verifica
        end
    else
        break %o algoritmo pára se tivermos os criterios < epsilon
    end
    x=(a*f(b)-b*f(a))/(f(b)-f(a)); %novo x: xk
    k=k+1; %conta as iteracoes
end
toc %tempo de execucao
%---------- Resultados
sprintf('x = %f',x) %mostre x
sprintf('f(x) = %f',f(x)) %mostre y
sprintf('|b-a| = %f',abs(b-a)) %mostre o intervalo
sprintf('Número de iteracoes ate atingir o resultado: %d',k) %mostre iteracoes