clc;
clear all;
%% inputs------------------------------------------------------------------
Input= load('InputOutput\OutputStage17.mat');

flpInput    = Input.flpOutputReLU; 
fxpInput    = Input.fxpOutputReLU2;
flpfxpInput = Input.flpfxpfxpOutputReLU;

OutputErrStage17   = Input.OutputErrReLU2;
InstinctErrStage17 = Input.InstinctErrReLU1;
%% GAvg-pooling parameter --------------------------------------------------
Nkx = 7;
Nky = 7;

Nof = 512;
Nif = 512;
 
Niy = Nkx;
Nix = Nky;

stride = 1;
Noy = 1;
Nox = 1;

pad = 0;

flpInput    = padarray(flpInput,[pad pad]);
fxpInput    = padarray(fxpInput,[pad pad]);
flpfxpInput = padarray(flpfxpInput,[pad pad]);

flpOutput       = zeros(Noy,Nox,Nof);
fxpOutput       = zeros(Noy,Nox,Nof);
flpfxpOutput    = zeros(Noy,Nox,Nof);

SumflpOutput       = zeros(Nif,1);
SumfxpOutput    = zeros(Nif,1);


%% floating point GAvg-pooling ----------------------------------------------- 
for ni = 1:1:Nif
    iy =1-stride;
    for oy = 1:1:Noy
        iy = iy+stride;
        ix = 1-stride;
        for  ox = 1 :1:Nox
            ix = ix+stride;
            summation = 0;
            for ky= 1:1:Nky
                for kx= 1:1:Nkx
                    summation = summation + flpInput(iy+ky-1,ix+kx-1,ni);
                end
            end
        end   
    end
    no = ni;
    SumflpOutput(ni) = summation;
    flpOutput(oy,ox,no)  = summation/(Nky*Nkx);
end
%% fixed point GAvg-pooling -------------------------------------------------
for ni = 1:1:Nif
    iy =1-stride;
    for oy = 1:1:Noy
        iy = iy+stride;
        ix = 1-stride;
        for  ox = 1 :1:Nox
            ix = ix+stride;
            summation = 0;
            for ky= 1:1:Nky
                for kx= 1:1:Nkx
                    summation = summation + fxpInput(iy+ky-1,ix+kx-1,ni);
                end
            end
        end   
    end
    no = ni;
    SumfxpOutput(ni) = summation;
    fxpOutput(oy,ox,no)  = summation/(Nky*Nkx);
end
%% instinct error GAvg-pooling----------------------------------------------
for ni = 1:1:Nif
    iy =1-stride;
    for oy = 1:1:Noy
        iy = iy+stride;
        ix = 1-stride;
        for  ox = 1 :1:Nox
            ix = ix+stride;
            summation = 0;
            for ky= 1:1:Nky
                for kx= 1:1:Nkx
                    summation = summation + flpfxpInput(iy+ky-1,ix+kx-1,ni);
                end
            end
        end   
    end
    no = ni;
    flpfxpOutput(oy,ox,no)  = summation/(Nky*Nkx);
end

%% get information[grather-than,less-than, max, min]-----------------------
maxflpOutput = max(flpOutput,[],'all');
minflpOutput = min(flpOutput,[],'all');

maxfxpOutput = max(fxpOutput,[],'all');
minfxpOutput = min(fxpOutput,[],'all');

maxflpSum = max(SumflpOutput,[],'all');
minflSum = min(SumflpOutput,[],'all');

maxfxpSum = max(SumfxpOutput,[],'all');
minfxSum = min(SumfxpOutput,[],'all');

%% min square error -------------------------------------------------------
OWL = 16;       % Multiply word length
OFL = 2^0;    % Multiply fractinal length
fxpOutput2   = num2fixpt(fxpOutput,sfix(OWL),OFL,'floor','on');

InputErr     = immse(flpInput,fxpInput)

InstinctErr  = immse(flpOutput,flpfxpOutput)

OutputErr1   = immse(flpOutput,fxpOutput)
OutputErr2   = immse(flpOutput,fxpOutput2)
OutputErr3   = immse(fxpOutput,fxpOutput2)


%% store quatize parameters -----------------------------------------------
save('InputOutput\OutputStage18','flpOutput','fxpOutput2','flpfxpOutput','OutputErr2','InstinctErr');



%% report error on excel
%% report error on excel

OFL = 2^-6;     % Multiply fractinal length
fxpOutputS96 = num2fixpt(fxpOutput,sfix(OWL),OFL,'floor','on');
OutputErrS96  = immse(flpOutput , fxpOutputS96);

OFL = 2^-5;     % Multiply fractinal length
fxpOutputS105 = num2fixpt(fxpOutput,sfix(OWL),OFL,'floor','on');
OutputErrS105  = immse(flpOutput , fxpOutputS105);

OFL = 2^-4;     % Multiply fractinal length
fxpOutputS114 = num2fixpt(fxpOutput,sfix(OWL),OFL,'floor','on');
OutputErrS114  = immse(flpOutput , fxpOutputS114);

OFL = 2^-3;     % Multiply fractinal length
fxpOutputS123 = num2fixpt(fxpOutput,sfix(OWL),OFL,'floor','on');
OutputErrS123  = immse(flpOutput , fxpOutputS123);

OFL = 2^-2;     % Multiply fractinal length
fxpOutputS132 = num2fixpt(fxpOutput,sfix(OWL),OFL,'floor','on');
OutputErrS132  = immse(flpOutput , fxpOutputS132);

OFL = 2^-1;     % Multiply fractinal length
fxpOutputS141 = num2fixpt(fxpOutput,sfix(OWL),OFL,'floor','on');
OutputErrS141  = immse(flpOutput , fxpOutputS141);

OFL = 2^0;     % Multiply fractinal length
fxpOutputS150 = num2fixpt(fxpOutput,sfix(OWL),OFL,'floor','on');
OutputErrS150  = immse(flpOutput , fxpOutputS150);


[minErrQuantize , Index] = min([OutputErrS96 OutputErrS105 OutputErrS114 OutputErrS123 OutputErrS132 OutputErrS141 OutputErrS150])


%InstinctErr  append at the end of xlxErr
xlxErr = [OutputErrS96 OutputErrS105 OutputErrS114 OutputErrS123 OutputErrS132 OutputErrS141 OutputErrS150 OutputErr1 InstinctErr];
filename = "excel/Stage18xlxErr.xlsx";
writematrix(xlxErr,filename);


MaxMin = [maxflpOutput minflpOutput];
filename = "excel/MaxMinStage18.xlsx";
writematrix(MaxMin,filename);


