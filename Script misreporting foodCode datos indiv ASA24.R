##anAlisis de misreporting##

#escritorio de trabajo 
##setwd("C:/Informacion Disco D/FoodCode")
### las variables de este script finalizadas en VID se refieren al peso real de alimento analizado con el Foodcode que arrojó ASA24

##datos con las variables de trabajo##
Full_DB<-read.csv("BD_nntes_brutos_ASA.csv",fileEncoding = "Latin1", sep = ";", header = T) 



summary(Full_DB)



CV_IEr_ASA= (sd(Full_DB$KCAL_ASA)/mean(Full_DB$KCAL_ASA))


###misreporting realizado con base en 2000 calorías/d#######

###Rennie 2000kcal

### cálculo calorías ASA sobre 2000 calorías
IE_ASA_TEE_2000<-(Full_DB$KCAL_ASA/2000)

CV_REN_2000_ASA<-sqrt(8.2^2+((CV_IEr_ASA*100)^2/2))
##R// 29.54

MISREP_CV_REN_2000_ASA<-ifelse(IE_ASA_TEE_2000<0.70,"Under_reporter",
                               ifelse(IE_ASA_TEE_2000>1.30,"Over_reporter","Plausible_reporter"))



##Rennie VID
### cálculo calorías VID sobre 2000 calorías
IE_VID_TEE_2000<-(Full_DB$KCAL_VID/2000)

CV_REN_2000_VID<-sqrt(8.2^2+((CV_IEr_VID*100)^2/2))
##R//27

MISREP_CV_REN_2000_VID<-ifelse(IE_VID_TEE_2000<0.73,"Under_reporter",
                               ifelse(IE_VID_TEE_2000>1.27,"Over_reporter","Plausible_reporter"))

Full_DB<-cbind(Full_DB,MISREP_CV_REN_2000_ASA,MISREP_CV_REN_2000_VID)

attach(Full_DB)
View(Full_DB)


table(Full_DB$MISREP_CV_REN_2000_ASA)
prop.table(table(Full_DB$MISREP_CV_REN_2000_ASA))*100

table(Full_DB$MISREP_CV_REN_2000_VID)
prop.table(table(Full_DB$MISREP_CV_REN_2000_VID))*100





##Huang Ph_VID 2000 calorías

CV_IEr_VID= (sd(Full_DB$KCAL_VID)/mean(Full_DB$KCAL_VID)) ###R//  0.3651011=0.36%

SD1_Huang_2000_ASA<-sqrt(((CV_IEr_ASA*100)^2/2)+11^2+8.2^2)
##R//31.52342

SD1_MISREP_Huang_2000_ASA<-ifelse(IE_ASA_TEE_2000 <= 0.68,"Under_reporter",
                                  ifelse(IE_ASA_TEE_2000 >= 1.32,"Over_reporter","Plausible_reporter"))


##Huang VID 2000

SD1_Huang_2000_VID<-sqrt(((CV_IEr_VID*100)^2/2)+11^2+8.2^2)
##R//29.23584 = 29%

SD1_MISREP_Huang_2000_VID<-ifelse(IE_VID_TEE_2000<= 0.71,"Under_reporter",
                                  ifelse(IE_VID_TEE_2000>= 1.29,"Over_reporter","Plausible_reporter"))


Full_DB<-cbind(Full_DB,MISREP_CV_REN_2000_ASA,MISREP_CV_REN_2000_VID,SD1_MISREP_Huang_2000_ASA,SD1_MISREP_Huang_2000_VID)

attach(Full_DB)
View(Full_DB)

write.csv(Full_DB, file = "Full_DB_misreporting_foocode_ASA_W_indiv.csv")


table(Full_DB$SD1_MISREP_Huang_2000_ASA)
prop.table(table(Full_DB$SD1_MISREP_Huang_2000_ASA))*100

table(Full_DB$SD1_MISREP_Huang_2000_VID)
prop.table(table(Full_DB$SD1_MISREP_Huang_2000_VID))*100




