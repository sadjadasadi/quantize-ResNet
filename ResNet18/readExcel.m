clc;
clear all;
%%


MaxMinStage0 = readmatrix('excel/MaxMinStage0.xlsx');
MaxMinStage1 = readmatrix('excel/MaxMinStage1.xlsx');
MaxMinStage2 = readmatrix('excel/MaxMinStage2.xlsx');
MaxMinStage3 = readmatrix('excel/MaxMinStage3.xlsx');
MaxMinStage4 = readmatrix('excel/MaxMinStage4.xlsx');
MaxMinStage5 = readmatrix('excel/MaxMinStage5.xlsx');
MaxMinStage6 = readmatrix('excel/MaxMinStage6.xlsx');
MaxMinStage7 = readmatrix('excel/MaxMinStage7.xlsx');
MaxMinStage8 = readmatrix('excel/MaxMinStage8.xlsx');
MaxMinStage9 = readmatrix('excel/MaxMinStage9.xlsx');
MaxMinStage10 = readmatrix('excel/MaxMinStage10.xlsx');
MaxMinStage11 = readmatrix('excel/MaxMinStage11.xlsx');
MaxMinStage12 = readmatrix('excel/MaxMinStage12.xlsx');
MaxMinStage13 = readmatrix('excel/MaxMinStage13.xlsx');
MaxMinStage14 = readmatrix('excel/MaxMinStage14.xlsx');
MaxMinStage15 = readmatrix('excel/MaxMinStage15.xlsx');
MaxMinStage16 = readmatrix('excel/MaxMinStage16.xlsx');
MaxMinStage17 = readmatrix('excel/MaxMinStage17.xlsx');
MaxMinStage18 = readmatrix('excel/MaxMinStage18.xlsx');
MaxMinStage19 = readmatrix('excel/MaxMinStage19.xlsx');

MaxMinStages = [
    MaxMinStage0 
    MaxMinStage1 
    MaxMinStage2 
    MaxMinStage3 
    MaxMinStage4 
    MaxMinStage5 
    MaxMinStage6 
    MaxMinStage7 
    MaxMinStage8 
    MaxMinStage9 
    MaxMinStage10 
    MaxMinStage11 
    MaxMinStage12 
    MaxMinStage13 
    MaxMinStage14 
    MaxMinStage15 
    MaxMinStage16 
    MaxMinStage17 
    MaxMinStage18 
    MaxMinStage19 
    ];

MaxMin = MaxMinStages;
filename = "excel/MaxMinStages.xlsx";
writematrix(MaxMin,filename);

