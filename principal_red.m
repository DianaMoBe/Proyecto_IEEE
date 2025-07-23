%%
% Autores       M.I. Diana Guadalupe Molina Bermúdez
% 
%               dmolina@upjr.edu.mx
%               d2103024@itcelaya.edu.mx
%
%               Dr. Juan Israel Yañez Vargas
%
%               jyanez@upjr.edu.mx
%
%               Universidad Politécnica de Juventino Rosas
%               Santa Cruz de Juventino Rosas, Guanajuato, México 
%               http://upjr.edu.mx
%
%               TecNM/Instituto Tecnológico de Celaya
%               Celaya, Guanajuato, México
%               http://celaya.tecnm.mx
%
% Fecha         22 de Julio de 2025
% Versión       1.0

%% código principal 
% 
%
%%
% Líneas principales
clc
clear all
close all
%%
x=readmatrix('Entradas.xlsx');
t=readmatrix('Salidas.xlsx');
[a b]=size(x);
[c d]=size(t);
Input_normalize=zeros(a,b);
Output_normalize=zeros(c,d);
for i=1:1:a
    Input=x(i,:);
    Input1=normalizar_vector(Input);
    Input_normalize(i,:)=Input1;
end

for j=1:1:c
    Output=t(j,:);
    Output1=normalizar_vector(Output);
    Output_normalize(j,:)=Output1;
end

net=feedforwardnet(10);
net.divideParam.trainRatio=0.7;
net.divideParam.valRatio=0.15;
net.divideParam.Ratio=0.15;
net.trainParam.epochs=300;
%net.init(net);
%net.layers{1}.transferFcn='logsig';
%net.layers{2}.transferFcn='poslin';
%net.input{1}.size=122; 
%net.layers{1}.size=25;
%net.layers{2}.size=1;
x1=Input_normalize;
t1=Output_normalize;
net=train(net,x1,t1);
view(net)
y=net(x1)
perf=perform(net,t1,y)



