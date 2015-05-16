xlab_name <- function(x) {
  if (x == "cyl") {
    x <- "Cylinders"
  }
  
  if (x == "gear") {
    x <- "Gears"
  }
  
  if (x == "disp") {
    x <- "Displacement (cu.in.)"
  }
  
  if (x == "hp") {
    x <- "Gross horsepower"
  }
  
  if (x == "drat") {
    x <- "Rear axle ratio"
  }
  
  if (x == "wt") {
    x <- "Weight (lb/1000)"
  }
  
  if (x == "vs") {
    x <-  "V/S"
  }
  
  if (x == "carb") {
    x <- "Number of carburetors"
  }
  
  if (x == "qsec") {
    x <- "1/4 mile time"
  }
  
  if (x == "am") {
    x <- "Transmission"
  }
  return(x)
}