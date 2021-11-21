library(tidyverse)
library(dslabs)
data(stars)
options(digits = 3) 

stars %>%
  ggplot(aes(magnitude, color = magnitude, fill = magnitude)) + 
  geom_density()
  
#

stars %>% 
  ggplot(aes(temp, color = temp)) +
  geom_density()

#

stars %>% 
  ggplot(aes(temp, magnitude)) +
  geom_point()

#

stars %>% 
  ggplot(aes(temp, magnitude)) +
  geom_point() +
  scale_x_reverse() +
  scale_y_reverse()

#

stars %>% 
  ggplot(aes(temp, magnitude, color = star)) +
  geom_point() +
  scale_x_reverse() +
  scale_y_reverse()
