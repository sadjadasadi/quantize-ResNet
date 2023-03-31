clc;
clear all;
%% inputs------------------------------------------------------------------
Input= load('InputOutput\InputImage.mat');
WeightBias = load('WeightsBias\WeightBias0.mat');

flpInput   = Input.flpImage; 
fxpInput   = Input.fxpImage;
flpWeights = WeightBias.flpStage0Weights;
fxpWeights = WeightBias.fxpStage0Weights;
flpBias    = WeightBias.flpStage0Bias;
fxpBias    = WeightBias.fxpStage0Bias;
errWeights = WeightBias.errStage0Weights;

%% convelution parameter --------------------------------------------------
Nkx = 7;
Nky = 7;

Nof = 64;
Nif = 3;
 
Niy = 224;
Nix = 224;

stride = 2;
Noy = 112;
Nox = 112;

pad = 3;

flpInput = padarray(flpInput,[pad pad]);
fxpInput = padarray(fxpInput,[pad pad]);

flpOutputDSP    = zeros(Noy,Nox,Nof);
fxpOutputDSP    = zeros(Noy,Nox,Nof);
fxpOutputMUL    = zeros(Noy,Nox,Nof);



flpOutputReLU   = zeros(Noy,Nox,Nof);
fxpOutputReLU   = zeros(Noy,Nox,Nof);

flpfxpOutputDSP  = zeros(Noy,Nox,Nof);
flpfxpOutputReLU = zeros(Noy,Nox,Nof);

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
                        
                        fxpOutputMUL(oy,ox,no) = fxpInput(iy+ky-1,ix+kx-1,ni)* fxpWeights(ky,kx,ni,no);
                        
%                         OWL = 24;      % Multiply word length
%                         OFL = 2^-7;    % Multiply fractinal length
%                         fxpOutputMUL(oy,ox,no) = num2fixpt(fxpOutputMUL(oy,ox,no),sfix(OWL),OFL,'floor','on');
%                         
%                         fxpOutputDSP(oy,ox,no) = fxpOutputDSP(oy,ox,no) +fxpOutputMUL(oy,ox,no);
%                          
                        
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
%% instinct error convelution----------------------------------------------
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

%% get information[grather-than,less-than, max, min]-----------------------
maxflpOutputDSP = max(flpOutputDSP,[],'all');
minflpOutputDSP = min(flpOutputDSP,[],'all');

maxfxpOutputDSP = max(fxpOutputDSP,[],'all');
minfxpOutputDSP = min(fxpOutputDSP,[],'all');

minfxpOutputReLU = min(fxpOutputReLU ,[],'all');
maxfxpOutputReLU = max(fxpOutputReLU ,[],'all');
%% min square error -------------------------------------------------------
OWL = 16;       % Multiply word length
OFL = 2^-4;     % Multiply fractinal length
fxpOutputDSP2 = num2fixpt(fxpOutputDSP,sfix(OWL),OFL,'floor','on');
fxpOutputReLU2 = num2fixpt(fxpOutputReLU,sfix(OWL),OFL,'floor','on');


InputErr        = immse(flpInput,fxpInput)
WeightErr       = immse(flpWeights,fxpWeights)
BiasErr         = immse(flpBias,fxpBias)

InstinctErrDSP  = immse(flpOutputDSP,flpfxpOutputDSP)
InstinctErrReLU = immse(flpOutputReLU,flpfxpOutputReLU)

OutputErrDSP1   = immse(flpOutputDSP,fxpOutputDSP)
OutputErrDSP2   = immse(flpOutputDSP,fxpOutputDSP2)
OutputErrDSP3   = immse(fxpOutputDSP,fxpOutputDSP2)

OutputErrReLU1  = immse(flpOutputReLU,fxpOutputReLU)
OutputErrReLU2  = immse(flpOutputReLU,fxpOutputReLU2)
OutputErrReLU3  = immse(fxpOutputReLU,fxpOutputReLU2)

%% store quatize parameters -----------------------------------------------
save('InputOutput\OutputStage0','flpOutputReLU','fxpOutputReLU2','flpfxpOutputReLU','OutputErrReLU2','InstinctErrReLU');



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


% [minErrQuantize , Index] = min([abs(InstinctErrReLU-OutputErrReLUS96) abs(InstinctErrReLU-OutputErrReLUS105) abs(InstinctErrReLU-OutputErrReLUS114) abs(InstinctErrReLU-OutputErrReLUS123) abs(InstinctErrReLU-OutputErrReLUS132) abs(InstinctErrReLU-OutputErrReLUS141) abs(InstinctErrReLU-OutputErrReLUS150)])
[minErrQuantize , Index] = min([OutputErrReLUS96 OutputErrReLUS105	OutputErrReLUS114 OutputErrReLUS123 OutputErrReLUS132 OutputErrReLUS141 OutputErrReLUS150])
%InstinctErrReLU  append at the end of xlxErr
xlxErr = [OutputErrReLUS96 OutputErrReLUS105 OutputErrReLUS114 OutputErrReLUS123 OutputErrReLUS132 OutputErrReLUS141 OutputErrReLUS150 OutputErrReLU1 InstinctErrReLU];
filename = "excel/Stage0xlxErr.xlsx";
writematrix(xlxErr,filename);



MaxMin = [maxflpOutputDSP minflpOutputDSP];
filename = "excel/MaxMinStage0.xlsx";
writematrix(MaxMin,filename);






