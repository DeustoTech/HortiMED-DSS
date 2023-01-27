%% Run iterations 
%OJO siempre trabajar en la carpeta principal 

%% Descarga de los originales Jesús
%unzip('https://github.com/DeustoTech/HortiMED-Modelling-Platform/archive/refs/heads/main.zip')

%% Agregar la librería a la consola de MATLAB
addpath(genpath(pwd))

%% Se instala MSP
install_MSP

%% Dentro de la CARPETA Functions esta el codigo de iteraciones
RunModel_SeveralParameters %(LO requirio ROBERTO pero no lo dejo documentado Jesus)

% Esta etapa crea en la CARPETA Simulation todas las iteracciones (de base Jesús ejecuta 500)

%% Para hallar los mejores "setpoints" se ejecuta el
RunAlgorithm

%esta algoritmo ES INDEPENDIENTE de las 500 simulaciones que se hacen en el
%paso anterior