#written by Camille Phaneuf (cphaneuf@g.harvard.edu) with guidance from Alexandra Cohen (ali.cohen@emory.edu)

#inputs: n/a
#defines: common plotting variables for MotER_Learning.Rmd
#outputs: n/a

#set standard colors to use in plots
gold <- "#DEA600"
silver <- "#AEB0B4"
green <- "#7A8D68"
dark_purple <- "#44355B"
light_purple <- "#995D81"
blue <- "#6C91BF"
pink <- "#B84A62"
yellow <- "#FFD966"
orange <- "#ED7D31"
red <- "#D83526"

#set standard lists of colors
learning_color_list <- c(gold, silver, green)
learning_nonew_color_list <- c(gold, silver)
test_color_list <- c(dark_purple, light_purple)
full_color_list <- c(red, orange, yellow, green, blue, light_purple)
demog_color_list <- c(pink, blue)

#set standard demog and test phase plot formatting
age_y_axis_segments <- seq(0, 8, by = 2)
age_horizontal_lines <- geom_hline(yintercept = age_y_axis_segments, colour = 'grey90')
age_format_y_axis <- scale_y_continuous(breaks = age_y_axis_segments)
age_format_x_axis <- scale_x_continuous(breaks = seq(8, 26, by = 2))
test_horizontal_lines <- geom_hline(yintercept = c(0, 0.167, 0.333, 0.667, 0.833, 1), colour = 'grey90')
test_format_y_axis <- scale_y_continuous(breaks = c(0, 0.167, 0.333, .500, 0.667, 0.833, 1))

#set standard learning task plot formatting
y_axis_segments <- c(.5, .6, .7, .8, .9, 1)
horizontal_lines <- geom_hline(yintercept = y_axis_segments, colour = 'grey90')
format_y_axis <- scale_y_continuous(breaks = y_axis_segments)
trialwise_y_axis_segments <- c(.2, .4, .6, .8, 1)
trialwise_horizontal_lines <- geom_hline(yintercept = trialwise_y_axis_segments, colour = 'grey90')
trialwise_format_y_axis <- scale_y_continuous(breaks = trialwise_y_axis_segments)
rt_y_axis_segments <- c(550, 650, 750, 850, 950)
rt_horizontal_lines <- geom_hline(yintercept = rt_y_axis_segments, colour = 'grey90')
rt_format_y_axis <- scale_y_continuous(breaks = rt_y_axis_segments)
agefits_y_axis_segments <- c(0, .2, .4, .6, .8, 1)
agefits_horizontal_lines <- geom_hline(yintercept = agefits_y_axis_segments, colour = 'grey90')
agefits_format_y_axis <- scale_y_continuous(breaks = agefits_y_axis_segments)
agefits_rt_y_axis_segments <- c(250, 500, 750, 1000, 1250, 1500)
agefits_rt_horizontal_lines <- geom_hline(yintercept = agefits_rt_y_axis_segments, colour = 'grey90')
agefits_rt_format_y_axis <- scale_y_continuous(breaks = agefits_rt_y_axis_segments)
agefits_format_x_axis <- scale_x_continuous(breaks = seq(8, 26, by = 4))
stimtype_y_axis_segments <- c(.83, .86, .89, .92)
stimtype_horizontal_lines <- geom_hline(yintercept = stimtype_y_axis_segments, colour = 'grey90')
stimtype_format_y_axis <- scale_y_continuous(breaks = stimtype_y_axis_segments)

#set standard theme to use for ggplot
moter_learning.theme <- theme(title = element_text(size = 22, vjust = 2, face = "bold"),
                              plot.title = element_text(hjust = .5), 
                              axis.title.x = element_text(size = 22, vjust = -0.5),
                              axis.title.y = element_text(size = 22, vjust = 1.5),
                              axis.text.x = element_text(size = 14, colour = "black", vjust = -0.5),
                              axis.text.y = element_text(size = 14, colour = "black"),
                              legend.title = element_blank(), 
                              legend.text = element_text(size = 14),
                              legend.position = "bottom",
                              legend.key = element_rect(fill = "transparent", colour=NA),
                              strip.background = element_rect(fill = "grey90"),
                              strip.text.x = element_text(size = 14, colour = "black"), 
                              strip.text.y = element_text(size = 14, colour = "black"), 
                              text = element_text(family = "Avenir"),
                              panel.grid.major = element_blank(),
                              panel.grid.minor = element_blank(),
                              panel.background = element_blank(), 
                              axis.line = element_line(colour = "black"))
