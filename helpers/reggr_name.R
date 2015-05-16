reggr_name <- function(x) {
  if (x == "cyl") {
    x <- mtcars$cyl
  }
  
  if (x == "gear") {
    x <- mtcars$gear
  }
  
  if (x == "disp") {
    x <- mtcars$disp
  }
  
  if (x == "hp") {
    x <- mtcars$hp
  }
  
  if (x == "drat") {
    x <- mtcars$drat
  }
  
  if (x == "wt") {
    x <- mtcars$wt
  }
  
  if (x == "vs") {
    x <-  mtcars$vs
  }
  
  if (x == "carb") {
    x <- mtcars$carb
  }
  
  if (x == "qsec") {
    x <- mtcars$qsec
  }
  
  if (x == "am") {
    x <- mtcars$am
  }
  return(x)
}