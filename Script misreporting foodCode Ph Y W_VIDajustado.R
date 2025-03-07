##anAlisis de misreporting##

#escritorio de trabajo 
##setwd("C:/Informacion Disco D/FoodCode")
### las variables de este script finalizadas en VID se refieren al peso real de alimento analizado con el Foodcode que arrojó ASA24

##datos con las variables de trabajo##
Full_DB<-read.csv("BD_para_Misrerporting_VID_W Ajustado.csv",fileEncoding = "Latin1", sep = ";", header = T) 



summary(Full_DB)

class(Full_DB$Kcal_Ph_VID)

CV_IEr_Ph_VID<-(sd(Full_DB$Kcal_Ph_VID)/mean(Full_DB$Kcal_Ph_VID)) ###R//  0.2067156=0.21%

CV_IEr_W_VID<-(sd(Full_DB$Kcal_W_VID)/mean(Full_DB$Kcal_W_VID)) ###R//  0.2117478=0.21%


##Rennie Ph_VID
### cálculo calorías VID sobre 2000 calorías
IE_Ph_VID_TEE_2000<-(Full_DB$Kcal_Ph_VID/2000)


CV_REN_2000_Ph_VID<-sqrt(8.2^2+((CV_IEr_Ph_VID*100)^2/2))
##R//16.75997

MISREP_CV_REN_2000_Ph_VID<-ifelse(IE_Ph_VID_TEE_2000<0.83,"Under_reporter",
                               ifelse(IE_Ph_VID_TEE_2000>1.17,"Over_reporter","Plausible_reporter"))

Full_DB<-cbind(Full_DB,MISREP_CV_REN_2000_Ph_VID)

attach(Full_DB)
View(Full_DB)


table(Full_DB$MISREP_CV_REN_2000_Ph_VID)
prop.table(table(Full_DB$MISREP_CV_REN_2000_Ph_VID))*100






##Huang Ph_VID 2000 calorías



SD1_Huang_2000_Ph_VID<-sqrt(((CV_IEr_Ph_VID*100)^2/2)+11^2+8.2^2)
##R//20.30827

SD1_MISREP_Huang_2000_Ph_VID<-ifelse(IE_Ph_VID_TEE_2000 <= 0.80,"Under_reporter",
                                  ifelse(IE_Ph_VID_TEE_2000>= 1.20,"Over_reporter","Plausible_reporter"))


Full_DB<-cbind(Full_DB,SD1_MISREP_Huang_2000_Ph_VID)

attach(Full_DB)
View(Full_DB)

table(Full_DB$SD1_MISREP_Huang_2000_Ph_VID)
prop.table(table(Full_DB$SD1_MISREP_Huang_2000_Ph_VID))*100




##Rennie W_VID
### cálculo calorías VID sobre 2000 calorías

IE_W_VID_TEE_2000<-(Full_DB$Kcal_W_VID/2000)


CV_REN_2000_W_VID<-sqrt(8.2^2+((CV_IEr_W_VID*100)^2/2))
##R//17.0712

MISREP_CV_REN_2000_W_VID<-ifelse(IE_W_VID_TEE_2000<0.83,"Under_reporter",
                                  ifelse(IE_W_VID_TEE_2000>1.17,"Over_reporter","Plausible_reporter"))

Full_DB<-cbind(Full_DB,MISREP_CV_REN_2000_W_VID)

attach(Full_DB)
View(Full_DB)

table(Full_DB$MISREP_CV_REN_2000_W_VID)
prop.table(table(Full_DB$MISREP_CV_REN_2000_W_VID))*100


##Huang W_VID 2000 calorías

SD1_Huang_W_VID_2000<-sqrt(((CV_IEr_W_VID*100)^2/2)+11^2+8.2^2)
##R//20.30827

SD1_MISREP_Huang_2000_W_VID<-ifelse(IE_W_VID_TEE_2000 <= 0.80,"Under_reporter",
                                     ifelse(IE_W_VID_TEE_2000>= 1.20,"Over_reporter","Plausible_reporter"))

Full_DB<-cbind(Full_DB,SD1_MISREP_Huang_2000_W_VID)

attach(Full_DB)
View(Full_DB)

table(Full_DB$SD1_MISREP_Huang_2000_W_VID)
prop.table(table(Full_DB$SD1_MISREP_Huang_2000_W_VID))*100



write.csv(Full_DB, file = "Full_DB_misreporting_foocode_Ph_W_ajustado.csv")
