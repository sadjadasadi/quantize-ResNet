clc;
clear all;
%% define network-----------------------------------------------------------------------------
net = resnet50;
%% Draph--------------------------------------------------------------------------------------
% lgraph = layerGraph(net)
% figure
% plot(lgraph)
%% load input image and resize ---------------------------------------------------------------
Image = imread('InputOutput/Lenna.png');
flpImage = double(imresize(Image, [224 224]));
%% get layer weights and bias -----------------------------------------------------------------
flpStage0Weights	=	double(net.Layers(2,1).Weights);
flpStage0Bias   	=	double(net.Layers(2,1).Bias);
		
flpStage2Weights	=	double(net.Layers(6,1).Weights);
flpStage2Bias   	=	double(net.Layers(6,1).Bias);
flpStage3Weights	=	double(net.Layers(9,1).Weights);
flpStage3Bias   	=	double(net.Layers(9,1).Bias);
flpStage4Weights	=	double(net.Layers(12,1).Weights);
flpStage4Bias   	=	double(net.Layers(12,1).Bias);
flpStage5Weights	=	double(net.Layers(18,1).Weights);
flpStage5Bias   	=	double(net.Layers(18,1).Bias);
flpStage6Weights 	=	double(net.Layers(21,1).Weights);
flpStage6Bias    	=	double(net.Layers(21,1).Bias);
flpStage7Weights 	=	double(net.Layers(24,1).Weights);
flpStage7Bias    	=	double(net.Layers(24,1).Bias);
flpStage8Weights	=	double(net.Layers(28,1).Weights);
flpStage8Bias   	=	double(net.Layers(28,1).Bias);
flpStage9Weights 	=	double(net.Layers(31,1).Weights);
flpStage9Bias    	=	double(net.Layers(31,1).Bias);
flpStage10Weights 	=	double(net.Layers(34,1).Weights);
flpStage10Bias    	=	double(net.Layers(34,1).Bias);

flpStage11Weights 	=	double(net.Layers(38,1).Weights);
flpStage11Bias    	=	double(net.Layers(38,1).Bias);
flpStage12Weights 	=	double(net.Layers(41,1).Weights);
flpStage12Bias    	=	double(net.Layers(41,1).Bias);
flpStage13Weights 	=	double(net.Layers(44,1).Weights);
flpStage13Bias    	=	double(net.Layers(44,1).Bias);
flpStage14Weights 	= 	double(net.Layers(50,1).Weights);
flpStage14Bias    	= 	double(net.Layers(50,1).Bias);
flpStage15Weights 	= 	double(net.Layers(53,1).Weights);
flpStage15Bias    	= 	double(net.Layers(53,1).Bias);
flpStage16Weights 	= 	double(net.Layers(56,1).Weights);
flpStage16Bias    	= 	double(net.Layers(56,1).Bias);
flpStage17Weights 	= 	double(net.Layers(60,1).Weights);
flpStage17Bias    	= 	double(net.Layers(60,1).Bias);
flpStage18Weights   = 	double(net.Layers(63,1).Weights);
flpStage18Bias      = 	double(net.Layers(63,1).Bias);
flpStage19Weights   = 	double(net.Layers(66,1).Weights);
flpStage19Bias      = 	double(net.Layers(66,1).Bias);
flpStage20Weights	=	double(net.Layers(70,1).Weights);
flpStage20Bias   	=	double(net.Layers(70,1).Bias);
flpStage21Weights	=	double(net.Layers(73,1).Weights);
flpStage21Bias   	=	double(net.Layers(73,1).Bias);		
flpStage22Weights	=	double(net.Layers(76,1).Weights);
flpStage22Bias   	=	double(net.Layers(76,1).Bias);

flpStage23Weights 	=	double(net.Layers(80,1).Weights);
flpStage23Bias    	=	double(net.Layers(80,1).Bias);
flpStage24Weights 	= 	double(net.Layers(83,1).Weights);
flpStage24Bias    	= 	double(net.Layers(83,1).Bias);
flpStage25Weights 	= 	double(net.Layers(86,1).Weights);
flpStage25Bias    	= 	double(net.Layers(86,1).Bias);
flpStage26Weights 	= 	double(net.Layers(92,1).Weights);
flpStage26Bias    	= 	double(net.Layers(92,1).Bias);
flpStage27Weights 	= 	double(net.Layers(95,1).Weights);
flpStage27Bias    	= 	double(net.Layers(95,1).Bias);
flpStage28Weights   = 	double(net.Layers(98,1).Weights);
flpStage28Bias      = 	double(net.Layers(98,1).Bias);
flpStage29Weights   = 	double(net.Layers(102,1).Weights);
flpStage29Bias      = 	double(net.Layers(102,1).Bias);
flpStage30Weights	=	double(net.Layers(105,1).Weights);
flpStage30Bias   	=	double(net.Layers(105,1).Bias);
flpStage31Weights	=	double(net.Layers(108,1).Weights);
flpStage31Bias   	=	double(net.Layers(108,1).Bias);		
flpStage32Weights	=	double(net.Layers(112,1).Weights);
flpStage32Bias   	=	double(net.Layers(112,1).Bias);
flpStage33Weights	=	double(net.Layers(115,1).Weights);
flpStage33Bias   	=	double(net.Layers(115,1).Bias);
flpStage34Weights	=	double(net.Layers(118,1).Weights);
flpStage34Bias   	=	double(net.Layers(118,1).Bias);
flpStage35Weights	=	double(net.Layers(122,1).Weights);
flpStage35Bias   	=	double(net.Layers(122,1).Bias);
flpStage36Weights 	=	double(net.Layers(125,1).Weights);
flpStage36Bias    	=	double(net.Layers(125,1).Bias);
flpStage37Weights 	=	double(net.Layers(128,1).Weights);
flpStage37Bias    	=	double(net.Layers(128,1).Bias);
flpStage38Weights	=	double(net.Layers(132,1).Weights);
flpStage38Bias   	=	double(net.Layers(132,1).Bias);
flpStage39Weights 	=	double(net.Layers(135,1).Weights);
flpStage39Bias    	=	double(net.Layers(135,1).Bias);
flpStage40Weights 	=	double(net.Layers(138,1).Weights);
flpStage40Bias    	=	double(net.Layers(138,1).Bias);

flpStage41Weights 	=	double(net.Layers(142,1).Weights);
flpStage41Bias    	=	double(net.Layers(142,1).Bias);
flpStage42Weights 	=	double(net.Layers(145,1).Weights);
flpStage42Bias    	=	double(net.Layers(145,1).Bias);
flpStage43Weights 	=	double(net.Layers(148,1).Weights);
flpStage43Bias    	=	double(net.Layers(148,1).Bias);
flpStage44Weights 	= 	double(net.Layers(154,1).Weights);
flpStage44Bias    	= 	double(net.Layers(154,1).Bias);
flpStage45Weights 	= 	double(net.Layers(157,1).Weights);
flpStage45Bias    	= 	double(net.Layers(157,1).Bias);
flpStage46Weights 	= 	double(net.Layers(160,1).Weights);
flpStage46Bias    	= 	double(net.Layers(160,1).Bias);
flpStage47Weights 	= 	double(net.Layers(164,1).Weights);
flpStage47Bias    	= 	double(net.Layers(164,1).Bias);
flpStage48Weights   = 	double(net.Layers(167,1).Weights);
flpStage48Bias      = 	double(net.Layers(167,1).Bias);
flpStage49Weights   = 	double(net.Layers(170,1).Weights);
flpStage49Bias      = 	double(net.Layers(170,1).Bias);

flpStage51Weights	=	double(net.Layers(175,1).Weights);
flpStage51Bias   	=	double(net.Layers(175,1).Bias);	

% %% get information[grather-than,less-than, max, min, nearest to zero]-------------------------
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


ge1Stage18Weights 	=	 sum(ge(flpStage18Weights, 1),'all');
le_1Stage18Weights	=	 sum(le(flpStage18Weights, -1),'all');
maxStage18Weights 	=	 max(flpStage18Weights,[],'all');
minStage18Weights 	=	 min(flpStage18Weights,[],'all');


ge1Stage19Weights 	=	 sum(ge(flpStage19Weights, 1),'all');
le_1Stage19Weights	=	 sum(le(flpStage19Weights, -1),'all');
maxStage19Weights 	=	 max(flpStage19Weights,[],'all');
minStage19Weights 	=	 min(flpStage19Weights,[],'all');


ge1Stage20Weights 	=	 sum(ge(flpStage20Weights, 1),'all');
le_1Stage20Weights	=	 sum(le(flpStage20Weights, -1),'all');
maxStage20Weights 	=	 max(flpStage20Weights,[],'all');
minStage20Weights 	=	 min(flpStage20Weights,[],'all');


ge1Stage21Weights 	=	 sum(ge(flpStage21Weights, 1),'all');
le_1Stage21Weights	=	 sum(le(flpStage21Weights, -1),'all');
maxStage21Weights 	=	 max(flpStage21Weights,[],'all');
minStage21Weights 	=	 min(flpStage21Weights,[],'all');


ge1Stage22Weights 	=	 sum(ge(flpStage22Weights, 1),'all');
le_1Stage22Weights	=	 sum(le(flpStage22Weights, -1),'all');
maxStage22Weights 	=	 max(flpStage22Weights,[],'all');
minStage22Weights 	=	 min(flpStage22Weights,[],'all');


ge1Stage23Weights 	=	 sum(ge(flpStage23Weights, 1),'all');
le_1Stage23Weights	=	 sum(le(flpStage23Weights, -1),'all');
maxStage23Weights 	=	 max(flpStage23Weights,[],'all');
minStage23Weights 	=	 min(flpStage23Weights,[],'all');


ge1Stage24Weights 	=	 sum(ge(flpStage24Weights, 1),'all');
le_1Stage24Weights	=	 sum(le(flpStage24Weights, -1),'all');
maxStage24Weights 	=	 max(flpStage24Weights,[],'all');
minStage24Weights 	=	 min(flpStage24Weights,[],'all');


ge1Stage25Weights 	=	 sum(ge(flpStage25Weights, 1),'all');
le_1Stage25Weights	=	 sum(le(flpStage25Weights, -1),'all');
maxStage25Weights 	=	 max(flpStage25Weights,[],'all');
minStage25Weights 	=	 min(flpStage25Weights,[],'all');


ge1Stage26Weights 	=	 sum(ge(flpStage26Weights, 1),'all');
le_1Stage26Weights	=	 sum(le(flpStage26Weights, -1),'all');
maxStage26Weights 	=	 max(flpStage26Weights,[],'all');
minStage26Weights 	=	 min(flpStage26Weights,[],'all');


ge1Stage27Weights 	=	 sum(ge(flpStage27Weights, 1),'all');
le_1Stage27Weights	=	 sum(le(flpStage27Weights, -1),'all');
maxStage27Weights 	=	 max(flpStage27Weights,[],'all');
minStage27Weights 	=	 min(flpStage27Weights,[],'all');


ge1Stage28Weights 	=	 sum(ge(flpStage28Weights, 1),'all');
le_1Stage28Weights	=	 sum(le(flpStage28Weights, -1),'all');
maxStage28Weights 	=	 max(flpStage28Weights,[],'all');
minStage28Weights 	=	 min(flpStage28Weights,[],'all');


ge1Stage29Weights 	=	 sum(ge(flpStage29Weights, 1),'all');
le_1Stage29Weights	=	 sum(le(flpStage29Weights, -1),'all');
maxStage29Weights 	=	 max(flpStage29Weights,[],'all');
minStage29Weights 	=	 min(flpStage29Weights,[],'all');


ge1Stage30Weights 	=	 sum(ge(flpStage30Weights, 1),'all');
le_1Stage30Weights	=	 sum(le(flpStage30Weights, -1),'all');
maxStage30Weights 	=	 max(flpStage30Weights,[],'all');
minStage30Weights 	=	 min(flpStage30Weights,[],'all');


ge1Stage31Weights 	=	 sum(ge(flpStage31Weights, 1),'all');
le_1Stage31Weights	=	 sum(le(flpStage31Weights, -1),'all');
maxStage31Weights 	=	 max(flpStage31Weights,[],'all');
minStage31Weights 	=	 min(flpStage31Weights,[],'all');


ge1Stage32Weights 	=	 sum(ge(flpStage32Weights, 1),'all');
le_1Stage32Weights	=	 sum(le(flpStage32Weights, -1),'all');
maxStage32Weights 	=	 max(flpStage32Weights,[],'all');
minStage32Weights 	=	 min(flpStage32Weights,[],'all');


ge1Stage33Weights 	=	 sum(ge(flpStage33Weights, 1),'all');
le_1Stage33Weights	=	 sum(le(flpStage33Weights, -1),'all');
maxStage33Weights 	=	 max(flpStage33Weights,[],'all');
minStage33Weights 	=	 min(flpStage33Weights,[],'all');


ge1Stage34Weights 	=	 sum(ge(flpStage34Weights, 1),'all');
le_1Stage34Weights	=	 sum(le(flpStage34Weights, -1),'all');
maxStage34Weights 	=	 max(flpStage34Weights,[],'all');
minStage34Weights 	=	 min(flpStage34Weights,[],'all');


ge1Stage35Weights 	=	 sum(ge(flpStage35Weights, 1),'all');
le_1Stage35Weights	=	 sum(le(flpStage35Weights, -1),'all');
maxStage35Weights 	=	 max(flpStage35Weights,[],'all');
minStage35Weights 	=	 min(flpStage35Weights,[],'all');


ge1Stage36Weights 	=	 sum(ge(flpStage36Weights, 1),'all');
le_1Stage36Weights	=	 sum(le(flpStage36Weights, -1),'all');
maxStage36Weights 	=	 max(flpStage36Weights,[],'all');
minStage36Weights 	=	 min(flpStage36Weights,[],'all');


ge1Stage37Weights 	=	 sum(ge(flpStage37Weights, 1),'all');
le_1Stage37Weights	=	 sum(le(flpStage37Weights, -1),'all');
maxStage37Weights 	=	 max(flpStage37Weights,[],'all');
minStage37Weights 	=	 min(flpStage37Weights,[],'all');


ge1Stage38Weights 	=	 sum(ge(flpStage38Weights, 1),'all');
le_1Stage38Weights	=	 sum(le(flpStage38Weights, -1),'all');
maxStage38Weights 	=	 max(flpStage38Weights,[],'all');
minStage38Weights 	=	 min(flpStage38Weights,[],'all');


ge1Stage39Weights 	=	 sum(ge(flpStage39Weights, 1),'all');
le_1Stage39Weights	=	 sum(le(flpStage39Weights, -1),'all');
maxStage39Weights 	=	 max(flpStage39Weights,[],'all');
minStage39Weights 	=	 min(flpStage39Weights,[],'all');


ge1Stage40Weights 	=	 sum(ge(flpStage40Weights, 1),'all');
le_1Stage40Weights	=	 sum(le(flpStage40Weights, -1),'all');
maxStage40Weights 	=	 max(flpStage40Weights,[],'all');
minStage40Weights 	=	 min(flpStage40Weights,[],'all');


ge1Stage41Weights 	=	 sum(ge(flpStage41Weights, 1),'all');
le_1Stage41Weights	=	 sum(le(flpStage41Weights, -1),'all');
maxStage41Weights 	=	 max(flpStage41Weights,[],'all');
minStage41Weights 	=	 min(flpStage41Weights,[],'all');


ge1Stage42Weights 	=	 sum(ge(flpStage42Weights, 1),'all');
le_1Stage42Weights	=	 sum(le(flpStage42Weights, -1),'all');
maxStage42Weights 	=	 max(flpStage42Weights,[],'all');
minStage42Weights 	=	 min(flpStage42Weights,[],'all');


ge1Stage43Weights 	=	 sum(ge(flpStage43Weights, 1),'all');
le_1Stage43Weights	=	 sum(le(flpStage43Weights, -1),'all');
maxStage43Weights 	=	 max(flpStage43Weights,[],'all');
minStage43Weights 	=	 min(flpStage43Weights,[],'all');


ge1Stage44Weights 	=	 sum(ge(flpStage44Weights, 1),'all');
le_1Stage44Weights	=	 sum(le(flpStage44Weights, -1),'all');
maxStage44Weights 	=	 max(flpStage44Weights,[],'all');
minStage44Weights 	=	 min(flpStage44Weights,[],'all');


ge1Stage45Weights 	=	 sum(ge(flpStage45Weights, 1),'all');
le_1Stage45Weights	=	 sum(le(flpStage45Weights, -1),'all');
maxStage45Weights 	=	 max(flpStage45Weights,[],'all');
minStage45Weights 	=	 min(flpStage45Weights,[],'all');


ge1Stage46Weights 	=	 sum(ge(flpStage46Weights, 1),'all');
le_1Stage46Weights	=	 sum(le(flpStage46Weights, -1),'all');
maxStage46Weights 	=	 max(flpStage46Weights,[],'all');
minStage46Weights 	=	 min(flpStage46Weights,[],'all');


ge1Stage47Weights 	=	 sum(ge(flpStage47Weights, 1),'all');
le_1Stage47Weights	=	 sum(le(flpStage47Weights, -1),'all');
maxStage47Weights 	=	 max(flpStage47Weights,[],'all');
minStage47Weights 	=	 min(flpStage47Weights,[],'all');


ge1Stage48Weights 	=	 sum(ge(flpStage48Weights, 1),'all');
le_1Stage48Weights	=	 sum(le(flpStage48Weights, -1),'all');
maxStage48Weights 	=	 max(flpStage48Weights,[],'all');
minStage48Weights 	=	 min(flpStage48Weights,[],'all');


ge1Stage49Weights 	=	 sum(ge(flpStage49Weights, 1),'all');
le_1Stage49Weights	=	 sum(le(flpStage49Weights, -1),'all');
maxStage49Weights 	=	 max(flpStage49Weights,[],'all');
minStage49Weights 	=	 min(flpStage49Weights,[],'all');


ge1Stage51Weights 	=	 sum(ge(flpStage51Weights, 1),'all');
le_1Stage51Weights	=	 sum(le(flpStage51Weights, -1),'all');
maxStage51Weights 	=	 max(flpStage51Weights,[],'all');
minStage51Weights 	=	 min(flpStage51Weights,[],'all');

 
%% fixed point quantization-------------------------------------------------------------------

fxpImage   			= 	num2fixpt(flpImage,ufix(8),2^0);

WWL = 8;		 %weight word length
WFL = 2^-7;      %weight fractional length

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
fxpStage6Bias      =	num2fixpt(flpStage6Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage7Weights   =	num2fixpt(flpStage7Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage7Bias      =	num2fixpt(flpStage7Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage8Weights   =	num2fixpt(flpStage8Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage8Bias      =	num2fixpt(flpStage8Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage9Weights   =	num2fixpt(flpStage9Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage9Bias      =	num2fixpt(flpStage9Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage10Weights   =	num2fixpt(flpStage10Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage10Bias      =	num2fixpt(flpStage10Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage11Weights   =	num2fixpt(flpStage11Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage11Bias      =	num2fixpt(flpStage11Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage12Weights   =	num2fixpt(flpStage12Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage12Bias      =	num2fixpt(flpStage12Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage13Weights   =	num2fixpt(flpStage13Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage13Bias      =	num2fixpt(flpStage13Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage14Weights   =	num2fixpt(flpStage14Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage14Bias      =	num2fixpt(flpStage14Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage15Weights   =	num2fixpt(flpStage15Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage15Bias      =	num2fixpt(flpStage15Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage16Weights   =	num2fixpt(flpStage16Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage16Bias      =	num2fixpt(flpStage16Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage17Weights   =	num2fixpt(flpStage17Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage17Bias      =	num2fixpt(flpStage17Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage18Weights   =	num2fixpt(flpStage18Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage18Bias      =	num2fixpt(flpStage18Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage19Weights   =	num2fixpt(flpStage19Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage19Bias      =	num2fixpt(flpStage19Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage20Weights   =	num2fixpt(flpStage20Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage20Bias      =	num2fixpt(flpStage20Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage21Weights   =	num2fixpt(flpStage21Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage21Bias      =	num2fixpt(flpStage21Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage22Weights   =	num2fixpt(flpStage22Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage22Bias      =	num2fixpt(flpStage22Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage23Weights   =	num2fixpt(flpStage23Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage23Bias      =	num2fixpt(flpStage23Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage24Weights   =	num2fixpt(flpStage24Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage24Bias      =	num2fixpt(flpStage24Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage25Weights   =	num2fixpt(flpStage25Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage25Bias      =	num2fixpt(flpStage25Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage26Weights   =	num2fixpt(flpStage26Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage26Bias      =	num2fixpt(flpStage26Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage27Weights   =	num2fixpt(flpStage27Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage27Bias      =	num2fixpt(flpStage27Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage28Weights   =	num2fixpt(flpStage28Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage28Bias      =	num2fixpt(flpStage28Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage29Weights   =	num2fixpt(flpStage29Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage29Bias      =	num2fixpt(flpStage29Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage30Weights   =	num2fixpt(flpStage30Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage30Bias      =	num2fixpt(flpStage30Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage31Weights   =	num2fixpt(flpStage31Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage31Bias      =	num2fixpt(flpStage31Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage32Weights   =	num2fixpt(flpStage32Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage32Bias      =	num2fixpt(flpStage32Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage33Weights   =	num2fixpt(flpStage33Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage33Bias      =	num2fixpt(flpStage33Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage34Weights   =	num2fixpt(flpStage34Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage34Bias      =	num2fixpt(flpStage34Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage35Weights   =	num2fixpt(flpStage35Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage35Bias      =	num2fixpt(flpStage35Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage36Weights   =	num2fixpt(flpStage36Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage36Bias      =	num2fixpt(flpStage36Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage37Weights   =	num2fixpt(flpStage37Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage37Bias      =	num2fixpt(flpStage37Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage38Weights   =	num2fixpt(flpStage38Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage38Bias      =	num2fixpt(flpStage38Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage39Weights   =	num2fixpt(flpStage39Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage39Bias      =	num2fixpt(flpStage39Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage40Weights   =	num2fixpt(flpStage40Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage40Bias      =	num2fixpt(flpStage40Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage41Weights   =	num2fixpt(flpStage41Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage41Bias      =	num2fixpt(flpStage41Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage42Weights   =	num2fixpt(flpStage42Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage42Bias      =	num2fixpt(flpStage42Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage43Weights   =	num2fixpt(flpStage43Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage43Bias      =	num2fixpt(flpStage43Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage44Weights   =	num2fixpt(flpStage44Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage44Bias      =	num2fixpt(flpStage44Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage45Weights   =	num2fixpt(flpStage45Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage45Bias      =	num2fixpt(flpStage45Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage46Weights   =	num2fixpt(flpStage46Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage46Bias      =	num2fixpt(flpStage46Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage47Weights   =	num2fixpt(flpStage47Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage47Bias      =	num2fixpt(flpStage47Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage48Weights   =	num2fixpt(flpStage48Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage48Bias      =	num2fixpt(flpStage48Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage49Weights   =	num2fixpt(flpStage49Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage49Bias      =	num2fixpt(flpStage49Bias    ,sfix(WWL),WFL,'Nearest','on');
														
fxpStage51Weights  =	num2fixpt(flpStage51Weights,sfix(WWL),WFL,'Nearest','on');
fxpStage51Bias     =    num2fixpt(flpStage51Bias   ,sfix(WWL),WFL,'Nearest','on');

%% mean square error ---------------------------------------------------------------------------------
errImage           =  immse(flpImage, fxpImage);

errStage0Weights   =	immse(flpStage0Weights , fxpStage0Weights );
											                
errStage2Weights   = 	immse(flpStage2Weights , fxpStage2Weights );
errStage3Weights   = 	immse(flpStage3Weights , fxpStage3Weights );
errStage4Weights   = 	immse(flpStage4Weights , fxpStage4Weights );
errStage5Weights   = 	immse(flpStage5Weights , fxpStage5Weights );
errStage6Weights   = 	immse(flpStage6Weights , fxpStage6Weights );
errStage7Weights   = 	immse(flpStage7Weights , fxpStage7Weights );
errStage8Weights   = 	immse(flpStage8Weights , fxpStage8Weights );
errStage9Weights   = 	immse(flpStage9Weights , fxpStage9Weights );
errStage10Weights   = 	immse(flpStage10Weights , fxpStage10Weights );
errStage11Weights   = 	immse(flpStage11Weights , fxpStage11Weights );
errStage12Weights   = 	immse(flpStage12Weights , fxpStage12Weights );
errStage13Weights   = 	immse(flpStage13Weights , fxpStage13Weights );
errStage14Weights   = 	immse(flpStage14Weights , fxpStage14Weights );
errStage15Weights   = 	immse(flpStage15Weights , fxpStage15Weights );
errStage16Weights   = 	immse(flpStage16Weights , fxpStage16Weights );
errStage17Weights   = 	immse(flpStage17Weights , fxpStage17Weights );
errStage18Weights   = 	immse(flpStage18Weights , fxpStage18Weights );
errStage19Weights   = 	immse(flpStage19Weights , fxpStage19Weights );
errStage20Weights   = 	immse(flpStage20Weights , fxpStage20Weights );
errStage21Weights   = 	immse(flpStage21Weights , fxpStage21Weights );
errStage22Weights   = 	immse(flpStage22Weights , fxpStage22Weights );
errStage23Weights   = 	immse(flpStage23Weights , fxpStage23Weights );
errStage24Weights   = 	immse(flpStage24Weights , fxpStage24Weights );
errStage25Weights   = 	immse(flpStage25Weights , fxpStage25Weights );
errStage26Weights   = 	immse(flpStage26Weights , fxpStage26Weights );
errStage27Weights   = 	immse(flpStage27Weights , fxpStage27Weights );
errStage28Weights   = 	immse(flpStage28Weights , fxpStage28Weights );
errStage29Weights   = 	immse(flpStage29Weights , fxpStage29Weights );
errStage30Weights   = 	immse(flpStage30Weights , fxpStage30Weights );
errStage31Weights   = 	immse(flpStage31Weights , fxpStage31Weights );
errStage32Weights   = 	immse(flpStage32Weights , fxpStage32Weights );
errStage33Weights   = 	immse(flpStage33Weights , fxpStage33Weights );
errStage34Weights   = 	immse(flpStage34Weights , fxpStage34Weights );
errStage35Weights   = 	immse(flpStage35Weights , fxpStage35Weights );
errStage36Weights   = 	immse(flpStage36Weights , fxpStage36Weights );
errStage37Weights   = 	immse(flpStage37Weights , fxpStage37Weights );
errStage38Weights   = 	immse(flpStage38Weights , fxpStage38Weights );
errStage39Weights   = 	immse(flpStage39Weights , fxpStage39Weights );
errStage40Weights   = 	immse(flpStage40Weights , fxpStage40Weights );
errStage41Weights   = 	immse(flpStage41Weights , fxpStage41Weights );
errStage42Weights   = 	immse(flpStage42Weights , fxpStage42Weights );
errStage43Weights   = 	immse(flpStage43Weights , fxpStage43Weights );
errStage44Weights   = 	immse(flpStage44Weights , fxpStage44Weights );
errStage45Weights   = 	immse(flpStage45Weights , fxpStage45Weights );
errStage46Weights   = 	immse(flpStage46Weights , fxpStage46Weights );
errStage47Weights   = 	immse(flpStage47Weights , fxpStage47Weights );
errStage48Weights   = 	immse(flpStage48Weights , fxpStage48Weights );
errStage49Weights   = 	immse(flpStage49Weights , fxpStage49Weights );
                                                              
errStage51Weights  =	immse(flpStage51Weights, fxpStage51Weights);
errStage51Bias     =	immse(flpStage51Bias, fxpStage51Bias);

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
save('WeightsBias/WeightBias18','flpStage18Weights','fxpStage18Weights','flpStage18Bias','fxpStage18Bias','errStage18Weights');
save('WeightsBias/WeightBias19','flpStage19Weights','fxpStage19Weights','flpStage19Bias','fxpStage19Bias','errStage19Weights');
save('WeightsBias/WeightBias20','flpStage20Weights','fxpStage20Weights','flpStage20Bias','fxpStage20Bias','errStage20Weights');
save('WeightsBias/WeightBias21','flpStage21Weights','fxpStage21Weights','flpStage21Bias','fxpStage21Bias','errStage21Weights');
save('WeightsBias/WeightBias22','flpStage22Weights','fxpStage22Weights','flpStage22Bias','fxpStage22Bias','errStage22Weights');
save('WeightsBias/WeightBias23','flpStage23Weights','fxpStage23Weights','flpStage23Bias','fxpStage23Bias','errStage23Weights');
save('WeightsBias/WeightBias24','flpStage24Weights','fxpStage24Weights','flpStage24Bias','fxpStage24Bias','errStage24Weights');
save('WeightsBias/WeightBias25','flpStage25Weights','fxpStage25Weights','flpStage25Bias','fxpStage25Bias','errStage25Weights');
save('WeightsBias/WeightBias26','flpStage26Weights','fxpStage26Weights','flpStage26Bias','fxpStage26Bias','errStage26Weights');
save('WeightsBias/WeightBias27','flpStage27Weights','fxpStage27Weights','flpStage27Bias','fxpStage27Bias','errStage27Weights');
save('WeightsBias/WeightBias28','flpStage28Weights','fxpStage28Weights','flpStage28Bias','fxpStage28Bias','errStage28Weights');
save('WeightsBias/WeightBias29','flpStage29Weights','fxpStage29Weights','flpStage29Bias','fxpStage29Bias','errStage29Weights');
save('WeightsBias/WeightBias30','flpStage30Weights','fxpStage30Weights','flpStage30Bias','fxpStage30Bias','errStage30Weights');
save('WeightsBias/WeightBias31','flpStage31Weights','fxpStage31Weights','flpStage31Bias','fxpStage31Bias','errStage31Weights');
save('WeightsBias/WeightBias32','flpStage32Weights','fxpStage32Weights','flpStage32Bias','fxpStage32Bias','errStage32Weights');
save('WeightsBias/WeightBias33','flpStage33Weights','fxpStage33Weights','flpStage33Bias','fxpStage33Bias','errStage33Weights');
save('WeightsBias/WeightBias34','flpStage34Weights','fxpStage34Weights','flpStage34Bias','fxpStage34Bias','errStage34Weights');
save('WeightsBias/WeightBias35','flpStage35Weights','fxpStage35Weights','flpStage35Bias','fxpStage35Bias','errStage35Weights');
save('WeightsBias/WeightBias36','flpStage36Weights','fxpStage36Weights','flpStage36Bias','fxpStage36Bias','errStage36Weights');
save('WeightsBias/WeightBias37','flpStage37Weights','fxpStage37Weights','flpStage37Bias','fxpStage37Bias','errStage37Weights');
save('WeightsBias/WeightBias38','flpStage38Weights','fxpStage38Weights','flpStage38Bias','fxpStage38Bias','errStage38Weights');
save('WeightsBias/WeightBias39','flpStage39Weights','fxpStage39Weights','flpStage39Bias','fxpStage39Bias','errStage39Weights');
save('WeightsBias/WeightBias40','flpStage40Weights','fxpStage40Weights','flpStage40Bias','fxpStage40Bias','errStage40Weights');
save('WeightsBias/WeightBias41','flpStage41Weights','fxpStage41Weights','flpStage41Bias','fxpStage41Bias','errStage41Weights');
save('WeightsBias/WeightBias42','flpStage42Weights','fxpStage42Weights','flpStage42Bias','fxpStage42Bias','errStage42Weights');
save('WeightsBias/WeightBias43','flpStage43Weights','fxpStage43Weights','flpStage43Bias','fxpStage43Bias','errStage43Weights');
save('WeightsBias/WeightBias44','flpStage44Weights','fxpStage44Weights','flpStage44Bias','fxpStage44Bias','errStage44Weights');
save('WeightsBias/WeightBias45','flpStage45Weights','fxpStage45Weights','flpStage45Bias','fxpStage45Bias','errStage45Weights');
save('WeightsBias/WeightBias46','flpStage46Weights','fxpStage46Weights','flpStage46Bias','fxpStage46Bias','errStage46Weights');
save('WeightsBias/WeightBias47','flpStage47Weights','fxpStage47Weights','flpStage47Bias','fxpStage47Bias','errStage47Weights');
save('WeightsBias/WeightBias48','flpStage48Weights','fxpStage48Weights','flpStage48Bias','fxpStage48Bias','errStage48Weights');
save('WeightsBias/WeightBias49','flpStage49Weights','fxpStage49Weights','flpStage49Bias','fxpStage49Bias','errStage49Weights');
 
save('WeightsBias/WeightBias51','flpStage51Weights','fxpStage51Weights','flpStage51Bias','fxpStage51Bias','errStage51Weights');





%% store max and min weights-----------------------------------------------------------------------

% fid = fopen('result.txt','wt');
%  fprintf(fid,'\tMaxMinStages =	[\n');
% for i = 0 : 51
%     if (i~=1 && i~=50)
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
		18 ,maxStage18Weights , minStage18Weights
		19 ,maxStage19Weights , minStage19Weights
		20 ,maxStage20Weights , minStage20Weights
		21 ,maxStage21Weights , minStage21Weights
		22 ,maxStage22Weights , minStage22Weights
		23 ,maxStage23Weights , minStage23Weights
		24 ,maxStage24Weights , minStage24Weights
		25 ,maxStage25Weights , minStage25Weights
		26 ,maxStage26Weights , minStage26Weights
		27 ,maxStage27Weights , minStage27Weights
		28 ,maxStage28Weights , minStage28Weights
		29 ,maxStage29Weights , minStage29Weights
		30 ,maxStage30Weights , minStage30Weights
		31 ,maxStage31Weights , minStage31Weights
		32 ,maxStage32Weights , minStage32Weights
		33 ,maxStage33Weights , minStage33Weights
		34 ,maxStage34Weights , minStage34Weights
		35 ,maxStage35Weights , minStage35Weights
		36 ,maxStage36Weights , minStage36Weights
		37 ,maxStage37Weights , minStage37Weights
		38 ,maxStage38Weights , minStage38Weights
		39 ,maxStage39Weights , minStage39Weights
		40 ,maxStage40Weights , minStage40Weights
		41 ,maxStage41Weights , minStage41Weights
		42 ,maxStage42Weights , minStage42Weights
		43 ,maxStage43Weights , minStage43Weights
		44 ,maxStage44Weights , minStage44Weights
		45 ,maxStage45Weights , minStage45Weights
		46 ,maxStage46Weights , minStage46Weights
		47 ,maxStage47Weights , minStage47Weights
		48 ,maxStage48Weights , minStage48Weights
		49 ,maxStage49Weights , minStage49Weights
		51 ,maxStage51Weights , minStage51Weights
	];

filename = "excel/MaxMinWeights.xlsx";
writematrix(MaxMinStages,filename);
