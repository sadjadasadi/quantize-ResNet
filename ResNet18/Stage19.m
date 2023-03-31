clc;
clear all;
%% inputs ------------------------------------------------------------------
Input= load('InputOutput\OutputStage18.mat');
WeightBias = load('WeightsBias\WeightBias19.mat');

flpInput    = Input.flpOutput; 
fxpInput    = Input.fxpOutput2;
flpfxpInput = Input.flpfxpOutput;

OutputErrStage17   = Input.OutputErr2;
InstinctErrStage17 = Input.InstinctErr;

flpWeights = WeightBias.flpStage19Weights;
fxpWeights = WeightBias.fxpStage19Weights;
flpBias    = WeightBias.flpStage19Bias;
fxpBias    = WeightBias.fxpStage19Bias;
errWeights = WeightBias.errStage19Weights;

%% fully-connected parameter --------------------------------------------------

Nof = 1000;
Nif = 512;

flpOutput           = zeros(Nof,1);
fxpOutput           = zeros(Nof,1);
flpfxpOutput        = zeros(Nof,1);
flpfxpfxpOutput     = zeros(Nof,1);

%% floating point fully-connected  ----------------------------------------------- 
for ni = 1:1:Nif
    for no = 1:1:Nof
        flpOutput(no,1)  = flpOutput(no,1) + (flpInput(1,1,ni)*flpWeights(no,ni));
    end
end
flpOutput = flpOutput + flpBias;
%% fixed point fully-connected  -------------------------------------------------
for ni = 1:1:Nif
    for no = 1:1:Nof
        fxpOutput(no,1)  = fxpOutput(no,1) + (fxpInput(1,1,ni)*fxpWeights(no,ni));
    end
end
fxpOutput = fxpOutput + fxpBias;

%% instinct error fully-connected ----------------------------------------------
for ni = 1:1:Nif
    for no = 1:1:Nof
        flpfxpOutput(no,1)  = flpfxpOutput(no,1) + (flpInput(1,1,ni)*fxpWeights(no,ni));
    end
end

for ni = 1:1:Nif
    for no = 1:1:Nof
        flpfxpfxpOutput(no,1)  = flpfxpfxpOutput(no,1) + (flpfxpInput(1,1,ni)*fxpWeights(no,ni));
    end
end

flpfxpOutput    = flpfxpOutput + fxpBias;
flpfxpfxpOutput = flpfxpfxpOutput + fxpBias;
%% get information[grather-than,less-than, max, min]-----------------------
maxflpOutput = max(flpOutput,[],'all');
minflpOutput = min(flpOutput,[],'all');

maxfxpOutput = max(fxpOutput,[],'all');
minfxpOutput = min(fxpOutput,[],'all');

%% min square error -------------------------------------------------------
OWL = 16;       % Multiply word length
OFL = 2^-5;    % Multiply fractinal length

fxpOutput2   = num2fixpt(fxpOutput,sfix(OWL),OFL,'floor','on');

InputErr     = immse(flpInput,fxpInput)

InstinctErr1   = immse(flpOutput,flpfxpfxpOutput)
InstinctErr2  = immse(flpOutput,flpfxpOutput)


OutputErr1    = immse(flpOutput,fxpOutput)
OutputErr2    = immse(flpOutput,fxpOutput2)
OutputErr3    = immse(fxpOutput,fxpOutput2)


%% store quatize parameters -----------------------------------------------
save('InputOutput\OutputStage19','flpOutput','fxpOutput2','flpfxpfxpOutput','OutputErr2','InstinctErr1');




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
xlxErr = [OutputErrS96 OutputErrS105 OutputErrS114 OutputErrS123 OutputErrS132 OutputErrS141 OutputErrS150 OutputErr1  InstinctErr2 InstinctErr1];
filename = "excel/Stage19xlxErr.xlsx";
writematrix(xlxErr,filename);



MaxMin = [maxflpOutput minflpOutput];
filename = "excel/MaxMinStage19.xlsx";
writematrix(MaxMin,filename);



