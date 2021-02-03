%Testes Probabilidaes
%%
clear all
close all
clc

%%
maior_lado = 20;
n_dados = 3;
n_esp_am = maior_lado^n_dados;

min = n_dados;
max = n_dados*maior_lado;

somas = [min:1:max]';
n_cenarios = zeros(length(somas),1);

jogada = zeros(n_dados,1);
jogada(:) = 1;


%%
%jogadas

for i = 1:n_esp_am 
    
    %jogada  
    
    for k = 1:length(somas)
        if sum(jogada) == somas(k)
            n_cenarios(k) = n_cenarios(k) + 1;
        end
    end
    
    jogada(1) = jogada(1) + 1;
    for j = 1:n_dados
        if jogada(j) == maior_lado + 1
           jogada(j) = 1;
           if j ~= n_dados
           jogada(j+1) = jogada(j+1) + 1;   
           end
        end
    end
         
    
end
%%
%plot

figure(1),clf
plot(somas,n_cenarios, 'g-')
