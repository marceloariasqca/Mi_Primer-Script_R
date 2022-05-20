setwd("D:/Users/cronar/Desktop/Result")



#Imports

library(readr)
library(openxlsx)


#AGREGAR VARIABLES Chondrite (up/g) ppm
La = 0.367  
Ce = 0.957  
Pr = 0.137  
Nd = 0.711  
Sm = 0.231  
Eu = 0.087  
Gd = 0.306 
Tb = 0.058  
Dy = 0.381  
Ho = 0.0851 
Er = 0.249  
Tm = 0.0356 
Yb = 0.248  
Lu = 0.0381  


# buscar la ruta del archivo de csv

Datos <- read.csv(file.choose()) 

#normalizar Tabla_a_usar con las variables de la chondrita


Muestras<- Datos$datos.Analysis
La_ppm <- Datos$La..ppm/La
Ce_ppm <- Datos$Ce..ppm/Ce
Pr_ppm <- Datos$Pr..ppm/Pr
Nd_ppm <- Datos$Nd..ppm/Nd
Sm_ppm <- Datos$Sm..ppm/Sm
Eu_ppm <- Datos$Eu..ppm/Eu
Gd_ppm <- Datos$Gd..ppm/Gd
Tb_ppm <- Datos$Tb..ppm/Tb
Dy_ppm <- Datos$Dy..ppm/Dy
Ho_ppm <- Datos$Ho..ppm/Ho
Er_ppm <- Datos$Er..ppm/Er
Tm_ppm <- Datos$Tm..ppm/Tm
Yb_ppm <- Datos$Yb..ppm/Yb
Lu_ppm <- Datos$Lu..ppm/Lu

Tabla_Normalizada<-data.frame(tabla_Normalizada <- cbind(Muestras, La_ppm,  Ce_ppm, Pr_ppm,  Nd_ppm,   Sm_ppm,  Eu_ppm,  Gd_ppm,  Tb_ppm,   Dy_ppm,  Ho_ppm, Er_ppm,  Tm_ppm, Yb_ppm, Lu_ppm))

Tabla_Normalizada <- type.convert(Tabla_Normalizada)


#Genera Tabla con los errores

Muestras<- Datos$datos.Analysis
X1s_La_ppm <- Datos$X1s.La..ppm
X1s_Ce_ppm <- Datos$X1s.Ce..ppm
X1s_Pr_ppm <- Datos$X1s.Pr..ppm
X1s_Nd_ppm <- Datos$X1s.Nd..ppm
X1s_Sm_ppm <- Datos$X1s.Sm..ppm
X1s_Eu_ppm <- Datos$X1s.Eu..ppm
X1s_Gd_ppm <- Datos$X1s.Gd..ppm
X1s_Tb_ppm <- Datos$X1s.Tb..ppm
X1s_Dy_ppm <- Datos$X1s.Dy..ppm
X1s_Ho_ppm <- Datos$X1s.Ho..ppm
X1s_Er_ppm <- Datos$X1s.Er..ppm
X1s_Tm_ppm <- Datos$X1s.Tm..ppm
X1s_Yb_ppm <- Datos$X1s.Yb..ppm
X1s_Lu_ppm <- Datos$X1s.Lu..ppm

Errores <-data.frame(Errores <- cbind(Muestras, X1s_La_ppm, X1s_Ce_ppm, X1s_Pr_ppm, X1s_Nd_ppm, X1s_Sm_ppm, X1s_Eu_ppm, X1s_Gd_ppm, X1s_Tb_ppm, X1s_Dy_ppm, X1s_Ho_ppm, X1s_Er_ppm, X1s_Tm_ppm, X1s_Yb_ppm,X1s_Lu_ppm))

Errores <- type.convert(Errores)

#Traspone las tablas Normalizada y la de los Errores. 

Normalizada_T<- data.frame(t(Tabla_Normalizada[-1]))

colnames(Normalizada_T) <- Tabla_Normalizada[, 1]


Error_T<-data.frame(t(Errores[-1]))

colnames(Error_T) <- Errores [, 1]

#sacar Promedio y DesEst de la tabla Normalizada_T

mean_La<-mean(La_ppm)
mean_Ce<-mean(Ce_ppm)
mean_Pr<-mean(Pr_ppm)
mean_Nd<-mean(Nd_ppm)
mean_Sm<-mean(Sm_ppm)
mean_Eu<-mean(Eu_ppm)
mean_Gd<-mean(Gd_ppm)
mean_Tb<-mean(Tb_ppm)
mean_Dy<-mean(Dy_ppm)
mean_Ho<-mean(Ho_ppm)
mean_Er<-mean(Er_ppm)
mean_Tm<-mean(Tm_ppm)
mean_Yb<-mean(Yb_ppm)
mean_Lu<-mean(Lu_ppm)

sd_La<-sd(La_ppm)
sd_Ce<-sd(Ce_ppm)
sd_Pr<-sd(Pr_ppm)
sd_Nd<-sd(Nd_ppm)
sd_Sm<-sd(Sm_ppm)
sd_Eu<-sd(Eu_ppm)
sd_Gd<-sd(Gd_ppm)
sd_Tb<-sd(Tb_ppm)
sd_Dy<-sd(Dy_ppm)
sd_Ho<-sd(Ho_ppm)
sd_Er<-sd(Er_ppm)
sd_Tm<-sd(Tm_ppm)
sd_Yb<-sd(Yb_ppm)
sd_Lu<-sd(Lu_ppm)



#combinamos las dos tablas para generar la final
#extraemos los vectores de las tablas tranpuestras para luego combinar en un atabla final

M1 <- Normalizada_T[, 1]        
M2 <- Normalizada_T[, 2]
M3 <- Normalizada_T[, 3]
M4 <- Normalizada_T[, 4]
M5 <- Normalizada_T[, 5]
M6 <- Normalizada_T[, 6]
M7 <- Normalizada_T[, 7]
M8 <- Normalizada_T[, 8]
M9 <- Normalizada_T[, 9]
M10 <- Normalizada_T[, 10]
M11 <- Normalizada_T[, 11]
M12 <- Normalizada_T[, 12]
M13 <- Normalizada_T[, 13]
M14 <- Normalizada_T[, 14]


Error1 <- Error_T[, 1]
Error2 <- Error_T[, 2]
Error3 <- Error_T[, 3]
Error4 <- Error_T[, 4]
Error5 <- Error_T[, 5]
Error6 <- Error_T[, 6]
Error7 <- Error_T[, 7]
Error8 <- Error_T[, 8]
Error9 <- Error_T[, 9]
Error10 <- Error_T[, 10]
Error11 <- Error_T[, 11]
Error12 <- Error_T[, 12]
Error13 <- Error_T[, 13]
Error14 <- Error_T[, 14]

REE <- c("La", "Ce", "Pr", "Nd", "Sm", "Eu", "Gd", "Tb", "Dy", "Ho", "Er", "Tm", "Yb", "Lu")

Promedio <- c (mean_La, mean_Ce, mean_Pr, mean_Nd, mean_Sm, mean_Eu, mean_Gd, mean_Tb, mean_Dy, mean_Ho, mean_Er, mean_Tm, mean_Yb, mean_Lu)

DesviacionST <- c(sd_La, sd_Ce, sd_Pr, sd_Nd, sd_Sm, sd_Eu, sd_Gd, sd_Tb, sd_Dy, sd_Ho, sd_Er, sd_Tm, sd_Yb, sd_Lu)


Final <- data.frame( REE, M1 , Error1, M2 , Error2, M3 , Error3, M4 , Error4, M5 , Error5, M6 , Error6, M7 , Error7, M8 , Error8, M9 , Error9, M10 , Error10, M11 , Error11, M12 , Error12, M13 , Error13, M14 , Error14, Promedio, DesviacionST)

Final <- type.convert(Final)



#escribe el archivo final. 
#write.csv(Tabla_Normalizada, "D:/Users/cronar/Desktop/Result/Normalizada_REE.csv",row.names=FALSE)

#write.csv(Errores, "D:/Users/cronar/Desktop/Result/Error_REE.csv",row.names=FALSE)

write.csv(Final, "D:/Users/cronar/Desktop/Result/Final_REE.csv",row.names=FALSE)


