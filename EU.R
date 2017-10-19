EU1 <- read.csv("EU1.csv",sep=";")
EU2 <- read.csv("EU2.csv",sep=";")
EU3 <- read.csv("EU3.csv",sep=";")
EU4 <- read.csv("EU4.csv",sep=";")
EU5 <- read.csv("EU5.csv",sep=";")
EU6 <- read.csv("EP6.csv",sep=";")

# additional columns
EU3$X <- NA
EU4$X <- NA
EU5$X <- NA
EU6$New <- NA

# correct EU6 tokens
EU6$EP.Group[EU6$EP.Group=="C"] <- 'M'
EU6$EP.Group[EU6$EP.Group=="N"] <- 'G'
EU6$EP.Group[EU6$EP.Group=="I"] <- 'A'
EU6$EP.Group[EU6$EP.Group=="."] <- NA
EU6$EP.Group[EU6$EP.Group=="NaN"] <- NA
EU6 <- EU6[is.na(EU6$EP.Group)==F,]

# manipulations with 6th EU
colnames(EU6)[3] <- "EP.Group"
colnames(EU6)[6] <-  "NOM.D1"
colnames(EU6)[7] <-  "NOM.D2"

EU1$NOM.D1[EU1$NOM.D1=="."] <- NA
EU1$NOM.D2[EU1$NOM.D2=="."] <- NA
EU1 <- EU1[is.na(EU1$NOM.D1)==F,]
EU1$NOM.D1 <- as.numeric(levels(EU1$NOM.D1))[EU1$NOM.D1]
EU1$NOM.D2 <- as.numeric(levels(EU1$NOM.D2))[EU1$NOM.D2]
EU1$EP.Group <- sapply(EU1$EP.Group, as.character)
colnames(EU1)[8] <- "Political_group"

EU2$NOM.D1[EU2$NOM.D1=="."] <- NA
EU2$NOM.D2[EU2$NOM.D2=="."] <- NA
EU2 <- EU2[is.na(EU2$NOM.D1)==F,]
EU2$NOM.D1 <- as.numeric(levels(EU2$NOM.D1))[EU2$NOM.D1]
EU2$NOM.D2 <- as.numeric(levels(EU2$NOM.D2))[EU2$NOM.D2]
EU2$EP.Group <- sapply(EU2$EP.Group, as.character)
colnames(EU2)[8] <- "Political_group"

EU3$NOM.D1[EU3$NOM.D1=="."] <- NA
EU3$NOM.D2[EU3$NOM.D2=="."] <- NA
EU3 <- EU3[is.na(EU3$NOM.D1)==F,]
EU3$NOM.D1 <- as.numeric(levels(EU3$NOM.D1))[EU3$NOM.D1]
EU3$NOM.D2 <- as.numeric(levels(EU3$NOM.D2))[EU3$NOM.D2]
EU3$EP.Group <- sapply(EU3$EP.Group, as.character)
colnames(EU3)[8] <- "Political_group"

EU4$NOM.D1[EU4$NOM.D1=="."] <- NA
EU4$NOM.D2[EU4$NOM.D2=="."] <- NA
EU4 <- EU4[is.na(EU4$NOM.D1)==F,]
EU4$NOM.D1 <- as.numeric(levels(EU4$NOM.D1))[EU4$NOM.D1]
EU4$NOM.D2 <- as.numeric(levels(EU4$NOM.D2))[EU4$NOM.D2]
EU4$EP.Group <- sapply(EU4$EP.Group, as.character)
colnames(EU4)[8] <- "Political_group"

EU5$NOM.D1[EU5$NOM.D1=="."] <- NA
EU5$NOM.D2[EU5$NOM.D2=="."] <- NA
EU5 <- EU5[is.na(EU5$NOM.D1)==F,]
EU5$NOM.D1 <- as.numeric(levels(EU5$NOM.D1))[EU5$NOM.D1]
EU5$NOM.D2 <- as.numeric(levels(EU5$NOM.D2))[EU5$NOM.D2]
EU5$EP.Group <- sapply(EU5$EP.Group, as.character)
colnames(EU5)[8] <- "Political_group"

EU6$NOM.D1[EU6$NOM.D1=="."] <- NA
EU6$NOM.D2[EU6$NOM.D2=="."] <- NA
EU6 <- EU6[is.na(EU6$NOM.D1)==F,]
EU6$NOM.D1 <- as.numeric(levels(EU6$NOM.D1))[EU6$NOM.D1]
EU6$NOM.D2 <- as.numeric(levels(EU6$NOM.D2))[EU6$NOM.D2]
EU6$EP.Group <- sapply(EU6$EP.Group, as.character)
colnames(EU6)[8] <- "Political_group"


# normalize & plot political map
EU <- EU6
EU$NOM.D1 <- (EU$NOM.D1 + 1)/2
EU$NOM.D2 <- (EU$NOM.D2 + 1)/2
EU <- as.data.frame(EU)

# add all the parties
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'A'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'C'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'E'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'F'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'G'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'L'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'M'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'N'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'O'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'R'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'S'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'V'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'X'


# make legend readable
EU$Political_group[EU$EP.Group==c('A')] <- 'Anti-Europeans'
EU$Political_group[EU$EP.Group=='C'] <- 'British Conservatives and allies'
EU$Political_group[EU$EP.Group=='E'] <- 'Christian Democrats and Conservatives'
EU$Political_group[EU$EP.Group=='F'] <- 'Italian Conservatives'
EU$Political_group[EU$EP.Group=='G'] <- 'French Gaulist and alies'
EU$Political_group[EU$EP.Group=='L'] <- 'Liberals'
EU$Political_group[EU$EP.Group=='M'] <- 'Radical left'
EU$Political_group[EU$EP.Group=='N'] <- 'Non-attached members'
EU$Political_group[EU$EP.Group=='O'] <- 'Italian Communists and allies'
EU$Political_group[EU$EP.Group=='R'] <- 'Regionalists'
EU$Political_group[EU$EP.Group=='S'] <- 'Socialists'
EU$Political_group[EU$EP.Group=='V'] <- 'Greens'
EU$Political_group[EU$EP.Group=='X'] <- 'Radical right'

p <-ggplot(EU, aes(x=NOM.D1, y=NOM.D2, color=Political_group)) + 
  geom_point(shape=1) 

p + scale_x_continuous(name="Dimension 1", breaks=seq(0,1,0.1)) + scale_y_continuous(name="Dimension 2", breaks=seq(0,1,0.1))

# prepare data
EU <- EU6
EU$NOM.D1 <- (EU$NOM.D1 + 1)/2
EU$NOM.D2 <- (EU$NOM.D2 + 1)/2
EU <- as.data.frame(EU)

# compute polarization index. 2 Dimensions
Center <- c(mean(EU$NOM.D1, na.rm = T), mean(EU$NOM.D2, na.rm = T))
Dist <- sqrt((EU$NOM.D1-Center[1])^2+(EU$NOM.D2-Center[2])^2)
Dist <- as.data.frame(Dist)
I6 <- sqrt(2)*(1/length(Dist$Dist))*sum(Dist)

I <- c(I1,I2,I3,I4,I5, I6)

# prepare data
EU <- EU6
EU$NOM.D1 <- (EU$NOM.D1 + 1)/2
EU$NOM.D2 <- (EU$NOM.D2 + 1)/2
EU <- as.data.frame(EU)
# compute polarization index. 1 Dimension
Center <- mean(EU$NOM.D1, na.rm = T)
Dist <- sqrt((EU$NOM.D1-Center[1])^2)
Dist <- as.data.frame(Dist)
I1Dim6 <- 2*(1/length(Dist$Dist))*sum(Dist)

I1Dim <- c(I1Dim1,I1Dim2,I1Dim3,I1Dim4,I1Dim5, I1Dim6)

# compute polarization index. 2 Dimension, corrected
dim1 <- c(0.86, 0.886, 0.899, 0.878, 0.875)
dim1 <- c(dim1, mean(dim1))
dim2 <- c(0.055, 0.038, 0.019, 0.022, 0.024)
dim2 <- c(dim2, mean(dim2))
w1s <- dim1/(dim1+dim2)
w2s <- dim2/(dim1+dim2)

# prepare data
EU <- EU6
EU$NOM.D1 <- (EU$NOM.D1 + 1)/2
EU$NOM.D2 <- (EU$NOM.D2 + 1)/2
EU <- as.data.frame(EU)

w1 <- w1s[6]
w2 <- w2s[6]

Center <- c(mean(EU$NOM.D1, na.rm = T), mean(EU$NOM.D2, na.rm = T))
Dist <- sqrt(2*w1*(EU$NOM.D1-Center[1])^2+2*w2*(EU$NOM.D2-Center[2])^2)
Dist <- as.data.frame(Dist)
IC6 <- sqrt(2)*(1/length(Dist$Dist))*sum(Dist)

IC <- c(IC1,IC2,IC3,IC4,IC5,IC6)

Inds <-  data.frame(c(1:6), I, I1Dim, IC)
colnames(Inds)[1] <- "EP"
colnames(Inds)[2] <- "Multidimensional"
colnames(Inds)[3] <- "One-dimensional"
colnames(Inds)[4] <- "Multidimensional weighted"
Inds_long <- melt(Inds, id="EP")  # convert to long format
ggplot(data=Inds_long,
       aes(x=EP, y=value, colour=variable)) +
  geom_line()+ scale_x_continuous(name="EP", breaks=c(1:6))


# experiment
Iexp6 <- 0
EU <- EU6
EU$NOM.D1 <- (EU$NOM.D1 + 1)/2
EU$NOM.D2 <- (EU$NOM.D2 + 1)/2
EU <- as.data.frame(EU)
Center <- c(mean(EU$NOM.D1, na.rm = T), mean(EU$NOM.D2, na.rm = T))
for (i in seq(from=0, to = 1, by=0.5)) {
w1 <- i
w2 <- 1-i
Dist <- sqrt(2*w1*(EU$NOM.D1-Center[1])^2+2*w2*(EU$NOM.D2-Center[2])^2)
Dist <- as.data.frame(Dist)
Iexp6 <- c(Iexp6, sqrt(2)*(1/length(Dist$Dist))*sum(Dist))
}

IndsExp <- rbind(Iexp1, Iexp2, Iexp3,Iexp4,Iexp5,Iexp6)
IndsExp <-  data.frame(IndsExp)
IndsExp$X1 <- c(1:6)
colnames(IndsExp)[1] <- "EP"

Inds_long <- melt(IndsExp, id="EP")  # convert to long format
ggplot(data=Inds_long,
       aes(x=EP, y=value, colour=variable)) +
  geom_line() + scale_x_continuous(name="EP", breaks=c(1:6))


# Most distant groups
EU <- EU5
EU$NOM.D1 <- (EU$NOM.D1 + 1)/2
EU$NOM.D2 <- (EU$NOM.D2 + 1)/2
EU <- as.data.frame(EU)

# add all the parties
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'A'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'C'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'E'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'F'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'G'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'L'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'M'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'N'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'O'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'R'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'S'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'V'
EU[length(EU$MEP)+1,] <- EU[length(EU$MEP),]
EU$EP.Group[length(EU$MEP)] <- 'X'

# make legend readable
EU$Political_group[EU$EP.Group==c('A')] <- 'Anti-Europeans'
EU$Political_group[EU$EP.Group=='C'] <- 'British Conservatives and allies'
EU$Political_group[EU$EP.Group=='E'] <- 'Christian Democrats and Conservatives'
EU$Political_group[EU$EP.Group=='F'] <- 'Italian Conservatives'
EU$Political_group[EU$EP.Group=='G'] <- 'French Gaulist and alies'
EU$Political_group[EU$EP.Group=='L'] <- 'Liberals'
EU$Political_group[EU$EP.Group=='M'] <- 'Radical left'
EU$Political_group[EU$EP.Group=='N'] <- 'Non-attached members'
EU$Political_group[EU$EP.Group=='O'] <- 'Italian Communists and allies'
EU$Political_group[EU$EP.Group=='R'] <- 'Regionalists'
EU$Political_group[EU$EP.Group=='S'] <- 'Socialists'
EU$Political_group[EU$EP.Group=='V'] <- 'Greens'
EU$Political_group[EU$EP.Group=='X'] <- 'Radical right'

library(plyr)
EU_Mean4 <- ddply(EU, .(Political_group), summarize,  NOM.D1=mean(NOM.D1), NOM.D2=mean(NOM.D2))
p <-ggplot(EU_Mean4, aes(x=NOM.D1, y=NOM.D2, color=Political_group)) + 
  geom_point(size=3) 

p + labs(title="EP4") +
  labs(x="Dimension 1", y="Dimension 2") + scale_x_continuous(breaks=seq(0,1,0.1)) + scale_y_continuous(breaks=seq(0,1,0.1)) + xlim(0,1) + ylim(0,1)


