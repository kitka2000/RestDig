data_dir <- "D:/DOKUMENTY/DB"
dbConn <- dbConnect(SQLite(), "./Bt5gen.sqlite")
Seqs2DB(paste(data_dir, "./BosTau5gen.fa", sep=""), type="FASTA", dbFile=dbConn, identifier="Bostau")
data(RESTRICTION_ENZYMES)
siteSbfI <- RESTRICTION_ENZYMES[c("SbfI")]
d5gen <- DigestDNA(site5gen, dna)
dSbfIPos <- DigestDNA(siteSbfI, DNA, type = "positions")
str(dFseIPos)

write.csv(as.data.frame(dSfiIPos[30]), "SfiIBT_chr30.txt")
