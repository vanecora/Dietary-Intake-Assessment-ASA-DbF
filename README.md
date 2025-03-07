# Dietary-Intake-Assessment-ASA-DbF

That is a repository of the paper:

Vanessa Corrales-Agudelo, Olga Lucía Ortega-Sierra, Mariana Hernández, Juan S. Escobar, Jelver A. Sierra, Diego A. Rivera, Oscar J. Lara-Guzmán, N. Andrea Villota-Salazar, Katalina Muñoz-Durango. Dietary Intake Assessment Using 24-Hour Dietary Recalls (R24h) Assisted by Photographs: The Importance of the Reference DatabASA for Accuracy. ******journal -if published*******.



Data_base_ASA_DbF_GitHub.xlsx contains the input data supporting this document, after a brief description:

- Thesaurus sheet mentioned the name of variables by sheet and localization according to the column.

- Data_base_ASA24_Weight: intake data collected from ASA24. Variables exported from ASA24 have the suffix “ASA”, while weighted food variables have the letter “W”. Biomarkers in blood or urine were located after intake analyses. Intake deltas were calculated by subtracting the estimate of “W” from “ASA”.
The suffixes “ASA” and “W” were retained on all sheets.

- Usual intake was calculated and the data corresponded to Blup_ASA and BLUP_DbF. Thus, the raw data for ASA, DbF and declared weighed foods were analyzed by PC_side to find the best linear unbiased predictor (BLUP), but it was not possible to adjust some nutrients for interindividual variability, these were:

From ASA:  ALC_ASA, THEO_ASA, COOP_ASA, VB1_ASA, VB2_ASA, VB6_ASA, VB12_ASA, BCAR_ASA, ACAR_ASA, LYCO_ASA, LZ_ASA, S040_ASA, S060_ASA, S080_ASA, S100_ASA, S120_ASA, S140_ASA, M161_ASA, M201_ASA, M221_ASA, P183_ASA, P184_ASA, P204_ASA, P205_ASA, P225_ASA, P226_ASA, VITD_ASA, VITE_ADD_ASA, B12_ADD_ASA.

From data analyzed by ASA from weighing foods: ACAR_W, BCAR_W, LYCO_W, LZ_W, VB1_W, VB2_W, VB6_W, VB12_W, VB12_ADD_W,  VITE_ADD_W, COPP_W, THEO_W, ALC_W, S040_W, S060_W, S080_W, S100_W, S120_W, S140_W, M161_W, M201_W, M221_W, P183_W, P184_W, P204_W, P205_W, P225_W, P226_W. All other nutrients obtained BLUP value by  ASA directly or weighing of the food.

From DbF: BLUPs estimated from photographs were not possible to adjust in nutrients such as ACAR_Ph_DbF, BCAR_Ph_DbF, LYCO_Ph_DbF, LZ_Ph_DbF, VB12_ADD_Ph_DbF, VITE_ADD_Ph_DbF, THEO_Ph_DbF, ALC_Ph_DbF, S060_Ph_DbF, S080_Ph_DbF, S180_Ph_DbF, M201_Ph_DbF, M221_Ph_DbF, P184_Ph_DbF,P204_Ph_DbF, P205_Ph_DbF, P225_Ph_DbF, P226_Ph_DbF. 

From data analyzed by DbF from foods weight: VARA_W_DbF, ACAR_W_DbF, BCAR_W_DbF, LYCO_W_DbF, LZ_W_DbF, CHOLN_W_DbF, VB12_ADD_W_DbF, VITE_ADD_W_DbF, THEO_W_DbF, ALC_W_DbF, S060_W_DbF, S180_W_DbF, M201_W_DbF, M221_W_DbF, P184_W_DbF, P204_W_DbF, P205_W_DbF,	P225_W_DbF, P226_W_DbF. All other nutrients obtained BLUP value by DbF directly or weighing of the food.

- ASA vs Real W Error: data on the estimation error of food weight and nutrient intake by ASA vs. food weight, when the same food had many records with significant error, the mean was calculated.

- Data_base_DbF_Weight: data from photographic-assisted dietary recall or weighed food and analyzed by DbF. Variables identified with the suffix “Ph_DbF” correspond to estimation from assumed weight, while weighed food variables have the suffix “W_DbF”. Biomarkers in blood or urine were located after intake analyses. Intake deltas were calculated by subtracting the estimate of “W_DbF” from “Ph_DbF”.

- DbF vs Real W: data on the estimation error of food weight and nutrient intake by DbF vs. food weight, when the same food had many records with significant error, the mean was calculated.

Files called: “Script misreporting foodCode datos indiv ASA24” and  “Script misreporting foodCode Ph Y W_VIDajustado.R” are commented R scripts  for misreporting calculation to ASA and DbF,  these requires the “BD_nntes_brutos_ASA.csv” and “BD_para_Misrerporting_VID_W Ajustado.csv”  to properly run. The file output: “Full_DB_misreporting_foocode_ASA_W” and “Full_DB_misreporting_foocode_Ph_W_ajustado”. 
