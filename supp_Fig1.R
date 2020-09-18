# load packages
library(rethinking)
library(ggplot2)
library(grid)
library(gridExtra)
library(cowplot)


# load data 
d <- read.csv("survival_dataset.csv", stringsAsFactors = F)
g <- read.csv("groom_individual_post_estimates.csv", stringsAsFactors = F)
s <- read.csv("support_individual_post_estimates.csv", stringsAsFactors = F)
p <- read.csv("forage_individual_post_estimates.csv", stringsAsFactors = F)


# using "survival_dataset.csv" identify which estimates belong to adult females
# survival_dataset has a unique ID that macthes index in each SRM
g$sample <- sapply(1:length(g$ikt_ID), function(i)ifelse( g$ikt_ID[i] %in% d$groom_ikt_ID ,"female", "all" ) )
s$sample <- sapply(1:length(s$ikt_ID), function(i) ifelse(s$ikt_ID[i] %in% d$support_ikt_ID, "female", "all") )
p$sample <- sapply(1:length(p$ikt_ID), function(i) ifelse(p$ikt_ID[i] %in% d$forage_ikt_ID, "female", "all") )

# for making the legend
g$sample_label <- ifelse(g$sample=="all", "Other", "Adult female")

# save for plotting Figure 3
write.csv(g, "groom_individual_post_estimates.csv", row.names = F)
write.csv(s, "support_individual_post_estimates.csv", row.names = F)
write.csv(p, "forage_individual_post_estimates.csv", row.names = F)



# pick colors:
female_color <- "orange1"
other_color <- "white" 
zero_color <- "blue"
alpha_level <- 0.35


# settings for plotting PNG (can adjust these if necessary)
png("Figure1.png", width=750, height=850 )
  
  ln.1 <- -1.5
  ln <- -22
  title_size <- 1.1
  
  adj.mat <- 0.04
  adj.matq <- 0.7
  adj.matr <- 0.04
  adj.matrq <- 0.64
  number_size <- 1
  axes_title_size <- 18
  panel_label_size <- 8
  axes_ticks_size <- 12
  

p0 <- ggplot(g, aes(x=post_mean_giver, fill=factor(sample_label)) )+
  geom_density(alpha=alpha_level)+
  scale_fill_manual( values = c( female_color, other_color))+
  xlim(-3.5,4) +
  theme_bw() +
  theme(legend.title = element_blank())+
  theme(legend.text=element_text(size=20))+
  xlab("Groom give posterior mean")
# get the legend
legend <- cowplot::get_legend(p0)

# grooming giving
p1 <- ggplot(g, aes(x=post_mean_giver, fill=factor(sample)) )+
  geom_density(alpha=alpha_level)+
  scale_fill_manual( values = c(other_color, female_color))+
  xlim(-3.5,4) +
  theme_bw() +
  theme(legend.position = "none") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"),
        panel.border = element_rect(colour = "black", fill=NA, size=1)) +
  theme(axis.title.x = element_text(size = axes_title_size),
    axis.title.y = element_text(size = axes_title_size),
    axis.text.x= element_text(size = axes_ticks_size ),
    axis.text.y= element_text(size = axes_ticks_size) )+
  annotate("text",  x=-Inf, y =Inf, label = "A", hjust=-1,vjust=1.5,size=panel_label_size)+
  xlab("Grooming giving posterior mean")

# grooming receiving
p2 <- ggplot(g, aes(x=post_mean_receiver, fill=factor(sample)) )+
  geom_density(alpha=alpha_level)+
  scale_fill_manual( values = c(other_color, female_color))+
  xlim(-3.5,4) +
  ylab(NULL)+
  theme(legend.position = "none") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"),
        panel.border = element_rect(colour = "black", fill=NA, size=1)) +
  theme(axis.title.x = element_text(size = axes_title_size),
        axis.title.y = element_text(size = axes_title_size),
        axis.text.x= element_text(size = axes_ticks_size ),
        axis.text.y= element_text(size = axes_ticks_size) )+
  annotate("text",  x=-Inf, y =Inf, label = "B", hjust=-1,vjust=1.5,size=panel_label_size)+
  xlab("Grooming receiving posterior mean")

# support giving
p3 <- ggplot(s, aes(x=post_mean_giver, fill=factor(sample)) )+
  geom_density(alpha=alpha_level)+
  scale_fill_manual( values = c(other_color, female_color))+
  xlim(-3.5,4) +
  theme(legend.position = "none") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"),
        panel.border = element_rect(colour = "black", fill=NA, size=1)) +
  theme(axis.title.x = element_text(size = axes_title_size),
        axis.title.y = element_text(size = axes_title_size),
        axis.text.x= element_text(size = axes_ticks_size ),
        axis.text.y= element_text(size = axes_ticks_size) )+
  annotate("text",  x=-Inf, y =Inf, label = "C", hjust=-1,vjust=1.5,size=panel_label_size)+
  xlab("Support giving posterior mean")

# support receiving
p4 <- ggplot(s, aes(x=post_mean_receiver, fill=factor(sample)) )+
  geom_density(alpha=alpha_level)+
  scale_fill_manual( values = c(other_color,female_color))+
  xlim(-3.5,4) +
  ylab(NULL)+
  theme_bw() +
  theme(legend.position = "none") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"),
        panel.border = element_rect(colour = "black", fill=NA, size=1)) +
  theme(axis.title.x = element_text(size = axes_title_size),
        axis.title.y = element_text(size = axes_title_size),
        axis.text.x= element_text(size = axes_ticks_size ),
        axis.text.y= element_text(size = axes_ticks_size) )+
  annotate("text",  x=-Inf, y =Inf, label = "D", hjust=-1,vjust=1.5,size=panel_label_size)+
  xlab("Support receiving posterior mean")

# foraging
p5 <- ggplot(p, aes(x=post_mean, fill=factor(sample)) )+
    geom_density(alpha=alpha_level)+
    scale_fill_manual( values = c(other_color, female_color))+
  xlim(-3.5,4) +
  theme(legend.position = "none") +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"),
        panel.border = element_rect(colour = "black", fill=NA, size=1)) +
  theme(axis.title.x = element_text(size = axes_title_size),
        axis.title.y = element_text(size = axes_title_size),
        axis.text.x= element_text(size = axes_ticks_size ),
        axis.text.y= element_text(size = axes_ticks_size) )+
  annotate("text",  x=-Inf, y =Inf, label = "E", hjust=-1,vjust=1.5,size=panel_label_size)+
  xlab("Foraging in proximity posterior mean")

# arrange everything together
grid.arrange( p1,p2,p3,p4,p5,legend, nrow=3)

dev.off()



