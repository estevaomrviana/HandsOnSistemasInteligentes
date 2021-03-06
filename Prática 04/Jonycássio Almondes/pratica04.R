
#Carrega banco de dados ISwR
library(ISwR)

#Conjunto de dados: rmr
attach(rmr)

#=========Gr�fico de Pontos e a Reta estimada da Regress�o=========

names(rmr)
lm.velo <- lm(body.weight ~ metabolic.rate)
summary(lm.velo)
plot(body.weight, metabolic.rate)
abline(lm.velo)

#===================Res�duos e valores estimados===================

resid(lm.velo)
options(lm.velo)
list(rmr)
options(na.action=na.exclude)
plot(metabolic.rate, body.weight)

#=========Gr�fico dos valores observados conectado a reta==========

segments(metabolic.rate, fitted(lm.velo), metabolic.rate, body.weight)
abline(lm.velo)



