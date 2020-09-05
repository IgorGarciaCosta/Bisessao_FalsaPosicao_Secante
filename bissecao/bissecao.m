%MÉTODO DA BISSEÇÃO

%Recebe a função
f=@(x) x^3 -7;

%Recebe os intervalos
intInferior= 1;
intSuperior= 2;

%Recebe o erro
erro = 0.05;

%processamento
aux = 1; %conta o num. de iterações

while (intSuperior-intInferior > erro)
    
   mediaEntreIntervalos = (intInferior+intSuperior)/2;
   
   if(subs(f, mediaEntreIntervalos)==0|| intSuperior-intInferior < erro)
        fprintf('A raíz é: %d', mediaEntreIntervalos);
        break;
   end
   
   aux=+1;
   
   %se os sinais em im int. forem iguais, calcula no outro intervalo
   if sign(subs(f, mediaEntreIntervalos))==sign (subs(f, intInferior))
      intInferior = mediaEntreIntervalos;
   else
       intSuperior = mediaEntreIntervalos;
   end
end
fprintf('A raíz é: %d', mediaEntreIntervalos);



