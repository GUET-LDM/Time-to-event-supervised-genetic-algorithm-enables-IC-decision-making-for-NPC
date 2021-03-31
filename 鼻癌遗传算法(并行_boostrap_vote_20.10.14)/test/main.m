clear;
clc;
delete('testp.xlsx');
delete('testpop.xlsx');
% delete('testp2.xlsx');
% delete('testpop2.xlsx');
pop=xlsread('pop.xlsx');
% pop=xlsread('testpop.xlsx');
[px_pop,py_pop] = size(pop);
n=1;
% tx=xlsread('tx.xlsx');
tx=xlsread('ceshi2.xlsx');
% tx=xlsread('ceshi3.xlsx');
[px_tx,py_tx] = size(tx);
totalp(1,1)=0;
poptotal=zeros(1,py_pop);
[p] = cal_objvalue(pop,px_tx,tx);
[newtotalp,poptotal,n] = conserve(px_pop,pop,p,n,totalp,poptotal);
% ����Excel
xlswrite('testp.xlsx',newtotalp);
xlswrite('testpop.xlsx',poptotal);
% xlswrite('testp2.xlsx',newtotalp);
% xlswrite('testpop2.xlsx',poptotal);