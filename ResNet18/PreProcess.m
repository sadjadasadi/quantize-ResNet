clc;
clear all;
%% define network-----------------------------------------------------------------------------
net = resnet18;
%% Draph--------------------------------------------------------------------------------------
% lgraph = layerGraph(net)
% figure
% plot(lgraph)
%% load input image and resize ---------------------------------------------------------------
Image = imread('InputOutput/ImageNet_cock.jpg');
flpImage = double(imresize(Image, [224 224]));
%% get layer weights and bias -----------------------------------------------------------------
flpStage0Weights	=	double(net.Layers(2,1).Weights);
flpStage0Bias   	=	double(net.Layers(2,1).Bias);
		
flpStage2Weights	=	double(net.Layers(6,1).Weights);
flpStage2Bias   	=	double(net.Layers(6,1).Bias);
flpStage3Weights	=	double(net.Layers(9,1).Weights);
flpStage3Bias   	=	double(net.Layers(9,1).Bias);
flpStage4Weights	=	double(net.Layers(13,1).Weights);
flpStage4Bias   	=	double(net.Layers(13,1).Bias);
flpStage5Weights	=	double(net.Layers(16,1).Weights);
flpStage5Bias   	=	double(net.Layers(16,1).Bias);
	
flpStage6Weights 	=	double(net.Layers(20,1).Weights);
flpStage6Bias    	=	double(net.Layers(20,1).Bias);
flpStage7Weights 	=	double(net.Layers(23,1).Weights);
flpStage7Bias    	=	double(net.Layers(23,1).Bias);
flpStage8Weights	=	double(net.Layers(29,1).Weights);
flpStage8Bias   	=	double(net.Layers(29,1).Bias);
flpStage9Weights 	=	double(net.Layers(32,1).Weights);
flpStage9Bias    	=	double(net.Layers(32,1).Bias);

flpStage10Weights 	=	double(net.Layers(36,1).Weights);
flpStage10Bias    	=	double(net.Layers(36,1).Bias);
flpStage11Weights 	=	double(net.Layers(39,1).Weights);
flpStage11Bias    	=	double(net.Layers(39,1).Bias);
flpStage12Weights 	=	double(net.Layers(45,1).Weights);
flpStage12Bias    	=	double(net.Layers(45,1).Bias);
flpStage13Weights 	=	double(net.Layers(48,1).Weights);
flpStage13Bias    	=	double(net.Layers(48,1).Bias);

flpStage14Weights 	= 	double(net.Layers(52,1).Weights);
flpStage14Bias    	= 	double(net.Layers(52,1).Bias);
flpStage15Weights 	= 	double(net.Layers(55,1).Weights);
flpStage15Bias    	= 	double(net.Layers(55,1).Bias);
flpStage16Weights 	= 	double(net.Layers(61,1).Weights);
flpStage16Bias    	= 	double(net.Layers(61,1).Bias);
flpStage17Weights 	= 	double(net.Layers(64,1).Weights);
flpStage17Bias    	= 	double(net.Layers(64,1).Bias);

flpStage19Weights   = 	double(net.Layers(69,1).Weights);
flpStage19Bias      = 	double(net.Layers(69,1).Bias);

%% get information[grather-than,less-than, max, min, nearest to zero]-------------------------
ge1Stage0Weights 	=	 sum(ge(flpStage0Weights, 1),'all');
le_1Stage0Weights	=	 sum(le(flpStage0Weights, -1),'all');
maxStage0Weights 	=	 max(flpStage0Weights,[],'all');
minStage0Weights 	=	 min(flpStage0Weights,[],'all');
		
ge1Stage2Weights 	=	 sum(ge(flpStage2Weights, 1),'all');
le_1Stage2Weights	=	 sum(le(flpStage2Weights, -1),'all');
maxStage2Weights 	=	 max(flpStage2Weights,[],'all');
minStage2Weights 	=	 min(flpStage2Weights,[],'all');
		
ge1Stage3Weights 	=	 sum(ge(flpStage3Weights, 1),'all');
le_1Stage3Weights	=	 sum(le(flpStage3Weights, -1),'all');
maxStage3Weights 	=	 max(flpStage3Weights,[],'all');
minStage3Weights 	=	 min(flpStage3Weights,[],'all');
		
ge1Stage4Weights 	=	 sum(ge(flpStage4Weights, 1),'all');
le_1Stage4Weights	=	 sum(le(flpStage4Weights, -1),'all');
maxStage4Weights 	=	 max(flpStage4Weights,[],'all');
minStage4Weights 	=	 min(flpStage4Weights,[],'all');
		
		
ge1Stage5Weights 	=	 sum(ge(flpStage5Weights, 1),'all');
le_1Stage5Weights	=	 sum(le(flpStage5Weights, -1),'all');
maxStage5Weights 	=	 max(flpStage5Weights,[],'all');
minStage5Weights 	=	 min(flpStage5Weights,[],'all');
		
ge1Stage6Weights 	=	 sum(ge(flpStage6Weights, 1),'all');
le_1Stage6Weights	=	 sum(le(flpStage6Weights, -1),'all');
maxStage6Weights 	=	 max(flpStage6Weights,[],'all');
minStage6Weights 	=	 min(flpStage6Weights,[],'all');
		
ge1Stage7Weights 	=	 sum(ge(flpStage7Weights, 1),'all');
le_1Stage7Weights	=	 sum(le(flpStage7Weights, -1),'all');
maxStage7Weights 	=	 max(flpStage7Weights,[],'all');
minStage7Weights 	=	 min(flpStage7Weights,[],'all');

ge1Stage8Weights 	=	 sum(ge(flpStage8Weights, 1),'all');
le_1Stage8Weights	=	 sum(le(flpStage8Weights, -1),'all');
maxStage8Weights 	=	 max(flpStage8Weights,[],'all');
minStage8Weights 	=	 min(flpStage8Weights,[],'all');
						 
ge1Stage9Weights 	=	 sum(ge(flpStage9Weights, 1),'all');
le_1Stage9Weights	=	 sum(le(flpStage9Weights, -1),'all');
maxStage9Weights 	=	 max(flpStage9Weights,[],'all');
minStage9Weights 	=	 min(flpStage9Weights,[],'all');
		
ge1Stage10Weights 	=	 sum(ge(flpStage10Weights, 1),'all');
le_1Stage10Weights	=	 sum(le(flpStage10Weights, -1),'all');
maxStage10Weights 	=	 max(flpStage10Weights,[],'all');
minStage10Weights 	=	 min(flpStage10Weights,[],'all');
		
ge1Stage11Weights 	=	 sum(ge(flpStage11Weights, 1),'all');
le_1Stage11Weights	=	 sum(le(flpStage11Weights, -1),'all');
maxStage11Weights 	=	 max(flpStage11Weights,[],'all');
minStage11Weights 	=	 min(flpStage11Weights,[],'all');
		
ge1Stage12Weights 	=	 sum(ge(flpStage12Weights, 1),'all');
le_1Stage12Weights	=	 sum(le(flpStage12Weights, -1),'all');
maxStage12Weights 	=	 max(flpStage12Weights,[],'all');
minStage12Weights 	=	 min(flpStage12Weights,[],'all');
		
ge1Stage13Weights 	=	 sum(ge(flpStage13Weights, 1),'all');
le_1Stage13Weights	=	 sum(le(flpStage13Weights, -1),'all');
maxStage13Weights 	=	 max(flpStage13Weights,[],'all');
minStage13Weights 	=	 min(flpStage13Weights,[],'all');
		
ge1Stage14Weights 	=	 sum(ge(flpStage14Weights, 1),'all');
le_1Stage14Weights	=	 sum(le(flpStage14Weights, -1),'all');
maxStage14Weights 	=	 max(flpStage14Weights,[],'all');
minStage14Weights 	=	 min(flpStage14Weights,[],'all');
		
ge1Stage15Weights 	=	 sum(ge(flpStage15Weights, 1),'all');
le_1Stage15Weights	=	 sum(le(flpStage15Weights, -1),'all');
maxStage15Weights 	=	 max(flpStage15Weights,[],'all');
minStage15Weights 	=	 min(flpStage15Weights,[],'all');
		
ge1Stage16Weights 	=	 sum(ge(flpStage16Weights, 1),'all');
le_1Stage16Weights	=	 sum(le(flpStage16Weights, -1),'all');
maxStage16Weights 	=	 max(flpStage16Weights,[],'all');
minStage16Weights 	=	 min(flpStage16Weights,[],'all');
		
		
ge1Stage17Weights 	=	 sum(ge(flpStage17Weights, 1),'all');
le_1Stage17Weights	=	 sum(le(flpStage17Weights, -1),'all');
maxStage17Weights 	=	 max(flpStage17Weights,[],'all');
minStage17Weights 	=	 min(flpStage17Weights,[],'all');
		
ge1Stage19Weights 	=	 sum(ge(flpStage19Weights, 1),'all');
le_1Stage19Weights	=	 sum(le(flpStage19Weights, -1),'all');
maxStage19Weights 	=	 max(flpStage19Weights,[],'all');
minStage19Weights 	=	 min(flpStage19Weights,[],'all');

ge1Stage19Bias 		= 	 sum(ge(flpStage19Bias, 1),'all');
le_1Stage19Bias		= 	 sum(le(flpStage19Bias, -1),'all');
maxStage19Bias 		= 	 max(flpStage19Bias,[],'all');
minStage19Bias 		= 	 min(flpStage19Bias,[],'all');

%% fixed point quantization-------------------------------------------------------------------

fxpImage   			= 	num2fixpt(flpImage,ufix(8),2^0);

WWL = 8;		%weight word length
WFL = 2^-7;     %weight fractional length

fxpStage0Weights   =	num2fixpt(flpStage0Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage0Bias      =	num2fixpt(flpStage0Bias    ,sfix(WWL),WFL,'Nearest','on');
														 
fxpStage2Weights   =	num2fixpt(flpStage2Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage2Bias      =	num2fixpt(flpStage2Bias    ,sfix(WWL),WFL,'Nearest','on');
fxpStage3Weights   =	num2fixpt(flpStage3Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage3Bias      =	num2fixpt(flpStage3Bias    ,sfix(WWL),WFL,'Nearest','on');	
fxpStage4Weights   =	num2fixpt(flpStage4Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage4Bias      =	num2fixpt(flpStage4Bias    ,sfix(WWL),WFL,'Nearest','on');
fxpStage5Weights   =	num2fixpt(flpStage5Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage5Bias      =	num2fixpt(flpStage5Bias    ,sfix(WWL),WFL,'Nearest','on');
														 
fxpStage6Weights   =	num2fixpt(flpStage6Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage6Bias      =    num2fixpt(flpStage6Bias    ,sfix(WWL),WFL,'Nearest','on');
fxpStage7Weights   =    num2fixpt(flpStage7Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage7Bias      =    num2fixpt(flpStage7Bias    ,sfix(WWL),WFL,'Nearest','on');
fxpStage8Weights   =    num2fixpt(flpStage8Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage8Bias      =    num2fixpt(flpStage8Bias    ,sfix(WWL),WFL,'Nearest','on');
fxpStage9Weights   =    num2fixpt(flpStage9Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage9Bias      =    num2fixpt(flpStage9Bias    ,sfix(WWL),WFL,'Nearest','on');
														
fxpStage10Weights  =	num2fixpt(flpStage10Weights,sfix(WWL),WFL,'Nearest','on');
fxpStage10Bias     =    num2fixpt(flpStage10Bias   ,sfix(WWL),WFL,'Nearest','on');
fxpStage11Weights  =    num2fixpt(flpStage11Weights,sfix(WWL),WFL,'Nearest','on');
fxpStage11Bias     =    num2fixpt(flpStage11Bias   ,sfix(WWL),WFL,'Nearest','on');
fxpStage12Weights  =    num2fixpt(flpStage12Weights,sfix(WWL),WFL,'Nearest','on');
fxpStage12Bias     =    num2fixpt(flpStage12Bias   ,sfix(WWL),WFL,'Nearest','on');
fxpStage13Weights  =    num2fixpt(flpStage13Weights,sfix(WWL),WFL,'Nearest','on');
fxpStage13Bias     =    num2fixpt(flpStage13Bias   ,sfix(WWL),WFL,'Nearest','on');
														 
fxpStage14Weights  =	num2fixpt(flpStage14Weights,sfix(WWL),WFL,'Nearest','on');
fxpStage14Bias     =    num2fixpt(flpStage14Bias   ,sfix(WWL),WFL,'Nearest','on');
fxpStage15Weights  =    num2fixpt(flpStage15Weights,sfix(WWL),WFL,'Nearest','on');
fxpStage15Bias     =    num2fixpt(flpStage15Bias   ,sfix(WWL),WFL,'Nearest','on');
fxpStage16Weights  =    num2fixpt(flpStage16Weights,sfix(WWL),WFL,'Nearest','on');
fxpStage16Bias     =    num2fixpt(flpStage16Bias   ,sfix(WWL),WFL,'Nearest','on');
fxpStage17Weights  =    num2fixpt(flpStage17Weights,sfix(WWL),WFL,'Nearest','on');
fxpStage17Bias     =    num2fixpt(flpStage17Bias   ,sfix(WWL),WFL,'Nearest','on');
														
fxpStage19Weights  =	num2fixpt(flpStage19Weights,sfix(WWL),WFL,'Nearest','on');
fxpStage19Bias     =    num2fixpt(flpStage19Bias   ,sfix(WWL),WFL,'Nearest','on');

%% mean square error ---------------------------------------------------------------------------------
errImage           =    immse(flpImage, fxpImage);

errStage0Weights   =	immse(flpStage0Weights , fxpStage0Weights );
											                
errStage2Weights   = 	immse(flpStage2Weights , fxpStage2Weights );
errStage3Weights   =    immse(flpStage3Weights , fxpStage3Weights );
errStage4Weights   =    immse(flpStage4Weights , fxpStage4Weights );
errStage5Weights   =	immse(flpStage5Weights , fxpStage5Weights );
                                                                
errStage6Weights   =	immse(flpStage6Weights , fxpStage6Weights );
errStage7Weights   =	immse(flpStage7Weights , fxpStage7Weights );
errStage8Weights   =	immse(flpStage8Weights , fxpStage8Weights );
errStage9Weights   =	immse(flpStage9Weights , fxpStage9Weights );
											               
errStage10Weights  = 	immse(flpStage10Weights, fxpStage10Weights); 
errStage11Weights  =	immse(flpStage11Weights, fxpStage11Weights);  
errStage12Weights  = 	immse(flpStage12Weights, fxpStage12Weights); 
errStage13Weights  =	immse(flpStage13Weights, fxpStage13Weights);  
											             
errStage14Weights  = 	immse(flpStage14Weights, fxpStage14Weights);
errStage15Weights  =	immse(flpStage15Weights, fxpStage15Weights);
errStage16Weights  =	immse(flpStage16Weights, fxpStage16Weights);
errStage17Weights  =	immse(flpStage17Weights, fxpStage17Weights);
                                                              
errStage19Weights  =	immse(flpStage19Weights, fxpStage19Weights);
errStage19Bias     =	immse(flpStage19Bias   , fxpStage19Bias   );

%% store weights, bias and image-----------------------------------------------------------------------
save('InputOutput/InputImage','flpImage','fxpImage');

save('WeightsBias/WeightBias0','flpStage0Weights','fxpStage0Weights','flpStage0Bias','fxpStage0Bias','errStage0Weights');

save('WeightsBias/WeightBias2','flpStage2Weights','fxpStage2Weights','flpStage2Bias','fxpStage2Bias','errStage2Weights');
save('WeightsBias/WeightBias3','flpStage3Weights','fxpStage3Weights','flpStage3Bias','fxpStage3Bias','errStage3Weights');
save('WeightsBias/WeightBias4','flpStage4Weights','fxpStage4Weights','flpStage4Bias','fxpStage4Bias','errStage4Weights');
save('WeightsBias/WeightBias5','flpStage5Weights','fxpStage5Weights','flpStage5Bias','fxpStage5Bias','errStage5Weights');
	  
save('WeightsBias/WeightBias6','flpStage6Weights','fxpStage6Weights','flpStage6Bias','fxpStage6Bias','errStage6Weights');
save('WeightsBias/WeightBias7','flpStage7Weights','fxpStage7Weights','flpStage7Bias','fxpStage7Bias','errStage7Weights');
save('WeightsBias/WeightBias8','flpStage8Weights','fxpStage8Weights','flpStage8Bias','fxpStage8Bias','errStage8Weights');
save('WeightsBias/WeightBias9','flpStage9Weights','fxpStage9Weights','flpStage9Bias','fxpStage9Bias','errStage9Weights');
	 
save('WeightsBias/WeightBias10','flpStage10Weights','fxpStage10Weights','flpStage10Bias','fxpStage10Bias','errStage10Weights');
save('WeightsBias/WeightBias11','flpStage11Weights','fxpStage11Weights','flpStage11Bias','fxpStage11Bias','errStage11Weights');
save('WeightsBias/WeightBias12','flpStage12Weights','fxpStage12Weights','flpStage12Bias','fxpStage12Bias','errStage12Weights');
save('WeightsBias/WeightBias13','flpStage13Weights','fxpStage13Weights','flpStage13Bias','fxpStage13Bias','errStage13Weights');
	 
save('WeightsBias/WeightBias14','flpStage14Weights','fxpStage14Weights','flpStage14Bias','fxpStage14Bias','errStage14Weights');
save('WeightsBias/WeightBias15','flpStage15Weights','fxpStage15Weights','flpStage15Bias','fxpStage15Bias','errStage15Weights');
save('WeightsBias/WeightBias16','flpStage16Weights','fxpStage16Weights','flpStage16Bias','fxpStage16Bias','errStage16Weights');
save('WeightsBias/WeightBias17','flpStage17Weights','fxpStage17Weights','flpStage17Bias','fxpStage17Bias','errStage17Weights');
	  
save('WeightsBias/WeightBias19','flpStage19Weights','fxpStage19Weights','flpStage19Bias','fxpStage19Bias','errStage19Weights');


%% store max and min weights-----------------------------------------------------------------------

% fid = fopen('result.txt','wt');
%  fprintf(fid,'\tMaxMinStages =	[\n');
% for i = 0 : 19
%     if (i~=1 && i~=18)
%         fprintf(fid,'\t\t%d ,maxStage%dWeights , minStage%dWeights',i,i,i);
%         fprintf(fid,'\n');
%     end
% end
%  fprintf(fid,'\t];');
% fclose(fid);

	MaxMinStages =	[
		0 ,maxStage0Weights , minStage0Weights
		2 ,maxStage2Weights , minStage2Weights
		3 ,maxStage3Weights , minStage3Weights
		4 ,maxStage4Weights , minStage4Weights
		5 ,maxStage5Weights , minStage5Weights
		6 ,maxStage6Weights , minStage6Weights
		7 ,maxStage7Weights , minStage7Weights
		8 ,maxStage8Weights , minStage8Weights
		9 ,maxStage9Weights , minStage9Weights
		10 ,maxStage10Weights , minStage10Weights
		11 ,maxStage11Weights , minStage11Weights
		12 ,maxStage12Weights , minStage12Weights
		13 ,maxStage13Weights , minStage13Weights
		14 ,maxStage14Weights , minStage14Weights
		15 ,maxStage15Weights , minStage15Weights
		16 ,maxStage16Weights , minStage16Weights
		17 ,maxStage17Weights , minStage17Weights
		19 ,maxStage19Weights , minStage19Weights
	];

filename = "excel/MaxMinWeights.xlsx";
writematrix(MaxMinStages,filename);









