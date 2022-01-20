###########################################################################################
# load packages
library(rethinking)
library(ggplot2)
library(grid)
library(gridExtra)
library(cowplot)

source("Code/Plot/plot_aft_calculate_preds.R")

# adjust plot parameters for prediction plot
shade_alpha = 0.1 # transparency of HPDI 
y2 <- 0.2 # y axis limit
line_width <- 1 # line width
color1 <- "gold"
color2 <- "cadetblue3"
color3 <- "coral1" 
shade <- "burlywood"
# the colors might slightly differ from the original colors in the paper

# axes titles
axes_title_size <- 11 # 
panel_label_size <- 6


# PLOT
pdf("Support_giving_preds.pdf",width=8, height=3 )

p1 <- ggplot(NULL, aes(x=soc_nat[[3]], y=fsg_med ) )+
  geom_line(color=color3, lwd=line_width)+
  theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) +
  geom_ribbon( aes(ymin=esg_HPDI[1,], ymax=esg_HPDI[2,]), alpha=shade_alpha)+
  ylim(0, y2) +
  ylab("Probability of Dying")+
  scale_x_continuous(name ="", 
                     breaks=c(round( min(soc_nat[[3]]),0): round( max(soc_nat[[3]]),0) ) )+
  theme(plot.title = element_text(hjust = 0.5, size = 20, face = "bold")) +
  theme(axis.text=element_text(size=9), axis.title=element_text(size=9) )+
  theme(axis.title.x = element_text(size = axes_title_size),
        axis.title.y = element_text(size = axes_title_size))+
  annotate("text",  x=Inf, y =Inf, label = "A", hjust=1.5,vjust=1.5,size=panel_label_size)

# plot for grooming giving predictions
p2 <- ggplot(NULL, aes(x=soc_nat[[8]], y=esg_med ) )+
  geom_line(color=color1, lwd=line_width)+
  theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) +
  geom_ribbon( aes(ymin=fsg_HPDI[1,], ymax=fsg_HPDI[2,]), alpha=shade_alpha)+
  ylim(0, y2) +
  ylab("")+
  scale_x_continuous(name ="Support giving posterior mean", 
                     breaks=c(round( min(soc_nat[[8]]),0): round( max(soc_nat[[8]]),0) ) )+
  theme(plot.title = element_text(hjust = 0.5, size = 20, face = "bold")) +
  theme(axis.text=element_text(size=9), axis.title=element_text(size=9) )+
  theme(axis.title.x = element_text(size = axes_title_size),
        axis.title.y = element_text(size = axes_title_size))+
  annotate("text",  x=Inf, y =Inf, label = "B", hjust=1.5,vjust=1.5,size=panel_label_size)


p3 <- ggplot(NULL, aes(x=soc_nat[[13]], y=mgr_med ) )+
  geom_line(color=color2, lwd=line_width)+
  theme_bw() +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black")) +
  geom_ribbon( aes(ymin=msg_HPDI[1,], ymax=msg_HPDI[2,]), alpha=shade_alpha)+
  ylim(0, y2) +
  ylab("")+
  scale_x_continuous(name ="", 
                     breaks=c(round( min(soc_nat[[13]]),0): round( max(soc_nat[[13]]),0) ) )+
  theme(plot.title = element_text(hjust = 0.5, size = 20, face = "bold")) +
  theme(axis.text=element_text(size=9), axis.title=element_text(size=9) )+
  theme(axis.title.x = element_text(size = axes_title_size),
        axis.title.y = element_text(size = axes_title_size))+
  annotate("text",  x=Inf, y =Inf, label = "C", hjust=1.5,vjust=1.5,size=panel_label_size)

# arrange the plots
grid.arrange( p1, p2 ,p3, nrow=1)

dev.off()

