library(rlang)
library(tidyverse)

transmute(starwars, height/mass)

quote(height / mass) #gives call

"height /mass" # gives character vector


x <- quote(height/mass)
eval(x) # fails because height and mass are still not found, just like typing in bare to the console

eval(x, starwars) #this works because it evaluates in the context of "starwars"

# why do we need tidy eval?

#Bang bang operator (!!) tells it to unquote a variable and pass it along to whatever needs it

qq_show() #quasi quotation - useful to inspecting and learning the !! operator
          # lets you see what will happen when the function gets called
mouse3 <- "fievel"
qq_show(
  cement(bernard, bianca, !!mouse3)
)
# gives + + cement(bernard, biance, "fievel")
)

# qq_show allows you to check that what you get is what you would have typed as a user

enquo() #is for function
quo() #is for what YOU supply, captures the envrionment?

