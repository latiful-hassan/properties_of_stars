library(tidyverse)
library(dslabs)
data(stars)
options(digits = 3) 

# finding the mean and standard deviation of magnitude
mean(stars$magnitude)
sd(stars$magnitude)

# creating a density plot of magnitude to show local maxima and minima
stars %>%
  ggplot(aes(magnitude, color = magnitude, fill = magnitude)) + 
  geom_density()
  
# creating a distribution to show density against temperature
stars %>% 
  ggplot(aes(temp, color = temp)) +
  geom_density()

# creating a scatter plot of magnitude against temperature
stars %>% 
  ggplot(aes(temp, magnitude)) +
  geom_point()

# reversing the scale 
stars %>% 
  ggplot(aes(temp, magnitude)) +
  geom_point() +
  scale_x_reverse() +
  scale_y_reverse()

# sorting with colour
stars %>% 
  ggplot(aes(temp, magnitude, color = star)) +
  geom_point() +
  scale_x_reverse() +
  scale_y_reverse()
