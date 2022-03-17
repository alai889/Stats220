library(magick)
#Square one 
happy_wolf <- image_read("https://cdn.pixabay.com/photo/2018/03/27/21/57/winter-3267564_960_720.jpg")%>%
  image_scale(269)%>%
  image_border(color = "blue", geometry = "30x30", operator = "copy")%>%
  image_oilpaint()
happy_wolf

#square two 
text_1 <- image_blank(width= 300, height=180, color= "#cce6ff")%>%
  image_annotate(text = "Using R to make memes",
                  color = "#FFFFFF",
                  size = 25,
                  font = "Comic Sans",
                  gravity = "center")%>%
  image_border(color= "#FF0066", "30X30")
text_1

#square 3
grumpy_wolf <- image_read("https://media.istockphoto.com/photos/wolf-picture-id175600586?k=20&m=175600586&s=612x612&w=0&h=rDvN8Scacw_DzpGp1zGK-7qGIs3pPyi-_AVmgkik3zw=")%>%
  image_scale(269)%>%
  image_border(color = "cyan", geometry = "30x30", operator = "copy")%>%
  image_noise()
grumpy_wolf

#square 4
text_2 <- image_blank(width= 300, height=180, color= "#99ff99")%>%
  image_annotate(text = "Using R for Statistics",
                 color = "#000000",
                 size = 25,
                 font = "Comic Sans",
                 gravity = "center")%>%
  image_border(color= "#ffcc99", "30X30")
text_2

#putting the pictures together 
first_row <- c(happy_wolf, text_1) %>%
  image_append()
first_row
  
second_row <- c(grumpy_wolf, text_2) %>%
  image_append()
second_row

meme <- c(first_row, second_row)%>%
  image_append(stack=TRUE)

image_write(meme, "my_meme.png")
  
               
              
