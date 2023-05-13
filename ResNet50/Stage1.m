clc;
clear all;
%% inputs------------------------------------------------------------------
Input= load('InputOutput\OutputStage0.mat');

flpInput    = Input.flpOutputReLU; 
fxpInput    = Input.fxpOutputReLU2;
flpfxpInput = Input.flpfxpOutputReLU;

OutputErrStage0 = Input.OutputErrReLU2;
InstinctErrStage0 = Input.InstinctErrReLU;
%% max-pooling parameter --------------------------------------------------
Nkx = 3;
Nky = 3;

Nof = 64;
Nif = 64;
 
Niy = 112;
Nix = 112;

stride = 2;
Noy = 56;
Nox = 56;

pad = 1;

flpInput    = padarray(flpInput,[pad pad]);
fxpInput    = padarray(fxpInput,[pad pad]);
flpfxpInput = padarray(flpfxpInput,[pad pad]);

flpOutput       = zeros(Noy,Nox,Nof);
fxpOutput       = zeros(Noy,Nox,Nof);
flpfxpOutput    = zeros(Noy,Nox,Nof);

%% floating point max-pooling ----------------------------------------------- 
for ni = 1:1:Nif
    iy =1-stride;
    for oy = 1:1:Noy
        iy = iy+stride;
        ix = 1-stride;
        for  ox = 1 :1:Nox
            ix = ix+stride;
            maximum = -10^15;
            for ky= 1:1:Nky
                for kx= 1:1:Nkx
                    if (flpInput(iy+ky-1,ix+kx-1,ni)> maximum)
                        maximum = flpInput(iy+ky-1,ix+kx-1,ni);
                    end
                end
            end
            no = ni;
            flpOutput(oy,ox,no)  = maximum;
        end   
    end
end
%% fixed point max-pooling -------------------------------------------------
for ni = 1:1:Nif
    iy =1-stride;
    for oy = 1:1:Noy
        iy = iy+stride;
        ix = 1-stride;
        for  ox = 1 :1:Nox
            ix = ix+stride;
            maximum = -10^15;
            for ky= 1:1:Nky
                for kx= 1:1:Nkx
                    if (fxpInput(iy+ky-1,ix+kx-1,ni)> maximum)
                        maximum = fxpInput(iy+ky-1,ix+kx-1,ni);
                    end
                end
            end
            no = ni;
            fxpOutput(oy,ox,no)  = maximum;
        end   
    end
end
%% instinct error max-pooling----------------------------------------------
for ni = 1:1:Nif
    iy =1-stride;
    for oy = 1:1:Noy
        iy = iy+stride;
        ix = 1-stride;
        for  ox = 1 :1:Nox
            ix = ix+stride;
            maximum = -10^15;
            for ky= 1:1:Nky
                for kx= 1:1:Nkx
                    if (flpfxpInput(iy+ky-1,ix+kx-1,ni)> maximum)
                        maximum = flpfxpInput(iy+ky-1,ix+kx-1,ni);
                    end
                end
            end
            no = ni;
            flpfxpOutput(oy,ox,no)  = maximum;
        end   
    end
end

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

InstinctErr  = immse(flpOutput,flpfxpOutput)

OutputErr1   = immse(flpOutput,fxpOutput)
OutputErr2   = immse(flpOutput,fxpOutput2)
OutputErr3   = immse(fxpOutput,fxpOutput2)


%% store quatize parameters -----------------------------------------------
save('InputOutput\OutputStage1','flpOutput','fxpOutput2','flpfxpOutput','OutputErr2','InstinctErr');






