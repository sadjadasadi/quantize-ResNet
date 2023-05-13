clc;
clear all;
%% inputs------------------------------------------------------------------
Input= load('InputOutput\OutputStage29.mat');
WeightBias = load('WeightsBias\WeightBias30.mat');

flpInput            = Input.flpOutputReLU; 
fxpInput            = Input.fxpOutputReLU2;
flpfxpInput         = Input.flpfxpfxpOutputReLU;
OutputErrStage29     = Input.OutputErrReLU2;
InstinctErrStage29   = Input.InstinctErrReLU1;

flpWeights = WeightBias.flpStage30Weights;
fxpWeights = WeightBias.fxpStage30Weights;
flpBias    = WeightBias.flpStage30Bias;
fxpBias    = WeightBias.fxpStage30Bias;
errWeights = WeightBias.errStage30Weights;

%% convelution parameter --------------------------------------------------
Nkx = 3;
Nky = 3;

Nof = 256;
Nif = 256;
 
Niy = 14;
Nix = 14;

stride = 1;
Noy = 14;
Nox = 14;

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
OFL = 2^-5;    % Multiply fractinal length
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
save('InputOutput\OutputStage30','flpOutputReLU','fxpOutputReLU2','flpfxpfxpOutputReLU','OutputErrReLU2','InstinctErrReLU1');








