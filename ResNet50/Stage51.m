clc;
clear all;
%% inputs ------------------------------------------------------------------
Input= load('InputOutput\OutputStage50.mat');
WeightBias = load('WeightsBias\WeightBias51.mat');

flpInput    = Input.flpOutput; 
fxpInput    = Input.fxpOutput2;
flpfxpInput = Input.flpfxpOutput;

OutputErrStage50   = Input.OutputErr2;
InstinctErrStage50 = Input.InstinctErr;

flpWeights = WeightBias.flpStage51Weights;
fxpWeights = WeightBias.fxpStage51Weights;
flpBias    = WeightBias.flpStage51Bias;
fxpBias    = WeightBias.fxpStage51Bias;
errWeights = WeightBias.errStage51Weights;

%% fully-connected parameter --------------------------------------------------

Nof = 1000;
Nif = 2048;

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
save('InputOutput\OutputStage51','flpOutput','fxpOutput2','flpfxpfxpOutput','OutputErr2','InstinctErr1');









