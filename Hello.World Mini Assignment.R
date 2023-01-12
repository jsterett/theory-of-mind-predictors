# Writing function hello.world
hello.world <- function(x, y, z){
# Assigning objects as ages 
  ages <- c(x, y, z)
  for (age in ages){ 
    if (age < 10){ # If age is less than 10
      print("Hola mundo")}
    else if (age > 55){ # If age is greater than 55
      print("Hallo Welt")
    } else{ # If age is between 10 and 55
      print("Hello world")
    }}}

hello.world(8, 60, 18)
