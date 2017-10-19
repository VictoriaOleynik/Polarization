chol <- read.table(url("http://assets.datacamp.com/blog_assets/chol.txt"), header = TRUE)
chol$Group=NA

ggplot(data=chol, aes(chol$Position)) + 
  geom_histogram(breaks=seq(0, 1, by = 0.1), 
                 col="black", 
                 fill="blue", 
                 alpha = .3) + 
  labs(title="Low polarization") +
  labs(x="Position", y="Count") + 
  xlim(c(0,1)) + 
  ylim(c(0,70))

chol$Position[1:100] <- rnorm(100,0.1,0.05)
chol$Position[101:200] <- rnorm(100,0.9,0.05)
chol$Position[1:200] <- runif(200)

# 2D stuff
chol$HEIGHT[1:100] <- rnorm(100,0.1,0.05)
chol$HEIGHT[101:200] <- rnorm(100,0.9,0.05)
chol$HEIGHT[1:200] <- runif(200)

chol$Group[1:100] <- "Group 1"
chol$Group[101:200] <- "Group 2"


p <-ggplot(chol, aes(x=Position, y=HEIGHT, color=Group)) + 
  geom_point(shape=1) 

p + scale_x_continuous(name="Dimension 1", breaks=seq(0,1,0.1)) + scale_y_continuous(name="Dimension 2", breaks=seq(0,1,0.1))

# multi

chol$Position[1:55] <- rnorm(55,0.2,0.1)
chol$Position[56:163] <- rnorm(108,0.8,0.1)
chol$Position[164:200] <- rnorm(37,0.2,0.1)
chol$HEIGHT[1:55] <- rnorm(55,0.,0.03)
chol$HEIGHT[56:163] <- rnorm(108,0.6,0.1)
chol$HEIGHT[164:200] <- rnorm(37,0.9,0.07)

chol$Position <- sqrt(1.9)*chol$Position
chol$HEIGHT <- sqrt(0.1)*chol$HEIGHT

chol$Group[1:55] <- "Group 1"
chol$Group[56:163] <- "Group 2"
chol$Group[164:200] <- "Group 1"


p <-ggplot(chol, aes(x=Position, y=HEIGHT, color=Group)) + 
  geom_point(shape=1) 

p + scale_x_continuous(name="Dimension 1", breaks=seq(0,max(chol$Position),0.5)) + scale_y_continuous(name="Dimension 2", breaks=seq(0,max(chol$HEIGHT),0.05))

ggplot(chol, aes(Position, fill = Group, colour = Group)) +
  geom_density(alpha = 0.1) +
  xlim(0, 1)

cmass <- c(mean(chol$Position),mean(chol$HEIGHT))


chol$Position[1:100] <- seq(0,1,length=100)
chol$Position[101:200] <- sqrt(1.5)*chol$Position[1:100]
chol$HEIGHT[1:100] <-  seq(0,1,length=100)
chol$HEIGHT[101:200] <- sqrt(0.5)*chol$HEIGHT[101:200]
chol$Group[1:100] <- "Group 1"
chol$Group[101:200] <- "Group 2"
p <-ggplot(chol, aes(x=Position, y=HEIGHT, color=Group)) + 
  geom_point(shape=1) 

p + scale_x_continuous(name="Dimension 1", breaks=seq(0,1,0.1)) + scale_y_continuous(name="Dimension 2", breaks=seq(0,1,0.1))

library(lattice)

x <- seq(0,1,length=7)
y <- seq(0,1,length=7)
grid <- expand.grid(x=x, y=y)
ggplot(grid, aes(x=x, y=y)) + 
  geom_point(shape=1) 

x1 <- sqrt(1.9)*x
y1 <- sqrt(0.1)*y
grid1 <- expand.grid(x=x1, y=y1)
ggplot(grid1, aes(x=x, y=y)) + 
  geom_point(shape=1) 

Grid <- rbind(grid,grid1)
Grid$Group[1:49] <- "Group1"
Grid$Group[50:98] <- "Group2"
ggplot(Grid, aes(x=x, y=y,color=Group)) + 
  geom_point(aes(color = Group), size = 3)
