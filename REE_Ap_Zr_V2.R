setwd("D:/Users/cronar/Desktop/Result")



#Imports
library(readr)

#AGREGAR VARIABLES Chondrite (up/g) ppm
La = 0.367  #2
Ce = 0.957  #4
Pr = 0.13   #6
Nd = 0.711  #8
Sm = 0.231  #10
Eu = 0.087  #12
Gd = 0.306  #14
Tb = 0.058  #16
Dy = 0.381  #18
Ho = 0.0851 #20
Er = 0.249  #22
Tm = 0.0356 #24
Yb = 0.248  #26
Lu = 0.0381 #28   esto corresponde al numero de columnas dentro de Tabala_a_usar# 


# buscar la ruta del archivo de csv
Datos <- read.csv(file.choose()) 


#selecciona las columnas normalizar
Tabla_a_usar <- Datos[, c(1, 16:43)] 

#Convierte Tabla_a_usar en un datafreme
Tabla_a_usar <- data.frame(Tabla_a_usar)

#normalizar Tabla_a_usar con las variables de la chondrita


Muestras<- Tabla_a_usar$datos.Analysis
La_ppm <- Tabla_a_usar$La..ppm/La
X1s_La_ppm <- Tabla_a_usar$X1s.La..ppm
Ce_ppm <- Tabla_a_usar$Ce..ppm/Ce
X1s_Ce_ppm <- Tabla_a_usar$X1s.Ce..ppm
Pr_ppm <- Tabla_a_usar$Pr..ppm/Pr
X1s_Pr_ppm <- Tabla_a_usar$X1s.Pr..ppm
Nd_ppm <- Tabla_a_usar$Nd..ppm/Nd
X1s_Nd_ppm <- Tabla_a_usar$X1s.Nd..ppm
Sm_ppm <- Tabla_a_usar$Sm..ppm/Sm
X1s_Sm_ppm <- Tabla_a_usar$X1s.Sm..ppm
Eu_ppm <- Tabla_a_usar$Eu..ppm/Eu
X1s_Eu_ppm <- Tabla_a_usar$X1s.Eu..ppm
Gd_ppm <- Tabla_a_usar$Gd..ppm/Gd
X1s_Gd_ppm <- Tabla_a_usar$X1s.Gd..ppm
Tb_ppm <- Tabla_a_usar$Tb..ppm/Tb
X1s_Tb_ppm <- Tabla_a_usar$X1s.Tb..ppm
Dy_ppm <- Tabla_a_usar$Dy..ppm/Dy
X1s_Dy_ppm <- Tabla_a_usar$X1s.Dy..ppm
Ho_ppm <- Tabla_a_usar$Ho..ppm/Ho
X1s_Ho_ppm <- Tabla_a_usar$X1s.Ho..ppm
Er_ppm <- Tabla_a_usar$Er..ppm/Er
X1s_Er_ppm <- Tabla_a_usar$X1s.Er..ppm
Tm_ppm <- Tabla_a_usar$Tm..ppm/Tm
X1s_Tm_ppm <- Tabla_a_usar$X1s.Tm..ppm
Yb_ppm <- Tabla_a_usar$Yb..ppm/Yb
X1s_Yb_ppm <- Tabla_a_usar$X1s.Yb..ppm
Lu_ppm <- Tabla_a_usar$Lu..ppm/Lu
X1s_Lu_ppm <- Tabla_a_usar$X1s.Lu..ppm

Tabla_Normalizada<-data.frame(tabla_Normalizada <- cbind(Muestras, La_ppm, X1s_La_ppm, Ce_ppm, X1s_Ce_ppm, Pr_ppm, X1s_Pr_ppm, Nd_ppm, X1s_Nd_ppm,  Sm_ppm, X1s_Sm_ppm, Eu_ppm, X1s_Eu_ppm, Gd_ppm, X1s_Gd_ppm,  Tb_ppm, X1s_Tb_ppm,  Dy_ppm, X1s_Dy_ppm, Ho_ppm, X1s_Ho_ppm,Er_ppm, X1s_Er_ppm, Tm_ppm, X1s_Tm_ppm, Yb_ppm, X1s_Yb_ppm, Lu_ppm, X1s_Lu_ppm ))

write.csv(Tabla_Normalizada, "D:/Users/cronar/Desktop/Result/sample_REE.csv",row.names=FALSE)
  
  
  
  
