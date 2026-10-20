library(shiny)

# ---------------------------
# 30‑Color Palette
# ---------------------------


color_palette <- data.frame(
  ID = c(
    # Blues
    "Steel Blue","Dodger Blue","Royal Blue","Deep Sky Blue","Light Sky Blue",
    "Cornflower Blue","Cadet Blue","Slate Blue","Dark Slate Blue","Midnight Blue",
    
    # Greens
    "Forest Green","Sea Green","Medium Sea Green","Olive Drab","Dark Olive Green",
    "Light Sea Green","Dark Cyan","Teal","Pale Green","Lime Green",
    
    # Reds / Pinks
    "Crimson","Firebrick","Tomato","Light Coral","Indian Red",
    "Hot Pink","Deep Pink","Salmon","Dark Red","Maroon",
    
    # Purples
    "Dark Violet","Indigo","Medium Purple","Plum","Orchid",
    "Purple","Rebecca Purple","Blue Violet",
    
    # Warm / Earth Tones
    "Rusty Orange","Dark Orange","Goldenrod","Chocolate","Sienna",
    "Peru","Dark Khaki",
    
    # Greys / Neutrals
    "Slate Grey","Light Slate Grey","Dim Grey","Dark Grey","Gainsboro"
  ),
  
  HEX = c(
    # Blues
    "#4682B4","#1E90FF","#4169E1","#00BFFF","#87CEFA",
    "#6495ED","#5F9EA0","#6A5ACD","#483D8B","#191970",
    
    # Greens
    "#228B22","#2E8B57","#3CB371","#6B8E23","#556B2F",
    "#20B2AA","#008B8B","#008080","#98FB98","#32CD32",
    
    # Reds / Pinks
    "#DC143C","#B22222","#FF6347","#F08080","#CD5C5C",
    "#FF69B4","#FF1493","#FA8072","#8B0000","#800000",
    
    # Purples
    "#9400D3","#4B0082","#9370DB","#DDA0DD","#DA70D6",
    "#800080","#663399","#8A2BE2",
    
    # Warm / Earth Tones
    "#D2691E","#FF8C00","#DAA520","#A0522D","#A0522D",
    "#CD853F","#BDB76B",
    
    # Greys / Neutrals
    "#708090","#778899","#696969","#A9A9A9","#DCDCDC"
  ),
  
  stringsAsFactors = FALSE
)

# ---------------------------
# SERVER
# ---------------------------

server <- function(input, output, session) {
  
  output$colorGrid <- renderUI({
    lapply(1:nrow(color_palette), function(i) {
      div(
        class = "color-box",
        style = paste0("background-color:", color_palette$HEX[i], ";"),
        HTML(paste0(color_palette$ID[i], "<br>", color_palette$HEX[i]))
      )
    })
  })
  
}
