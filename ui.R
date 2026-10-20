library(shiny)


# ---------------------------
# UI
# ---------------------------

ui <- fluidPage(
  
  # Global Courier font
  tags$head(
    tags$style(HTML("
      * { font-family: 'Courier New', Courier, monospace !important; }
      .color-box {
        width: 150px;
        height: 70px;
        border: 1px solid black;
        margin: 10px;
        display: inline-block;
        text-align: center;
        padding-top: 18px;
        color: white;
        font-weight: bold;
        border-radius: 6px;
      }
    "))
  ),
  
  titlePanel("Color Reference Library"),
  
  fluidRow(
    uiOutput("colorGrid")
  )
)
