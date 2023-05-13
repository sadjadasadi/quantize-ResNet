clc;
clear all;
%% inputs------------------------------------------------------------------
Input= load('InputOutput\OutputStage45.mat');
shortcutInput= load('InputOutput\OutputStage43.mat');
WeightBias = load('WeightsBias\WeightBias46.mat');

shortcutflpInput    = shortcutInput.flpOutputReLU; 
shortcutfxpInput    = shortcutInput.fxpOutputReLU2;
shortcutflpfxpInput = shortcutInput.flpfxpfxpOutputReLU;

flpInput            = Input.flpOutputReLU; 
fxpInput            = Input.fxpOutputReLU2;
flpfxpInput         = Input.flpfxpfxpOutputReLU;
OutputErrStage43     = Input.OutputErrReLU2;
InstinctErrStage43   = Input.InstinctErrReLU1;

flpWeights = WeightBias.flpStage46Weights;
fxpWeights = WeightBias.fxpStage46Weights;
flpBias    = WeightBias.flpStage46Bias;
fxpBias    = WeightBias.fxpStage46Bias;
errWeights = WeightBias.errStage46Weights;

%% convelution parameter --------------------------------------------------
Nkx = 1;
Nky = 1;

Nof = 1024;
Nif = 256;
 
Niy = 14;
Nix = 14;

stride = 1;
Noy = 14;
Nox = 14;

pad = 0;

flpInput    = padarray(flpInput,[pad pad]);
fxpInput    = padarray(fxpInput,[pad pad]);
flpfxpInput = padarray(flpfxpInput,[pad pad]);


flpOutputDSP            = zeros(Noy,Nox,Nof);
fxpOutputDSP            = zeros(Noy,Nox,Nof);
flpfxpfxpOutputDSP      = zeros(Noy,Nox,Nof);
flpfxpOutputDSP         = zeros(Noy,Nox,Nof);

flpOutputAdder           = zeros(Noy,Nox,Nof);
fxpOutputAdder           = zeros(Noy,Nox,Nof);
flpfxpfxpOutputAdder     = zeros(Noy,Nox,Nof);
flpfxpOutputAdder        = zeros(Noy,Nox,Nof);

flpOutputReLU           = zeros(Noy,Nox,Nof);
fxpOutputReLU           = zeros(Noy,Nox,Nof);
flpfxpfxpOutputReLU     = zeros(Noy,Nox,Nof);
flpfxpOutputReLU        = zeros(Noy,Nox,Nof);


%% floating point convlution ---------------------------------------------- 
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
        end   
    end
end
%% instinct error convlution ----------------------------------------------
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
        end   
    end
end
%% adder ------------------------------------------------------------------

flpOutputAdder           = shortcutflpInput + flpOutputDSP;
fxpOutputAdder           = shortcutfxpInput + fxpOutputDSP;
flpfxpfxpOutputAdder     = shortcutflpfxpInput + flpfxpfxpOutputDSP;
flpfxpOutputAdder        = shortcutflpInput + flpfxpOutputDSP;

%% ReLU activation function -----------------------------------------------
for no = 1:1:Nof
    for oy = 1:1:Noy
        for  ox = 1:1:Nox
            flpOutputReLU(oy,ox,no) = flpOutputAdder(oy,ox,no);           
            fxpOutputReLU(oy,ox,no) = fxpOutputAdder(oy,ox,no);           
            flpfxpfxpOutputReLU(oy,ox,no) = flpfxpfxpOutputAdder(oy,ox,no);     
            flpfxpOutputReLU(oy,ox,no) = flpfxpOutputAdder(oy,ox,no);
            
            if (flpOutputReLU(oy,ox,no) < 0) 
               flpOutputReLU(oy,ox,no) = 0;
            end
            if (fxpOutputReLU(oy,ox,no) < 0) 
               fxpOutputReLU(oy,ox,no) = 0;
            end
            if (flpfxpfxpOutputReLU(oy,ox,no) < 0) 
               flpfxpfxpOutputReLU(oy,ox,no) = 0;
            end
            if (flpfxpOutputReLU(oy,ox,no) < 0) 
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

maxfxpOutputAdder = max(fxpOutputAdder,[],'all');
minfxpOutputAdder = min(fxpOutputAdder,[],'all');

maxfxpOutputReLU = max(fxpOutputReLU,[],'all');
minfxpOutputReLU = min(fxpOutputReLU,[],'all');
%% min square error -------------------------------------------------------
OWL = 16;       % Multiply word length
OFL = 2^-5;    % Multiply fractinal length

fxpOutputDSP2    = num2fixpt(fxpOutputDSP   ,sfix(OWL),OFL,'floor','on');
fxpOutputAdder2  = num2fixpt(fxpOutputAdder ,sfix(OWL),OFL,'floor','on');
fxpOutputReLU2   = num2fixpt(fxpOutputReLU  ,sfix(OWL),OFL,'floor','on');


InputErr        = immse(flpInput,fxpInput)
WeightErr       = immse(flpWeights,fxpWeights)
BiasErr         = immse(flpBias,fxpBias)

InstinctErrDSP1   = immse(flpOutputDSP,flpfxpfxpOutputDSP)
InstinctErrAdder1 = immse(flpOutputAdder,flpfxpfxpOutputAdder)
InstinctErrReLU1  = immse(flpOutputReLU,flpfxpfxpOutputReLU)

InstinctErrDSP2   = immse(flpOutputDSP,flpfxpOutputDSP)
InstinctErrAdder2 = immse(flpOutputAdder,flpfxpOutputAdder)
InstinctErrReLU2  = immse(flpOutputReLU,flpfxpOutputReLU)

OutputErrDSP1   = immse(flpOutputDSP,fxpOutputDSP)
OutputErrDSP2   = immse(flpOutputDSP,fxpOutputDSP2)
OutputErrDSP3   = immse(fxpOutputDSP,fxpOutputDSP2)

OutputErrReLU1  = immse(flpOutputReLU,fxpOutputReLU)
OutputErrReLU2  = immse(flpOutputReLU,fxpOutputReLU2)
OutputErrReLU3  = immse(fxpOutputReLU,fxpOutputReLU2)

%% store quatize parameters -----------------------------------------------
save('InputOutput\OutputStage46','flpOutputReLU','fxpOutputReLU2','flpfxpfxpOutputReLU','OutputErrReLU2','InstinctErrReLU1');








