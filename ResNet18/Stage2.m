clc;
clear all;
%% inputs------------------------------------------------------------------
Input= load('InputOutput\OutputStage1.mat');
WeightBias = load('WeightsBias\WeightBias2.mat');

flpInput    = Input.flpOutput; 
fxpInput    = Input.fxpOutput2;
flpfxpInput = Input.flpfxpOutput;
OutputErrStage1 = Input.OutputErr2;
InstinctErrStage1 = Input.InstinctErr;

flpWeights = WeightBias.flpStage2Weights;
fxpWeights = WeightBias.fxpStage2Weights;
flpBias    = WeightBias.flpStage2Bias;
fxpBias    = WeightBias.fxpStage2Bias;
errWeights = WeightBias.errStage2Weights;

%% convelution parameter --------------------------------------------------
Nkx = 3;
Nky = 3;

Nof = 64;
Nif = 64;
 
Niy = 56;
Nix = 56;

stride = 1;
Noy = 56;
Nox = 56;

pad = 1;

flpInput    = padarray(flpInput,[pad pad]);
fxpInput    = padarray(fxpInput,[pad pad]);
flpfxpInput = padarray(flpfxpInput,[pad pad]);


flpOutputDSP            = zeros(Noy,Nox,Nof);
fxpOutputDSP            = zeros(Noy,Nox,Nof);
flpfxpfxpOutputDSP      = zeros(Noy,Nox,Nof);
flpfxpOutputDSP         = zeros(Noy,Nox,Nof);

flpOutputReLU           = zeros(Noy,Nox,Nof);
fxpOutputReLU           = zeros(Noy,Nox,Nof);
flpfxpfxpOutputReLU      = zeros(Noy,Nox,Nof);
flpfxpOutputReLU         = zeros(Noy,Nox,Nof);


%% floating point convlution ----------------------------------------------- 
for no = 1:1:Nof
    iy =1-stride;
    for oy = 1:1:Noy
        iy = iy+stride;
        ix = 1-stride;
        for  ox = 1 :1:Nox
            ix = ix+stride;
            for ni = 1:1:Nif
                for ky= 1:1:Nky
                    for kx= 1:1:Nkx
                         flpOutputDSP(oy,ox,no) = flpOutputDSP(oy,ox,no) + (flpInput(iy+ky-1,ix+kx-1,ni)* flpWeights(ky,kx,ni,no));
                    end
                end
            end
            flpOutputDSP(oy,ox,no)  = flpOutputDSP(oy,ox,no) + flpBias(no);
            flpOutputReLU(oy,ox,no) = flpOutputDSP(oy,ox,no);
            if (flpOutputReLU(oy,ox,no) <0) 
               flpOutputReLU(oy,ox,no) = 0;
            end
        end   
    end
end
%% fixed point convlution -------------------------------------------------
for no = 1:1:Nof
    iy =1-stride;
    for oy = 1:1:Noy
        iy = iy+stride;
        ix = 1-stride;
        for  ox = 1 :1:Nox
            ix = ix+stride;
            for ni = 1:1:Nif
                for ky= 1:1:Nky
                    for kx= 1:1:Nkx
                        fxpOutputDSP(oy,ox,no) = fxpOutputDSP(oy,ox,no) + (fxpInput(iy+ky-1,ix+kx-1,ni)* fxpWeights(ky,kx,ni,no));
                    end
                end
            end
            fxpOutputDSP(oy,ox,no)  = fxpOutputDSP(oy,ox,no) + fxpBias(no);
            fxpOutputReLU(oy,ox,no) = fxpOutputDSP(oy,ox,no);
            if (fxpOutputReLU(oy,ox,no) <0) 
                fxpOutputReLU(oy,ox,no) = 0;
            end
        end   
    end
end
%% instinct error convlution -----------------------------------------------
for no = 1:1:Nof
    iy =1-stride;
    for oy = 1:1:Noy
        iy = iy+stride;
        ix = 1-stride;
        for  ox = 1 :1:Nox
            ix = ix+stride;
            for ni = 1:1:Nif
                for ky= 1:1:Nky
                    for kx= 1:1:Nkx
                        flpfxpOutputDSP(oy,ox,no) = flpfxpOutputDSP(oy,ox,no) + (flpInput(iy+ky-1,ix+kx-1,ni)* fxpWeights(ky,kx,ni,no));
                    end
                end
            end
            flpfxpOutputDSP(oy,ox,no)  = flpfxpOutputDSP(oy,ox,no) + fxpBias(no);
            flpfxpOutputReLU(oy,ox,no) = flpfxpOutputDSP(oy,ox,no);
            if (flpfxpOutputReLU(oy,ox,no) <0) 
                flpfxpOutputReLU(oy,ox,no) = 0;
            end
        end   
    end
end

for no = 1:1:Nof
    iy =1-stride;
    for oy = 1:1:Noy
        iy = iy+stride;
        ix = 1-stride;
        for  ox = 1 :1:Nox
            ix = ix+stride;
            for ni = 1:1:Nif
                for ky= 1:1:Nky
                    for kx= 1:1:Nkx
                        flpfxpfxpOutputDSP(oy,ox,no) = flpfxpfxpOutputDSP(oy,ox,no) + (flpfxpInput(iy+ky-1,ix+kx-1,ni)* fxpWeights(ky,kx,ni,no));
                    end
                end
            end
            flpfxpfxpOutputDSP(oy,ox,no)  = flpfxpfxpOutputDSP(oy,ox,no) + fxpBias(no);
            flpfxpfxpOutputReLU(oy,ox,no) = flpfxpfxpOutputDSP(oy,ox,no);
            if (flpfxpfxpOutputReLU(oy,ox,no) <0) 
                flpfxpfxpOutputReLU(oy,ox,no) = 0;
            end
        end   
    end
end
%% get information[grather-than,less-than, max, min]-----------------------
maxflpOutputDSP = max(flpOutputDSP,[],'all');
minflpOutputDSP = min(flpOutputDSP,[],'all');

maxfxpOutputDSP = max(fxpOutputDSP,[],'all');
minfxpOutputDSP = min(fxpOutputDSP,[],'all');

minfxpOutputReLU = min(fxpOutputReLU ,[],'all');
maxfxpOutputReLU = max(fxpOutputReLU ,[],'all');

%% min square error -------------------------------------------------------
OWL = 16;       % Multiply word length
OFL = 2^-1;    % Multiply fractinal length
fxpOutputDSP2   = num2fixpt(fxpOutputDSP,sfix(OWL),OFL,'floor','on');
fxpOutputReLU2  = num2fixpt(fxpOutputReLU,sfix(OWL),OFL,'floor','on');


InputErr        = immse(flpInput,fxpInput)
WeightErr       = immse(flpWeights,fxpWeights)
BiasErr         = immse(flpBias,fxpBias)

InstinctErrDSP1  = immse(flpOutputDSP,flpfxpfxpOutputDSP)
InstinctErrReLU1 = immse(flpOutputReLU,flpfxpfxpOutputReLU)

InstinctErrDSP2  = immse(flpOutputDSP,flpfxpOutputDSP)
InstinctErrReLU2 = immse(flpOutputReLU,flpfxpOutputReLU)

OutputErrDSP1   = immse(flpOutputDSP,fxpOutputDSP)
OutputErrDSP2   = immse(flpOutputDSP,fxpOutputDSP2)
OutputErrDSP3   = immse(fxpOutputDSP,fxpOutputDSP2)

OutputErrReLU1  = immse(flpOutputReLU,fxpOutputReLU)
OutputErrReLU2  = immse(flpOutputReLU,fxpOutputReLU2)
OutputErrReLU3  = immse(fxpOutputReLU,fxpOutputReLU2)

%% store quatize parameters -----------------------------------------------
save('InputOutput\OutputStage2','flpOutputReLU','fxpOutputReLU2','flpfxpfxpOutputReLU','OutputErrReLU2','InstinctErrReLU1');


%% report error on excel

OFL = 2^-6;     % Multiply fractinal length
fxpOutputReLUS96 = num2fixpt(fxpOutputReLU,sfix(OWL),OFL,'floor','on');
OutputErrReLUS96  = immse(flpOutputReLU , fxpOutputReLUS96);

OFL = 2^-5;     % Multiply fractinal length
fxpOutputReLUS105 = num2fixpt(fxpOutputReLU,sfix(OWL),OFL,'floor','on');
OutputErrReLUS105  = immse(flpOutputReLU , fxpOutputReLUS105);

OFL = 2^-4;     % Multiply fractinal length
fxpOutputReLUS114 = num2fixpt(fxpOutputReLU,sfix(OWL),OFL,'floor','on');
OutputErrReLUS114  = immse(flpOutputReLU , fxpOutputReLUS114);

OFL = 2^-3;     % Multiply fractinal length
fxpOutputReLUS123 = num2fixpt(fxpOutputReLU,sfix(OWL),OFL,'floor','on');
OutputErrReLUS123  = immse(flpOutputReLU , fxpOutputReLUS123);

OFL = 2^-2;     % Multiply fractinal length
fxpOutputReLUS132 = num2fixpt(fxpOutputReLU,sfix(OWL),OFL,'floor','on');
OutputErrReLUS132  = immse(flpOutputReLU , fxpOutputReLUS132);

OFL = 2^-1;     % Multiply fractinal length
fxpOutputReLUS141 = num2fixpt(fxpOutputReLU,sfix(OWL),OFL,'floor','on');
OutputErrReLUS141  = immse(flpOutputReLU , fxpOutputReLUS141);

OFL = 2^0;     % Multiply fractinal length
fxpOutputReLUS150 = num2fixpt(fxpOutputReLU,sfix(OWL),OFL,'floor','on');
OutputErrReLUS150  = immse(flpOutputReLU , fxpOutputReLUS150);


[minErrQuantize , Index] = min([OutputErrReLUS96 OutputErrReLUS105 OutputErrReLUS114 OutputErrReLUS123 OutputErrReLUS132 OutputErrReLUS141 OutputErrReLUS150])

%InstinctErrReLU  append at the end of xlxErr
xlxErr = [OutputErrReLUS96 OutputErrReLUS105 OutputErrReLUS114 OutputErrReLUS123 OutputErrReLUS132 OutputErrReLUS141 OutputErrReLUS150 OutputErrReLU1 InstinctErrReLU2 InstinctErrReLU1];
filename = "excel/Stage2xlxErr.xlsx";
writematrix(xlxErr,filename);


MaxMin = [maxflpOutputDSP minflpOutputDSP];
filename = "excel/MaxMinStage2.xlsx";
writematrix(MaxMin,filename);



