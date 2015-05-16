
shinyUI(fluidPage(
  titlePanel("Explore Relationships between cars Miles/(US) gallon output and other variables"),
  
  sidebarLayout(position = "right",
    sidebarPanel(
                  selectInput("Vars", 
                              "Choose a variable:", c(
                              "Cylinders" = "cyl",
                              "Transmission" = "am",
                              "Gears" = "gear",
                              "Displacement (cu.in.)" = "disp",
                              "Gross horsepower" = "hp",
                              "Rear axle ratio" = "drat",
                              "Weight (lb/1000)" = "wt",
                              "1/4 mile time" = "qsec",
                              "V/S" = "vs",
                              "Number of carburetors" = "carb")),
                  radioButtons("radio", label = "Fit regression line:",
                               choices = list("No" = 1, "Yes" = 2), 
                               selected = 1)
                  
                  ),
    

    mainPanel(
      tabsetPanel(
        tabPanel("Plot", plotOutput("plot")),
        tabPanel("Summary", verbatimTextOutput("describe")),
        tabPanel("Documentation", textOutput("doc"),
                 h3("Data"),
                 p("The data was extracted from the 1974 
                   Motor Trend US magazine, and comprises fuel consumption 
                   and 10 aspects of automobile design and performance for 32 
                   automobiles (1973–74 models)."),
                 h3("Purpose"),
                 p("This app allows you to examine possible relationships
                   between miles per gallon output and other variables
                   of the data set. You can examine plots and fit linear 
                   models."),
                 h3("Controls"),
                 p("In top right menu you could choose a variable of interest 
                   and the app will plot it on the x-axis. If you would like to 
                   fit a linear model, then you migt activate the button 'Yes'. 
                   To see the summary of the model access 'Summary' tab."),
                 h3("Limitations"),
                 p("Currently you can fit models only with one regressor."))
              ))
))
)

