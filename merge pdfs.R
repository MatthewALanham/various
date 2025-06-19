# Load pdftools
library(pdftools)
setwd("C:/Users/lanhamm/Desktop/Form-matthew_lanham_-_asapdf")
getwd()
list.files()
pdf_combine(list.files(), output = "matthew_lanham_form.pdf")

pdf_combine(c("1.pdf"
              , "2.pdf"
            )
            , output = "matthew_lanham_form.pdf")

# extract some pages
#pdf_subset('1_Matthew Lanham',
#           pages = 1:3, output = "subset.pdf")

# Should say 3
#pdf_length("subset.pdf")

?pdf_subset
