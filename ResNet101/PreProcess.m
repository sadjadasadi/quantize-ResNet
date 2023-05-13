clc;
clear all;
%% define network-----------------------------------------------------------------------------
net = resnet101;
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

flpStage4Weights	=	double(net.Layers(12,1).Weights);
flpStage4Bias   	=	double(net.Layers(12,1).Bias);

flpStage5Weights	=	double(net.Layers(18,1).Weights);
flpStage5Bias   	=	double(net.Layers(18,1).Bias);

flpStage6Weights	=	double(net.Layers(21,1).Weights);
flpStage6Bias   	=	double(net.Layers(21,1).Bias);

flpStage7Weights	=	double(net.Layers(24,1).Weights);
flpStage7Bias   	=	double(net.Layers(24,1).Bias);

flpStage8Weights	=	double(net.Layers(28,1).Weights);
flpStage8Bias   	=	double(net.Layers(28,1).Bias);

flpStage9Weights	=	double(net.Layers(31,1).Weights);
flpStage9Bias   	=	double(net.Layers(31,1).Bias);

flpStage10Weights	=	double(net.Layers(34,1).Weights);
flpStage10Bias   	=	double(net.Layers(34,1).Bias);

flpStage11Weights	=	double(net.Layers(38,1).Weights);
flpStage11Bias   	=	double(net.Layers(38,1).Bias);

flpStage12Weights	=	double(net.Layers(41,1).Weights);
flpStage12Bias   	=	double(net.Layers(41,1).Bias);

flpStage13Weights	=	double(net.Layers(44,1).Weights);
flpStage13Bias   	=	double(net.Layers(44,1).Bias);

flpStage14Weights	=	double(net.Layers(50,1).Weights);
flpStage14Bias   	=	double(net.Layers(50,1).Bias);

flpStage15Weights	=	double(net.Layers(53,1).Weights);
flpStage15Bias   	=	double(net.Layers(53,1).Bias);

flpStage16Weights	=	double(net.Layers(56,1).Weights);
flpStage16Bias   	=	double(net.Layers(56,1).Bias);

flpStage17Weights	=	double(net.Layers(60,1).Weights);
flpStage17Bias   	=	double(net.Layers(60,1).Bias);

flpStage18Weights	=	double(net.Layers(63,1).Weights);
flpStage18Bias   	=	double(net.Layers(63,1).Bias);

flpStage19Weights	=	double(net.Layers(66,1).Weights);
flpStage19Bias   	=	double(net.Layers(66,1).Bias);

flpStage20Weights	=	double(net.Layers(70,1).Weights);
flpStage20Bias   	=	double(net.Layers(70,1).Bias);

flpStage21Weights	=	double(net.Layers(73,1).Weights);
flpStage21Bias   	=	double(net.Layers(73,1).Bias);

flpStage22Weights	=	double(net.Layers(76,1).Weights);
flpStage22Bias   	=	double(net.Layers(76,1).Bias);

flpStage23Weights	=	double(net.Layers(80,1).Weights);
flpStage23Bias   	=	double(net.Layers(80,1).Bias);

flpStage24Weights	=	double(net.Layers(83,1).Weights);
flpStage24Bias   	=	double(net.Layers(83,1).Bias);

flpStage25Weights	=	double(net.Layers(86,1).Weights);
flpStage25Bias   	=	double(net.Layers(86,1).Bias);

flpStage26Weights	=	double(net.Layers(92,1).Weights);
flpStage26Bias   	=	double(net.Layers(92,1).Bias);

flpStage27Weights	=	double(net.Layers(95,1).Weights);
flpStage27Bias   	=	double(net.Layers(95,1).Bias);

flpStage28Weights	=	double(net.Layers(98,1).Weights);
flpStage28Bias   	=	double(net.Layers(98,1).Bias);

flpStage29Weights	=	double(net.Layers(102,1).Weights);
flpStage29Bias   	=	double(net.Layers(102,1).Bias);

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

flpStage36Weights	=	double(net.Layers(125,1).Weights);
flpStage36Bias   	=	double(net.Layers(125,1).Bias);

flpStage37Weights	=	double(net.Layers(128,1).Weights);
flpStage37Bias   	=	double(net.Layers(128,1).Bias);

flpStage38Weights	=	double(net.Layers(132,1).Weights);
flpStage38Bias   	=	double(net.Layers(132,1).Bias);

flpStage39Weights	=	double(net.Layers(135,1).Weights);
flpStage39Bias   	=	double(net.Layers(135,1).Bias);

flpStage40Weights	=	double(net.Layers(138,1).Weights);
flpStage40Bias   	=	double(net.Layers(138,1).Bias);

flpStage41Weights	=	double(net.Layers(142,1).Weights);
flpStage41Bias   	=	double(net.Layers(142,1).Bias);

flpStage42Weights	=	double(net.Layers(145,1).Weights);
flpStage42Bias   	=	double(net.Layers(145,1).Bias);

flpStage43Weights	=	double(net.Layers(148,1).Weights);
flpStage43Bias   	=	double(net.Layers(148,1).Bias);

flpStage44Weights	=	double(net.Layers(152,1).Weights);
flpStage44Bias   	=	double(net.Layers(152,1).Bias);

flpStage45Weights	=	double(net.Layers(155,1).Weights);
flpStage45Bias   	=	double(net.Layers(155,1).Bias);

flpStage46Weights	=	double(net.Layers(158,1).Weights);
flpStage46Bias   	=	double(net.Layers(158,1).Bias);

flpStage47Weights	=	double(net.Layers(162,1).Weights);
flpStage47Bias   	=	double(net.Layers(162,1).Bias);

flpStage48Weights	=	double(net.Layers(165,1).Weights);
flpStage48Bias   	=	double(net.Layers(165,1).Bias);

flpStage49Weights	=	double(net.Layers(168,1).Weights);
flpStage49Bias   	=	double(net.Layers(168,1).Bias);

flpStage50Weights	=	double(net.Layers(172,1).Weights);
flpStage50Bias   	=	double(net.Layers(172,1).Bias);

flpStage51Weights	=	double(net.Layers(175,1).Weights);
flpStage51Bias   	=	double(net.Layers(175,1).Bias);

flpStage52Weights	=	double(net.Layers(178,1).Weights);
flpStage52Bias   	=	double(net.Layers(178,1).Bias);

flpStage53Weights	=	double(net.Layers(182,1).Weights);
flpStage53Bias   	=	double(net.Layers(182,1).Bias);

flpStage54Weights	=	double(net.Layers(185,1).Weights);
flpStage54Bias   	=	double(net.Layers(185,1).Bias);

flpStage55Weights	=	double(net.Layers(188,1).Weights);
flpStage55Bias   	=	double(net.Layers(188,1).Bias);

flpStage56Weights	=	double(net.Layers(192,1).Weights);
flpStage56Bias   	=	double(net.Layers(192,1).Bias);

flpStage57Weights	=	double(net.Layers(195,1).Weights);
flpStage57Bias   	=	double(net.Layers(195,1).Bias);

flpStage58Weights	=	double(net.Layers(198,1).Weights);
flpStage58Bias   	=	double(net.Layers(198,1).Bias);

flpStage59Weights	=	double(net.Layers(202,1).Weights);
flpStage59Bias   	=	double(net.Layers(202,1).Bias);

flpStage60Weights	=	double(net.Layers(205,1).Weights);
flpStage60Bias   	=	double(net.Layers(205,1).Bias);

flpStage61Weights	=	double(net.Layers(208,1).Weights);
flpStage61Bias   	=	double(net.Layers(208,1).Bias);

flpStage62Weights	=	double(net.Layers(212,1).Weights);
flpStage62Bias   	=	double(net.Layers(212,1).Bias);

flpStage63Weights	=	double(net.Layers(215,1).Weights);
flpStage63Bias   	=	double(net.Layers(215,1).Bias);

flpStage64Weights	=	double(net.Layers(218,1).Weights);
flpStage64Bias   	=	double(net.Layers(218,1).Bias);

flpStage65Weights	=	double(net.Layers(222,1).Weights);
flpStage65Bias   	=	double(net.Layers(222,1).Bias);

flpStage66Weights	=	double(net.Layers(225,1).Weights);
flpStage66Bias   	=	double(net.Layers(225,1).Bias);

flpStage67Weights	=	double(net.Layers(228,1).Weights);
flpStage67Bias   	=	double(net.Layers(228,1).Bias);

flpStage68Weights	=	double(net.Layers(232,1).Weights);
flpStage68Bias   	=	double(net.Layers(232,1).Bias);

flpStage69Weights	=	double(net.Layers(235,1).Weights);
flpStage69Bias   	=	double(net.Layers(235,1).Bias);

flpStage70Weights	=	double(net.Layers(238,1).Weights);
flpStage70Bias   	=	double(net.Layers(238,1).Bias);

flpStage71Weights	=	double(net.Layers(242,1).Weights);
flpStage71Bias   	=	double(net.Layers(242,1).Bias);

flpStage72Weights	=	double(net.Layers(245,1).Weights);
flpStage72Bias   	=	double(net.Layers(245,1).Bias);

flpStage73Weights	=	double(net.Layers(248,1).Weights);
flpStage73Bias   	=	double(net.Layers(248,1).Bias);

flpStage74Weights	=	double(net.Layers(252,1).Weights);
flpStage74Bias   	=	double(net.Layers(252,1).Bias);

flpStage75Weights	=	double(net.Layers(255,1).Weights);
flpStage75Bias   	=	double(net.Layers(255,1).Bias);

flpStage76Weights	=	double(net.Layers(258,1).Weights);
flpStage76Bias   	=	double(net.Layers(258,1).Bias);

flpStage77Weights	=	double(net.Layers(262,1).Weights);
flpStage77Bias   	=	double(net.Layers(262,1).Bias);

flpStage78Weights	=	double(net.Layers(265,1).Weights);
flpStage78Bias   	=	double(net.Layers(265,1).Bias);

flpStage79Weights	=	double(net.Layers(268,1).Weights);
flpStage79Bias   	=	double(net.Layers(268,1).Bias);

flpStage80Weights	=	double(net.Layers(272,1).Weights);
flpStage80Bias   	=	double(net.Layers(272,1).Bias);

flpStage81Weights	=	double(net.Layers(275,1).Weights);
flpStage81Bias   	=	double(net.Layers(275,1).Bias);

flpStage82Weights	=	double(net.Layers(278,1).Weights);
flpStage82Bias   	=	double(net.Layers(278,1).Bias);

flpStage83Weights	=	double(net.Layers(282,1).Weights);
flpStage83Bias   	=	double(net.Layers(282,1).Bias);

flpStage84Weights	=	double(net.Layers(285,1).Weights);
flpStage84Bias   	=	double(net.Layers(285,1).Bias);

flpStage85Weights	=	double(net.Layers(288,1).Weights);
flpStage85Bias   	=	double(net.Layers(288,1).Bias);

flpStage86Weights	=	double(net.Layers(292,1).Weights);
flpStage86Bias   	=	double(net.Layers(292,1).Bias);

flpStage87Weights	=	double(net.Layers(295,1).Weights);
flpStage87Bias   	=	double(net.Layers(295,1).Bias);

flpStage88Weights	=	double(net.Layers(298,1).Weights);
flpStage88Bias   	=	double(net.Layers(298,1).Bias);

flpStage89Weights	=	double(net.Layers(302,1).Weights);
flpStage89Bias   	=	double(net.Layers(302,1).Bias);

flpStage90Weights	=	double(net.Layers(305,1).Weights);
flpStage90Bias   	=	double(net.Layers(305,1).Bias);

flpStage91Weights	=	double(net.Layers(308,1).Weights);
flpStage91Bias   	=	double(net.Layers(308,1).Bias);

flpStage92Weights	=	double(net.Layers(312,1).Weights);
flpStage92Bias   	=	double(net.Layers(312,1).Bias);

flpStage93Weights	=	double(net.Layers(315,1).Weights);
flpStage93Bias   	=	double(net.Layers(315,1).Bias);

flpStage94Weights	=	double(net.Layers(318,1).Weights);
flpStage94Bias   	=	double(net.Layers(318,1).Bias);

flpStage95Weights	=	double(net.Layers(324,1).Weights);
flpStage95Bias   	=	double(net.Layers(324,1).Bias);

flpStage96Weights	=	double(net.Layers(327,1).Weights);
flpStage96Bias   	=	double(net.Layers(327,1).Bias);

flpStage97Weights	=	double(net.Layers(330,1).Weights);
flpStage97Bias   	=	double(net.Layers(330,1).Bias);

flpStage98Weights	=	double(net.Layers(334,1).Weights);
flpStage98Bias   	=	double(net.Layers(334,1).Bias);

flpStage99Weights	=	double(net.Layers(337,1).Weights);
flpStage99Bias   	=	double(net.Layers(337,1).Bias);

flpStage100Weights	=	double(net.Layers(340,1).Weights);
flpStage100Bias   	=	double(net.Layers(340,1).Bias);

flpStage102Weights	=	double(net.Layers(345,1).Weights);
flpStage102Bias   	=	double(net.Layers(345,1).Bias);


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

ge1Stage50Weights 	=	 sum(ge(flpStage50Weights, 1),'all');
le_1Stage50Weights	=	 sum(le(flpStage50Weights, -1),'all');
maxStage50Weights 	=	 max(flpStage50Weights,[],'all');
minStage50Weights 	=	 min(flpStage50Weights,[],'all');

ge1Stage51Weights 	=	 sum(ge(flpStage51Weights, 1),'all');
le_1Stage51Weights	=	 sum(le(flpStage51Weights, -1),'all');
maxStage51Weights 	=	 max(flpStage51Weights,[],'all');
minStage51Weights 	=	 min(flpStage51Weights,[],'all');

ge1Stage52Weights 	=	 sum(ge(flpStage52Weights, 1),'all');
le_1Stage52Weights	=	 sum(le(flpStage52Weights, -1),'all');
maxStage52Weights 	=	 max(flpStage52Weights,[],'all');
minStage52Weights 	=	 min(flpStage52Weights,[],'all');

ge1Stage53Weights 	=	 sum(ge(flpStage53Weights, 1),'all');
le_1Stage53Weights	=	 sum(le(flpStage53Weights, -1),'all');
maxStage53Weights 	=	 max(flpStage53Weights,[],'all');
minStage53Weights 	=	 min(flpStage53Weights,[],'all');

ge1Stage54Weights 	=	 sum(ge(flpStage54Weights, 1),'all');
le_1Stage54Weights	=	 sum(le(flpStage54Weights, -1),'all');
maxStage54Weights 	=	 max(flpStage54Weights,[],'all');
minStage54Weights 	=	 min(flpStage54Weights,[],'all');

ge1Stage55Weights 	=	 sum(ge(flpStage55Weights, 1),'all');
le_1Stage55Weights	=	 sum(le(flpStage55Weights, -1),'all');
maxStage55Weights 	=	 max(flpStage55Weights,[],'all');
minStage55Weights 	=	 min(flpStage55Weights,[],'all');

ge1Stage56Weights 	=	 sum(ge(flpStage56Weights, 1),'all');
le_1Stage56Weights	=	 sum(le(flpStage56Weights, -1),'all');
maxStage56Weights 	=	 max(flpStage56Weights,[],'all');
minStage56Weights 	=	 min(flpStage56Weights,[],'all');

ge1Stage57Weights 	=	 sum(ge(flpStage57Weights, 1),'all');
le_1Stage57Weights	=	 sum(le(flpStage57Weights, -1),'all');
maxStage57Weights 	=	 max(flpStage57Weights,[],'all');
minStage57Weights 	=	 min(flpStage57Weights,[],'all');

ge1Stage58Weights 	=	 sum(ge(flpStage58Weights, 1),'all');
le_1Stage58Weights	=	 sum(le(flpStage58Weights, -1),'all');
maxStage58Weights 	=	 max(flpStage58Weights,[],'all');
minStage58Weights 	=	 min(flpStage58Weights,[],'all');

ge1Stage59Weights 	=	 sum(ge(flpStage59Weights, 1),'all');
le_1Stage59Weights	=	 sum(le(flpStage59Weights, -1),'all');
maxStage59Weights 	=	 max(flpStage59Weights,[],'all');
minStage59Weights 	=	 min(flpStage59Weights,[],'all');

ge1Stage60Weights 	=	 sum(ge(flpStage60Weights, 1),'all');
le_1Stage60Weights	=	 sum(le(flpStage60Weights, -1),'all');
maxStage60Weights 	=	 max(flpStage60Weights,[],'all');
minStage60Weights 	=	 min(flpStage60Weights,[],'all');

ge1Stage61Weights 	=	 sum(ge(flpStage61Weights, 1),'all');
le_1Stage61Weights	=	 sum(le(flpStage61Weights, -1),'all');
maxStage61Weights 	=	 max(flpStage61Weights,[],'all');
minStage61Weights 	=	 min(flpStage61Weights,[],'all');

ge1Stage62Weights 	=	 sum(ge(flpStage62Weights, 1),'all');
le_1Stage62Weights	=	 sum(le(flpStage62Weights, -1),'all');
maxStage62Weights 	=	 max(flpStage62Weights,[],'all');
minStage62Weights 	=	 min(flpStage62Weights,[],'all');

ge1Stage63Weights 	=	 sum(ge(flpStage63Weights, 1),'all');
le_1Stage63Weights	=	 sum(le(flpStage63Weights, -1),'all');
maxStage63Weights 	=	 max(flpStage63Weights,[],'all');
minStage63Weights 	=	 min(flpStage63Weights,[],'all');

ge1Stage64Weights 	=	 sum(ge(flpStage64Weights, 1),'all');
le_1Stage64Weights	=	 sum(le(flpStage64Weights, -1),'all');
maxStage64Weights 	=	 max(flpStage64Weights,[],'all');
minStage64Weights 	=	 min(flpStage64Weights,[],'all');

ge1Stage65Weights 	=	 sum(ge(flpStage65Weights, 1),'all');
le_1Stage65Weights	=	 sum(le(flpStage65Weights, -1),'all');
maxStage65Weights 	=	 max(flpStage65Weights,[],'all');
minStage65Weights 	=	 min(flpStage65Weights,[],'all');

ge1Stage66Weights 	=	 sum(ge(flpStage66Weights, 1),'all');
le_1Stage66Weights	=	 sum(le(flpStage66Weights, -1),'all');
maxStage66Weights 	=	 max(flpStage66Weights,[],'all');
minStage66Weights 	=	 min(flpStage66Weights,[],'all');

ge1Stage67Weights 	=	 sum(ge(flpStage67Weights, 1),'all');
le_1Stage67Weights	=	 sum(le(flpStage67Weights, -1),'all');
maxStage67Weights 	=	 max(flpStage67Weights,[],'all');
minStage67Weights 	=	 min(flpStage67Weights,[],'all');

ge1Stage68Weights 	=	 sum(ge(flpStage68Weights, 1),'all');
le_1Stage68Weights	=	 sum(le(flpStage68Weights, -1),'all');
maxStage68Weights 	=	 max(flpStage68Weights,[],'all');
minStage68Weights 	=	 min(flpStage68Weights,[],'all');

ge1Stage69Weights 	=	 sum(ge(flpStage69Weights, 1),'all');
le_1Stage69Weights	=	 sum(le(flpStage69Weights, -1),'all');
maxStage69Weights 	=	 max(flpStage69Weights,[],'all');
minStage69Weights 	=	 min(flpStage69Weights,[],'all');

ge1Stage70Weights 	=	 sum(ge(flpStage70Weights, 1),'all');
le_1Stage70Weights	=	 sum(le(flpStage70Weights, -1),'all');
maxStage70Weights 	=	 max(flpStage70Weights,[],'all');
minStage70Weights 	=	 min(flpStage70Weights,[],'all');

ge1Stage71Weights 	=	 sum(ge(flpStage71Weights, 1),'all');
le_1Stage71Weights	=	 sum(le(flpStage71Weights, -1),'all');
maxStage71Weights 	=	 max(flpStage71Weights,[],'all');
minStage71Weights 	=	 min(flpStage71Weights,[],'all');

ge1Stage72Weights 	=	 sum(ge(flpStage72Weights, 1),'all');
le_1Stage72Weights	=	 sum(le(flpStage72Weights, -1),'all');
maxStage72Weights 	=	 max(flpStage72Weights,[],'all');
minStage72Weights 	=	 min(flpStage72Weights,[],'all');

ge1Stage73Weights 	=	 sum(ge(flpStage73Weights, 1),'all');
le_1Stage73Weights	=	 sum(le(flpStage73Weights, -1),'all');
maxStage73Weights 	=	 max(flpStage73Weights,[],'all');
minStage73Weights 	=	 min(flpStage73Weights,[],'all');

ge1Stage74Weights 	=	 sum(ge(flpStage74Weights, 1),'all');
le_1Stage74Weights	=	 sum(le(flpStage74Weights, -1),'all');
maxStage74Weights 	=	 max(flpStage74Weights,[],'all');
minStage74Weights 	=	 min(flpStage74Weights,[],'all');

ge1Stage75Weights 	=	 sum(ge(flpStage75Weights, 1),'all');
le_1Stage75Weights	=	 sum(le(flpStage75Weights, -1),'all');
maxStage75Weights 	=	 max(flpStage75Weights,[],'all');
minStage75Weights 	=	 min(flpStage75Weights,[],'all');

ge1Stage76Weights 	=	 sum(ge(flpStage76Weights, 1),'all');
le_1Stage76Weights	=	 sum(le(flpStage76Weights, -1),'all');
maxStage76Weights 	=	 max(flpStage76Weights,[],'all');
minStage76Weights 	=	 min(flpStage76Weights,[],'all');

ge1Stage77Weights 	=	 sum(ge(flpStage77Weights, 1),'all');
le_1Stage77Weights	=	 sum(le(flpStage77Weights, -1),'all');
maxStage77Weights 	=	 max(flpStage77Weights,[],'all');
minStage77Weights 	=	 min(flpStage77Weights,[],'all');

ge1Stage78Weights 	=	 sum(ge(flpStage78Weights, 1),'all');
le_1Stage78Weights	=	 sum(le(flpStage78Weights, -1),'all');
maxStage78Weights 	=	 max(flpStage78Weights,[],'all');
minStage78Weights 	=	 min(flpStage78Weights,[],'all');

ge1Stage79Weights 	=	 sum(ge(flpStage79Weights, 1),'all');
le_1Stage79Weights	=	 sum(le(flpStage79Weights, -1),'all');
maxStage79Weights 	=	 max(flpStage79Weights,[],'all');
minStage79Weights 	=	 min(flpStage79Weights,[],'all');

ge1Stage80Weights 	=	 sum(ge(flpStage80Weights, 1),'all');
le_1Stage80Weights	=	 sum(le(flpStage80Weights, -1),'all');
maxStage80Weights 	=	 max(flpStage80Weights,[],'all');
minStage80Weights 	=	 min(flpStage80Weights,[],'all');

ge1Stage81Weights 	=	 sum(ge(flpStage81Weights, 1),'all');
le_1Stage81Weights	=	 sum(le(flpStage81Weights, -1),'all');
maxStage81Weights 	=	 max(flpStage81Weights,[],'all');
minStage81Weights 	=	 min(flpStage81Weights,[],'all');

ge1Stage82Weights 	=	 sum(ge(flpStage82Weights, 1),'all');
le_1Stage82Weights	=	 sum(le(flpStage82Weights, -1),'all');
maxStage82Weights 	=	 max(flpStage82Weights,[],'all');
minStage82Weights 	=	 min(flpStage82Weights,[],'all');

ge1Stage83Weights 	=	 sum(ge(flpStage83Weights, 1),'all');
le_1Stage83Weights	=	 sum(le(flpStage83Weights, -1),'all');
maxStage83Weights 	=	 max(flpStage83Weights,[],'all');
minStage83Weights 	=	 min(flpStage83Weights,[],'all');

ge1Stage84Weights 	=	 sum(ge(flpStage84Weights, 1),'all');
le_1Stage84Weights	=	 sum(le(flpStage84Weights, -1),'all');
maxStage84Weights 	=	 max(flpStage84Weights,[],'all');
minStage84Weights 	=	 min(flpStage84Weights,[],'all');

ge1Stage85Weights 	=	 sum(ge(flpStage85Weights, 1),'all');
le_1Stage85Weights	=	 sum(le(flpStage85Weights, -1),'all');
maxStage85Weights 	=	 max(flpStage85Weights,[],'all');
minStage85Weights 	=	 min(flpStage85Weights,[],'all');

ge1Stage86Weights 	=	 sum(ge(flpStage86Weights, 1),'all');
le_1Stage86Weights	=	 sum(le(flpStage86Weights, -1),'all');
maxStage86Weights 	=	 max(flpStage86Weights,[],'all');
minStage86Weights 	=	 min(flpStage86Weights,[],'all');

ge1Stage87Weights 	=	 sum(ge(flpStage87Weights, 1),'all');
le_1Stage87Weights	=	 sum(le(flpStage87Weights, -1),'all');
maxStage87Weights 	=	 max(flpStage87Weights,[],'all');
minStage87Weights 	=	 min(flpStage87Weights,[],'all');

ge1Stage88Weights 	=	 sum(ge(flpStage88Weights, 1),'all');
le_1Stage88Weights	=	 sum(le(flpStage88Weights, -1),'all');
maxStage88Weights 	=	 max(flpStage88Weights,[],'all');
minStage88Weights 	=	 min(flpStage88Weights,[],'all');

ge1Stage89Weights 	=	 sum(ge(flpStage89Weights, 1),'all');
le_1Stage89Weights	=	 sum(le(flpStage89Weights, -1),'all');
maxStage89Weights 	=	 max(flpStage89Weights,[],'all');
minStage89Weights 	=	 min(flpStage89Weights,[],'all');

ge1Stage90Weights 	=	 sum(ge(flpStage90Weights, 1),'all');
le_1Stage90Weights	=	 sum(le(flpStage90Weights, -1),'all');
maxStage90Weights 	=	 max(flpStage90Weights,[],'all');
minStage90Weights 	=	 min(flpStage90Weights,[],'all');

ge1Stage91Weights 	=	 sum(ge(flpStage91Weights, 1),'all');
le_1Stage91Weights	=	 sum(le(flpStage91Weights, -1),'all');
maxStage91Weights 	=	 max(flpStage91Weights,[],'all');
minStage91Weights 	=	 min(flpStage91Weights,[],'all');

ge1Stage92Weights 	=	 sum(ge(flpStage92Weights, 1),'all');
le_1Stage92Weights	=	 sum(le(flpStage92Weights, -1),'all');
maxStage92Weights 	=	 max(flpStage92Weights,[],'all');
minStage92Weights 	=	 min(flpStage92Weights,[],'all');

ge1Stage93Weights 	=	 sum(ge(flpStage93Weights, 1),'all');
le_1Stage93Weights	=	 sum(le(flpStage93Weights, -1),'all');
maxStage93Weights 	=	 max(flpStage93Weights,[],'all');
minStage93Weights 	=	 min(flpStage93Weights,[],'all');

ge1Stage94Weights 	=	 sum(ge(flpStage94Weights, 1),'all');
le_1Stage94Weights	=	 sum(le(flpStage94Weights, -1),'all');
maxStage94Weights 	=	 max(flpStage94Weights,[],'all');
minStage94Weights 	=	 min(flpStage94Weights,[],'all');

ge1Stage95Weights 	=	 sum(ge(flpStage95Weights, 1),'all');
le_1Stage95Weights	=	 sum(le(flpStage95Weights, -1),'all');
maxStage95Weights 	=	 max(flpStage95Weights,[],'all');
minStage95Weights 	=	 min(flpStage95Weights,[],'all');

ge1Stage96Weights 	=	 sum(ge(flpStage96Weights, 1),'all');
le_1Stage96Weights	=	 sum(le(flpStage96Weights, -1),'all');
maxStage96Weights 	=	 max(flpStage96Weights,[],'all');
minStage96Weights 	=	 min(flpStage96Weights,[],'all');

ge1Stage97Weights 	=	 sum(ge(flpStage97Weights, 1),'all');
le_1Stage97Weights	=	 sum(le(flpStage97Weights, -1),'all');
maxStage97Weights 	=	 max(flpStage97Weights,[],'all');
minStage97Weights 	=	 min(flpStage97Weights,[],'all');

ge1Stage98Weights 	=	 sum(ge(flpStage98Weights, 1),'all');
le_1Stage98Weights	=	 sum(le(flpStage98Weights, -1),'all');
maxStage98Weights 	=	 max(flpStage98Weights,[],'all');
minStage98Weights 	=	 min(flpStage98Weights,[],'all');

ge1Stage99Weights 	=	 sum(ge(flpStage99Weights, 1),'all');
le_1Stage99Weights	=	 sum(le(flpStage99Weights, -1),'all');
maxStage99Weights 	=	 max(flpStage99Weights,[],'all');
minStage99Weights 	=	 min(flpStage99Weights,[],'all');

ge1Stage100Weights 	=	 sum(ge(flpStage100Weights, 1),'all');
le_1Stage100Weights	=	 sum(le(flpStage100Weights, -1),'all');
maxStage100Weights 	=	 max(flpStage100Weights,[],'all');
minStage100Weights 	=	 min(flpStage100Weights,[],'all');

ge1Stage102Weights 	=	 sum(ge(flpStage102Weights, 1),'all');
le_1Stage102Weights	=	 sum(le(flpStage102Weights, -1),'all');
maxStage102Weights 	=	 max(flpStage102Weights,[],'all');
minStage102Weights 	=	 min(flpStage102Weights,[],'all');
 
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

fxpStage50Weights   =	num2fixpt(flpStage50Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage50Bias      =	num2fixpt(flpStage50Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage51Weights   =	num2fixpt(flpStage51Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage51Bias      =	num2fixpt(flpStage51Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage52Weights   =	num2fixpt(flpStage52Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage52Bias      =	num2fixpt(flpStage52Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage53Weights   =	num2fixpt(flpStage53Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage53Bias      =	num2fixpt(flpStage53Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage54Weights   =	num2fixpt(flpStage54Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage54Bias      =	num2fixpt(flpStage54Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage55Weights   =	num2fixpt(flpStage55Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage55Bias      =	num2fixpt(flpStage55Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage56Weights   =	num2fixpt(flpStage56Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage56Bias      =	num2fixpt(flpStage56Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage57Weights   =	num2fixpt(flpStage57Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage57Bias      =	num2fixpt(flpStage57Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage58Weights   =	num2fixpt(flpStage58Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage58Bias      =	num2fixpt(flpStage58Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage59Weights   =	num2fixpt(flpStage59Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage59Bias      =	num2fixpt(flpStage59Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage60Weights   =	num2fixpt(flpStage60Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage60Bias      =	num2fixpt(flpStage60Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage61Weights   =	num2fixpt(flpStage61Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage61Bias      =	num2fixpt(flpStage61Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage62Weights   =	num2fixpt(flpStage62Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage62Bias      =	num2fixpt(flpStage62Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage63Weights   =	num2fixpt(flpStage63Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage63Bias      =	num2fixpt(flpStage63Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage64Weights   =	num2fixpt(flpStage64Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage64Bias      =	num2fixpt(flpStage64Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage65Weights   =	num2fixpt(flpStage65Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage65Bias      =	num2fixpt(flpStage65Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage66Weights   =	num2fixpt(flpStage66Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage66Bias      =	num2fixpt(flpStage66Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage67Weights   =	num2fixpt(flpStage67Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage67Bias      =	num2fixpt(flpStage67Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage68Weights   =	num2fixpt(flpStage68Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage68Bias      =	num2fixpt(flpStage68Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage69Weights   =	num2fixpt(flpStage69Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage69Bias      =	num2fixpt(flpStage69Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage70Weights   =	num2fixpt(flpStage70Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage70Bias      =	num2fixpt(flpStage70Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage71Weights   =	num2fixpt(flpStage71Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage71Bias      =	num2fixpt(flpStage71Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage72Weights   =	num2fixpt(flpStage72Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage72Bias      =	num2fixpt(flpStage72Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage73Weights   =	num2fixpt(flpStage73Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage73Bias      =	num2fixpt(flpStage73Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage74Weights   =	num2fixpt(flpStage74Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage74Bias      =	num2fixpt(flpStage74Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage75Weights   =	num2fixpt(flpStage75Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage75Bias      =	num2fixpt(flpStage75Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage76Weights   =	num2fixpt(flpStage76Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage76Bias      =	num2fixpt(flpStage76Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage77Weights   =	num2fixpt(flpStage77Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage77Bias      =	num2fixpt(flpStage77Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage78Weights   =	num2fixpt(flpStage78Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage78Bias      =	num2fixpt(flpStage78Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage79Weights   =	num2fixpt(flpStage79Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage79Bias      =	num2fixpt(flpStage79Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage80Weights   =	num2fixpt(flpStage80Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage80Bias      =	num2fixpt(flpStage80Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage81Weights   =	num2fixpt(flpStage81Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage81Bias      =	num2fixpt(flpStage81Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage82Weights   =	num2fixpt(flpStage82Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage82Bias      =	num2fixpt(flpStage82Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage83Weights   =	num2fixpt(flpStage83Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage83Bias      =	num2fixpt(flpStage83Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage84Weights   =	num2fixpt(flpStage84Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage84Bias      =	num2fixpt(flpStage84Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage85Weights   =	num2fixpt(flpStage85Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage85Bias      =	num2fixpt(flpStage85Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage86Weights   =	num2fixpt(flpStage86Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage86Bias      =	num2fixpt(flpStage86Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage87Weights   =	num2fixpt(flpStage87Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage87Bias      =	num2fixpt(flpStage87Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage88Weights   =	num2fixpt(flpStage88Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage88Bias      =	num2fixpt(flpStage88Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage89Weights   =	num2fixpt(flpStage89Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage89Bias      =	num2fixpt(flpStage89Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage90Weights   =	num2fixpt(flpStage90Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage90Bias      =	num2fixpt(flpStage90Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage91Weights   =	num2fixpt(flpStage91Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage91Bias      =	num2fixpt(flpStage91Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage92Weights   =	num2fixpt(flpStage92Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage92Bias      =	num2fixpt(flpStage92Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage93Weights   =	num2fixpt(flpStage93Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage93Bias      =	num2fixpt(flpStage93Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage94Weights   =	num2fixpt(flpStage94Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage94Bias      =	num2fixpt(flpStage94Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage95Weights   =	num2fixpt(flpStage95Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage95Bias      =	num2fixpt(flpStage95Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage96Weights   =	num2fixpt(flpStage96Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage96Bias      =	num2fixpt(flpStage96Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage97Weights   =	num2fixpt(flpStage97Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage97Bias      =	num2fixpt(flpStage97Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage98Weights   =	num2fixpt(flpStage98Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage98Bias      =	num2fixpt(flpStage98Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage99Weights   =	num2fixpt(flpStage99Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage99Bias      =	num2fixpt(flpStage99Bias    ,sfix(WWL),WFL,'Nearest','on');

fxpStage100Weights   =	num2fixpt(flpStage100Weights ,sfix(WWL),WFL,'Nearest','on');
fxpStage100Bias      =	num2fixpt(flpStage100Bias    ,sfix(WWL),WFL,'Nearest','on');
														
fxpStage102Weights  =	num2fixpt(flpStage102Weights,sfix(WWL),WFL,'Nearest','on');
fxpStage102Bias     =   num2fixpt(flpStage102Bias   ,sfix(WWL),WFL,'Nearest','on');

%% mean square error ---------------------------------------------------------------------------------
errImage           =    immse(flpImage, fxpImage);

errStage0Weights   =	immse(flpStage0Weights , fxpStage0Weights );
											                
errStage2Weights   =     immse(flpStage2Weights , fxpStage2Weights );
errStage3Weights   =     immse(flpStage3Weights , fxpStage3Weights );
errStage4Weights   =     immse(flpStage4Weights , fxpStage4Weights );
errStage5Weights   =     immse(flpStage5Weights , fxpStage5Weights );
errStage6Weights   =     immse(flpStage6Weights , fxpStage6Weights );
errStage7Weights   =     immse(flpStage7Weights , fxpStage7Weights );
errStage8Weights   =     immse(flpStage8Weights , fxpStage8Weights );
errStage9Weights   =     immse(flpStage9Weights , fxpStage9Weights );
errStage10Weights   =     immse(flpStage10Weights , fxpStage10Weights );
errStage11Weights   =     immse(flpStage11Weights , fxpStage11Weights );
errStage12Weights   =     immse(flpStage12Weights , fxpStage12Weights );
errStage13Weights   =     immse(flpStage13Weights , fxpStage13Weights );
errStage14Weights   =     immse(flpStage14Weights , fxpStage14Weights );
errStage15Weights   =     immse(flpStage15Weights , fxpStage15Weights );
errStage16Weights   =     immse(flpStage16Weights , fxpStage16Weights );
errStage17Weights   =     immse(flpStage17Weights , fxpStage17Weights );
errStage18Weights   =     immse(flpStage18Weights , fxpStage18Weights );
errStage19Weights   =     immse(flpStage19Weights , fxpStage19Weights );
errStage20Weights   =     immse(flpStage20Weights , fxpStage20Weights );
errStage21Weights   =     immse(flpStage21Weights , fxpStage21Weights );
errStage22Weights   =     immse(flpStage22Weights , fxpStage22Weights );
errStage23Weights   =     immse(flpStage23Weights , fxpStage23Weights );
errStage24Weights   =     immse(flpStage24Weights , fxpStage24Weights );
errStage25Weights   =     immse(flpStage25Weights , fxpStage25Weights );
errStage26Weights   =     immse(flpStage26Weights , fxpStage26Weights );
errStage27Weights   =     immse(flpStage27Weights , fxpStage27Weights );
errStage28Weights   =     immse(flpStage28Weights , fxpStage28Weights );
errStage29Weights   =     immse(flpStage29Weights , fxpStage29Weights );
errStage30Weights   =     immse(flpStage30Weights , fxpStage30Weights );
errStage31Weights   =     immse(flpStage31Weights , fxpStage31Weights );
errStage32Weights   =     immse(flpStage32Weights , fxpStage32Weights );
errStage33Weights   =     immse(flpStage33Weights , fxpStage33Weights );
errStage34Weights   =     immse(flpStage34Weights , fxpStage34Weights );
errStage35Weights   =     immse(flpStage35Weights , fxpStage35Weights );
errStage36Weights   =     immse(flpStage36Weights , fxpStage36Weights );
errStage37Weights   =     immse(flpStage37Weights , fxpStage37Weights );
errStage38Weights   =     immse(flpStage38Weights , fxpStage38Weights );
errStage39Weights   =     immse(flpStage39Weights , fxpStage39Weights );
errStage40Weights   =     immse(flpStage40Weights , fxpStage40Weights );
errStage41Weights   =     immse(flpStage41Weights , fxpStage41Weights );
errStage42Weights   =     immse(flpStage42Weights , fxpStage42Weights );
errStage43Weights   =     immse(flpStage43Weights , fxpStage43Weights );
errStage44Weights   =     immse(flpStage44Weights , fxpStage44Weights );
errStage45Weights   =     immse(flpStage45Weights , fxpStage45Weights );
errStage46Weights   =     immse(flpStage46Weights , fxpStage46Weights );
errStage47Weights   =     immse(flpStage47Weights , fxpStage47Weights );
errStage48Weights   =     immse(flpStage48Weights , fxpStage48Weights );
errStage49Weights   =     immse(flpStage49Weights , fxpStage49Weights );
errStage50Weights   =     immse(flpStage50Weights , fxpStage50Weights );
errStage51Weights   =     immse(flpStage51Weights , fxpStage51Weights );
errStage52Weights   =     immse(flpStage52Weights , fxpStage52Weights );
errStage53Weights   =     immse(flpStage53Weights , fxpStage53Weights );
errStage54Weights   =     immse(flpStage54Weights , fxpStage54Weights );
errStage55Weights   =     immse(flpStage55Weights , fxpStage55Weights );
errStage56Weights   =     immse(flpStage56Weights , fxpStage56Weights );
errStage57Weights   =     immse(flpStage57Weights , fxpStage57Weights );
errStage58Weights   =     immse(flpStage58Weights , fxpStage58Weights );
errStage59Weights   =     immse(flpStage59Weights , fxpStage59Weights );
errStage60Weights   =     immse(flpStage60Weights , fxpStage60Weights );
errStage61Weights   =     immse(flpStage61Weights , fxpStage61Weights );
errStage62Weights   =     immse(flpStage62Weights , fxpStage62Weights );
errStage63Weights   =     immse(flpStage63Weights , fxpStage63Weights );
errStage64Weights   =     immse(flpStage64Weights , fxpStage64Weights );
errStage65Weights   =     immse(flpStage65Weights , fxpStage65Weights );
errStage66Weights   =     immse(flpStage66Weights , fxpStage66Weights );
errStage67Weights   =     immse(flpStage67Weights , fxpStage67Weights );
errStage68Weights   =     immse(flpStage68Weights , fxpStage68Weights );
errStage69Weights   =     immse(flpStage69Weights , fxpStage69Weights );
errStage70Weights   =     immse(flpStage70Weights , fxpStage70Weights );
errStage71Weights   =     immse(flpStage71Weights , fxpStage71Weights );
errStage72Weights   =     immse(flpStage72Weights , fxpStage72Weights );
errStage73Weights   =     immse(flpStage73Weights , fxpStage73Weights );
errStage74Weights   =     immse(flpStage74Weights , fxpStage74Weights );
errStage75Weights   =     immse(flpStage75Weights , fxpStage75Weights );
errStage76Weights   =     immse(flpStage76Weights , fxpStage76Weights );
errStage77Weights   =     immse(flpStage77Weights , fxpStage77Weights );
errStage78Weights   =     immse(flpStage78Weights , fxpStage78Weights );
errStage79Weights   =     immse(flpStage79Weights , fxpStage79Weights );
errStage80Weights   =     immse(flpStage80Weights , fxpStage80Weights );
errStage81Weights   =     immse(flpStage81Weights , fxpStage81Weights );
errStage82Weights   =     immse(flpStage82Weights , fxpStage82Weights );
errStage83Weights   =     immse(flpStage83Weights , fxpStage83Weights );
errStage84Weights   =     immse(flpStage84Weights , fxpStage84Weights );
errStage85Weights   =     immse(flpStage85Weights , fxpStage85Weights );
errStage86Weights   =     immse(flpStage86Weights , fxpStage86Weights );
errStage87Weights   =     immse(flpStage87Weights , fxpStage87Weights );
errStage88Weights   =     immse(flpStage88Weights , fxpStage88Weights );
errStage89Weights   =     immse(flpStage89Weights , fxpStage89Weights );
errStage90Weights   =     immse(flpStage90Weights , fxpStage90Weights );
errStage91Weights   =     immse(flpStage91Weights , fxpStage91Weights );
errStage92Weights   =     immse(flpStage92Weights , fxpStage92Weights );
errStage93Weights   =     immse(flpStage93Weights , fxpStage93Weights );
errStage94Weights   =     immse(flpStage94Weights , fxpStage94Weights );
errStage95Weights   =     immse(flpStage95Weights , fxpStage95Weights );
errStage96Weights   =     immse(flpStage96Weights , fxpStage96Weights );
errStage97Weights   =     immse(flpStage97Weights , fxpStage97Weights );
errStage98Weights   =     immse(flpStage98Weights , fxpStage98Weights );
errStage99Weights   =     immse(flpStage99Weights , fxpStage99Weights );
errStage100Weights   =    immse(flpStage100Weights , fxpStage100Weights );
                                                        
errStage102Weights  =	immse(flpStage102Weights, fxpStage102Weights);
errStage102Bias     =	immse(flpStage102Bias, fxpStage102Bias);

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
save('WeightsBias/WeightBias50','flpStage50Weights','fxpStage50Weights','flpStage50Bias','fxpStage50Bias','errStage50Weights');
save('WeightsBias/WeightBias51','flpStage51Weights','fxpStage51Weights','flpStage51Bias','fxpStage51Bias','errStage51Weights');
save('WeightsBias/WeightBias52','flpStage52Weights','fxpStage52Weights','flpStage52Bias','fxpStage52Bias','errStage52Weights');
save('WeightsBias/WeightBias53','flpStage53Weights','fxpStage53Weights','flpStage53Bias','fxpStage53Bias','errStage53Weights');
save('WeightsBias/WeightBias54','flpStage54Weights','fxpStage54Weights','flpStage54Bias','fxpStage54Bias','errStage54Weights');
save('WeightsBias/WeightBias55','flpStage55Weights','fxpStage55Weights','flpStage55Bias','fxpStage55Bias','errStage55Weights');
save('WeightsBias/WeightBias56','flpStage56Weights','fxpStage56Weights','flpStage56Bias','fxpStage56Bias','errStage56Weights');
save('WeightsBias/WeightBias57','flpStage57Weights','fxpStage57Weights','flpStage57Bias','fxpStage57Bias','errStage57Weights');
save('WeightsBias/WeightBias58','flpStage58Weights','fxpStage58Weights','flpStage58Bias','fxpStage58Bias','errStage58Weights');
save('WeightsBias/WeightBias59','flpStage59Weights','fxpStage59Weights','flpStage59Bias','fxpStage59Bias','errStage59Weights');
save('WeightsBias/WeightBias60','flpStage60Weights','fxpStage60Weights','flpStage60Bias','fxpStage60Bias','errStage60Weights');
save('WeightsBias/WeightBias61','flpStage61Weights','fxpStage61Weights','flpStage61Bias','fxpStage61Bias','errStage61Weights');
save('WeightsBias/WeightBias62','flpStage62Weights','fxpStage62Weights','flpStage62Bias','fxpStage62Bias','errStage62Weights');
save('WeightsBias/WeightBias63','flpStage63Weights','fxpStage63Weights','flpStage63Bias','fxpStage63Bias','errStage63Weights');
save('WeightsBias/WeightBias64','flpStage64Weights','fxpStage64Weights','flpStage64Bias','fxpStage64Bias','errStage64Weights');
save('WeightsBias/WeightBias65','flpStage65Weights','fxpStage65Weights','flpStage65Bias','fxpStage65Bias','errStage65Weights');
save('WeightsBias/WeightBias66','flpStage66Weights','fxpStage66Weights','flpStage66Bias','fxpStage66Bias','errStage66Weights');
save('WeightsBias/WeightBias67','flpStage67Weights','fxpStage67Weights','flpStage67Bias','fxpStage67Bias','errStage67Weights');
save('WeightsBias/WeightBias68','flpStage68Weights','fxpStage68Weights','flpStage68Bias','fxpStage68Bias','errStage68Weights');
save('WeightsBias/WeightBias69','flpStage69Weights','fxpStage69Weights','flpStage69Bias','fxpStage69Bias','errStage69Weights');
save('WeightsBias/WeightBias70','flpStage70Weights','fxpStage70Weights','flpStage70Bias','fxpStage70Bias','errStage70Weights');
save('WeightsBias/WeightBias71','flpStage71Weights','fxpStage71Weights','flpStage71Bias','fxpStage71Bias','errStage71Weights');
save('WeightsBias/WeightBias72','flpStage72Weights','fxpStage72Weights','flpStage72Bias','fxpStage72Bias','errStage72Weights');
save('WeightsBias/WeightBias73','flpStage73Weights','fxpStage73Weights','flpStage73Bias','fxpStage73Bias','errStage73Weights');
save('WeightsBias/WeightBias74','flpStage74Weights','fxpStage74Weights','flpStage74Bias','fxpStage74Bias','errStage74Weights');
save('WeightsBias/WeightBias75','flpStage75Weights','fxpStage75Weights','flpStage75Bias','fxpStage75Bias','errStage75Weights');
save('WeightsBias/WeightBias76','flpStage76Weights','fxpStage76Weights','flpStage76Bias','fxpStage76Bias','errStage76Weights');
save('WeightsBias/WeightBias77','flpStage77Weights','fxpStage77Weights','flpStage77Bias','fxpStage77Bias','errStage77Weights');
save('WeightsBias/WeightBias78','flpStage78Weights','fxpStage78Weights','flpStage78Bias','fxpStage78Bias','errStage78Weights');
save('WeightsBias/WeightBias79','flpStage79Weights','fxpStage79Weights','flpStage79Bias','fxpStage79Bias','errStage79Weights');
save('WeightsBias/WeightBias80','flpStage80Weights','fxpStage80Weights','flpStage80Bias','fxpStage80Bias','errStage80Weights');
save('WeightsBias/WeightBias81','flpStage81Weights','fxpStage81Weights','flpStage81Bias','fxpStage81Bias','errStage81Weights');
save('WeightsBias/WeightBias82','flpStage82Weights','fxpStage82Weights','flpStage82Bias','fxpStage82Bias','errStage82Weights');
save('WeightsBias/WeightBias83','flpStage83Weights','fxpStage83Weights','flpStage83Bias','fxpStage83Bias','errStage83Weights');
save('WeightsBias/WeightBias84','flpStage84Weights','fxpStage84Weights','flpStage84Bias','fxpStage84Bias','errStage84Weights');
save('WeightsBias/WeightBias85','flpStage85Weights','fxpStage85Weights','flpStage85Bias','fxpStage85Bias','errStage85Weights');
save('WeightsBias/WeightBias86','flpStage86Weights','fxpStage86Weights','flpStage86Bias','fxpStage86Bias','errStage86Weights');
save('WeightsBias/WeightBias87','flpStage87Weights','fxpStage87Weights','flpStage87Bias','fxpStage87Bias','errStage87Weights');
save('WeightsBias/WeightBias88','flpStage88Weights','fxpStage88Weights','flpStage88Bias','fxpStage88Bias','errStage88Weights');
save('WeightsBias/WeightBias89','flpStage89Weights','fxpStage89Weights','flpStage89Bias','fxpStage89Bias','errStage89Weights');
save('WeightsBias/WeightBias90','flpStage90Weights','fxpStage90Weights','flpStage90Bias','fxpStage90Bias','errStage90Weights');
save('WeightsBias/WeightBias91','flpStage91Weights','fxpStage91Weights','flpStage91Bias','fxpStage91Bias','errStage91Weights');
save('WeightsBias/WeightBias92','flpStage92Weights','fxpStage92Weights','flpStage92Bias','fxpStage92Bias','errStage92Weights');
save('WeightsBias/WeightBias93','flpStage93Weights','fxpStage93Weights','flpStage93Bias','fxpStage93Bias','errStage93Weights');
save('WeightsBias/WeightBias94','flpStage94Weights','fxpStage94Weights','flpStage94Bias','fxpStage94Bias','errStage94Weights');
save('WeightsBias/WeightBias95','flpStage95Weights','fxpStage95Weights','flpStage95Bias','fxpStage95Bias','errStage95Weights');
save('WeightsBias/WeightBias96','flpStage96Weights','fxpStage96Weights','flpStage96Bias','fxpStage96Bias','errStage96Weights');
save('WeightsBias/WeightBias97','flpStage97Weights','fxpStage97Weights','flpStage97Bias','fxpStage97Bias','errStage97Weights');
save('WeightsBias/WeightBias98','flpStage98Weights','fxpStage98Weights','flpStage98Bias','fxpStage98Bias','errStage98Weights');
save('WeightsBias/WeightBias99','flpStage99Weights','fxpStage99Weights','flpStage99Bias','fxpStage99Bias','errStage99Weights');
save('WeightsBias/WeightBias100','flpStage100Weights','fxpStage100Weights','flpStage100Bias','fxpStage100Bias','errStage100Weights');

save('WeightsBias/WeightBias102','flpStage102Weights','fxpStage102Weights','flpStage102Bias','fxpStage102Bias','errStage102Weights');




%% store max and min weights-----------------------------------------------------------------------

% fid = fopen('result.txt','wt');
%  fprintf(fid,'\tMaxMinStages =	[\n');
% for i = 0 : 102
%     if (i~=1 && i~=101)
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
		50 ,maxStage50Weights , minStage50Weights
		51 ,maxStage51Weights , minStage51Weights
		52 ,maxStage52Weights , minStage52Weights
		53 ,maxStage53Weights , minStage53Weights
		54 ,maxStage54Weights , minStage54Weights
		55 ,maxStage55Weights , minStage55Weights
		56 ,maxStage56Weights , minStage56Weights
		57 ,maxStage57Weights , minStage57Weights
		58 ,maxStage58Weights , minStage58Weights
		59 ,maxStage59Weights , minStage59Weights
		60 ,maxStage60Weights , minStage60Weights
		61 ,maxStage61Weights , minStage61Weights
		62 ,maxStage62Weights , minStage62Weights
		63 ,maxStage63Weights , minStage63Weights
		64 ,maxStage64Weights , minStage64Weights
		65 ,maxStage65Weights , minStage65Weights
		66 ,maxStage66Weights , minStage66Weights
		67 ,maxStage67Weights , minStage67Weights
		68 ,maxStage68Weights , minStage68Weights
		69 ,maxStage69Weights , minStage69Weights
		70 ,maxStage70Weights , minStage70Weights
		71 ,maxStage71Weights , minStage71Weights
		72 ,maxStage72Weights , minStage72Weights
		73 ,maxStage73Weights , minStage73Weights
		74 ,maxStage74Weights , minStage74Weights
		75 ,maxStage75Weights , minStage75Weights
		76 ,maxStage76Weights , minStage76Weights
		77 ,maxStage77Weights , minStage77Weights
		78 ,maxStage78Weights , minStage78Weights
		79 ,maxStage79Weights , minStage79Weights
		80 ,maxStage80Weights , minStage80Weights
		81 ,maxStage81Weights , minStage81Weights
		82 ,maxStage82Weights , minStage82Weights
		83 ,maxStage83Weights , minStage83Weights
		84 ,maxStage84Weights , minStage84Weights
		85 ,maxStage85Weights , minStage85Weights
		86 ,maxStage86Weights , minStage86Weights
		87 ,maxStage87Weights , minStage87Weights
		88 ,maxStage88Weights , minStage88Weights
		89 ,maxStage89Weights , minStage89Weights
		90 ,maxStage90Weights , minStage90Weights
		91 ,maxStage91Weights , minStage91Weights
		92 ,maxStage92Weights , minStage92Weights
		93 ,maxStage93Weights , minStage93Weights
		94 ,maxStage94Weights , minStage94Weights
		95 ,maxStage95Weights , minStage95Weights
		96 ,maxStage96Weights , minStage96Weights
		97 ,maxStage97Weights , minStage97Weights
		98 ,maxStage98Weights , minStage98Weights
		99 ,maxStage99Weights , minStage99Weights
		100 ,maxStage100Weights , minStage100Weights
		102 ,maxStage102Weights , minStage102Weights
	];

filename = "excel/MaxMinWeights.xlsx";
writematrix(MaxMinStages,filename);