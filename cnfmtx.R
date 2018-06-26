install.packages("seqinr")
library("seqinr")
disc1 <- read.fasta(file = "sequence.fasta")
getAnnot(disc1)
seqlen <- summary(disc1[[1]])$length
seqlen
nt1 <- disc1[[1]]
count(nt1,1)
a <- 115333
c <- 85887
g <- 91918
t <- 128320
cnt <- c(a,c,t,g)
cnt
nrs <- gl(4, 3, labels = cnt)
nrs
baseparam1 <- combn(cnt[1:4],2)
baseparam1
baseparam2 <- combn(cnt[4:1],2)
baseparam2
baseparam <- cbind(baseparam1,baseparam2)
baseparam
allratio <- as.numeric(levels(nrs))[nrs]/colSums(baseparam)
allratio
complement <- 1-allratio
complement
