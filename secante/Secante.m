%Metodo a Secante


%Fun��o
f=@(x) x^2 -2;

%Intervalos
resAnt= 1;
x2 = 2;

%Erro estimado relativo
n = 0.05;

res = 0;

%C�lculo da raiz
while true
    %Calculo do pr�ximo ponto
    res = resAnt - f(resAnt)*((resAnt - x2)/(f(resAnt) - f(x2)));
    %Verifica a condi��o do erro estimado relativo
    if abs(((res - resAnt)/res)*100) < n
        disp(res);
        break
    end
    %Move os dois pontos formando outra reta secante
    x2 = resAnt;
    resAnt = res;
end
