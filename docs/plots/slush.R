p1 <- plot(conditional_effects(m_maas, effects = "Living_1_4_f", resp = "MAASQ116"), plot=FALSE)
p2 <- plot(conditional_effects(m_maas, effects = "Living_1_4_f", resp = "MAASQ216"), plot=FALSE)
p3 <- plot(conditional_effects(m_maas, effects = "Living_1_4_f", resp = "MAASQ316"), plot=FALSE)
p8 <- plot(conditional_effects(m_maas, effects = "Living_1_4_f", resp = "MAASQ816"), plot=FALSE)
p12 <- plot(conditional_effects(m_maas, effects = "Living_1_4_f", resp = "MAASQ1216"), plot=FALSE)

p1 <- p1[[1]] + 
    ylab("Q1") + 
    scale_x_discrete(breaks = c("1","2","3","4"), 
                     labels = c("I live by myself", "I live in shared housing", "I live with a partner", "I live with my family")) + 
    xlab("") +
    coord_cartesian(ylim = c(1,5)) +
    theme(axis.text.x = element_blank()) 

p2 <- p2[[1]] + 
    ylab("Q2") + 
    scale_x_discrete(breaks = c("1","2","3","4"), 
                     labels = c("I live by myself", "I live in shared housing", "I live with a partner", "I live with my family")) + 
    xlab("") +
    coord_cartesian(ylim = c(1,5)) +
    theme(axis.text.x = element_blank())

p3 <- p3[[1]] + 
    ylab("Q3") + 
    scale_x_discrete(breaks = c("1","2","3","4"), 
                     labels = c("I live by myself", "I live in shared housing", "I live with a partner", "I live with my family")) + 
    xlab("") +
    coord_cartesian(ylim = c(1,5)) +
    theme(axis.text.x = element_text(angle = 45, hjust=1))

p8 <- p8[[1]] + 
    ylab("Q8") + 
    scale_x_discrete(breaks = c("1","2","3","4"), 
                     labels = c("I live by myself", "I live in shared housing", "I live with a partner", "I live with my family")) + 
    xlab("") +
    coord_cartesian(ylim = c(1,5)) +
    theme(axis.text.x = element_text(angle = 45, hjust=1))

p12 <- p12[[1]] + 
    ylab("Q12") + 
    scale_x_discrete(breaks = c("1","2","3","4"), 
                     labels = c("I live by myself", "I live in shared housing", "I live with a partner", "I live with my family")) + 
    xlab("") +
    coord_cartesian(ylim = c(1,5)) +
    theme(axis.text.x = element_text(angle = 45, hjust=1))

(p1 + p2 + plot_spacer())/ (p3 + p8 + p12)