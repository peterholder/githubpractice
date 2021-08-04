head(se)

ggplot(data = se) + 
  geom_point(aes(x = year, y = visitors, colour = state)) + 
  labs(x = "Year",
       y = "Visitors",
       title = "Southeast NP Visitors by State") + 
  theme_bw() +
  theme(legend.title = element_blank(),
        axis.text.x = element_text(angle = 45, hjust = 1, size =14))

#faceting: allows user to split one plot into multiple plots based on data in the dataset

ggplot(data = se) +
  geom_point(aes(x = year, y = visitors, colour = park_name)) +
  facet_wrap(~ state, scales = "free")

#for facet_wrap: scales dictates whether the scale of each graph is set(ie. 'fixed') or free (ie. not limited/can vary between plots)
ggplot(data = se) +
  geom_point(aes(x = year, y = visitors, colour = park_name)) +
  facet_wrap(~ state, scales = "fixed")

