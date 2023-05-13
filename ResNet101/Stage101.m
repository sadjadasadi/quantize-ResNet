clc;
clear all;
%% inputs------------------------------------------------------------------
Input= load('InputOutput\OutputStage100.mat');

flpInput    = Input.flpOutputReLU; 
fxpInput    = Input.fxpOutputReLU2;
flpfxpInput = Input.flpfxpfxpOutputReLU;

OutputErrStage100   = Input.OutputErrReLU2;
InstinctErrStage100 = Input.InstinctErrReLU1;
%% GAvg-pooling parameter --------------------------------------------------
Nkx = 7;
Nky = 7;

Nof = 2048;
Nif = 2048;
 
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
save('InputOutput\OutputStage101','flpOutput','fxpOutput2','flpfxpOutput','OutputErr2','InstinctErr');






