library(magick)
# percent to reduce
p <- .55

# Load the image
setwd("C:\\Users\\lanhamm\\Desktop")
#img <- image_read("butlernumber1.jpg")
img <- image_read("butlernumber1new.jpg")

# Get image dimensions
info <- image_info(img)

# Access width and height
(width <- info$width)
(height <- info$height)
cat("Width:", width, "pixels\n")
cat("Height:", height, "pixels\n")

# reduce size
width <- width*p
height <- height*p

new_size <- paste0(width,"x",height,"!")
?image_resize
# Resize the image to 800x600 using Lanczos filter
resized_img <- image_resize(img
                            , geometry=new_size
                            , filter="Lanczos")

# Save the resized image
image_write(resized_img, "butlernumber1new.jpg")
