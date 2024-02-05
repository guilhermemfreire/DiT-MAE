library(mirtjml)

setwd("~/guilhermemfreire@usp.br - Google Drive/My Drive/VAE_Q_GUILHERME/PISA15_github/4_dim")

start_time <- Sys.time()
  
data <- as.matrix(read.csv(file = paste("output_data/10_missing/masked/masked_pred_10_missing_ALL_CNTS.csv", sep = ""), sep = ";", header = FALSE))
data[data==-1] <- NA

Q <- as.matrix(read.csv("../input_data/qmatrix_4D_PISA15.csv", sep = ";", header = FALSE))
Q = t(Q)

p <- 2     # número da simulação
J <- dim(data)[2] # número de itens
N <- dim(data)[1] # número de indivíduos
K <- dim(Q)[2] # número de traços latentes
tr <- N  # Número de indivíduos para treino

Y <- matrix(data, nrow = tr, ncol = J)

A0 <- Q
d0 <- rep(0, J)
theta0 <- matrix(rnorm(tr*K, 0, 1),tr)

Estimados <- mirtjml_conf(Y ,Q , theta0, A0, d0)


skill_preds <- Estimados[["theta_hat"]]
write.table(skill_preds, file=paste("output_data_jml/10_missing/thetas/thetas_jml_10_missing_ALL_CNTS_",p,".csv",sep = ""),sep=";",row.names=FALSE, col.names=FALSE,dec = ".")

discr <- Estimados[["A_hat"]]
write.table(discr, file=paste("output_data_jml/10_missing/a/discr_hat_jml_downstream_ALL_CNTS_",p,".csv",sep = ""),sep=";",row.names=FALSE, col.names=FALSE,dec = ".")

diff <- Estimados[["d_hat"]]
write.table(-diff, file=paste("output_data_jml/10_missing/b/diff_hat_jml_downstream_ALL_CNTS_",p,".csv",sep = ""),sep=";",row.names=FALSE, col.names=FALSE,dec = ".")

end_time <- Sys.time()

print(end_time - start_time) 

# Time spent for 1 replica of 10 missing: 0.04771304 secs
# Time spent for 1 replica of 25 missing: 0.04533005 secs
# Time spent for 1 replica of 50 missing: 0.07987785 secs
