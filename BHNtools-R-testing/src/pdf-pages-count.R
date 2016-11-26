#########################################
#GET PDF PAGE NUMBER :: R - JULY 16
#Suggestion: NajlaBioinfo
##########################################

##SOURCE
#----pdftools package
#DOCS: https://cran.rstudio.com/web/packages/pdftools

#Requirement
#brew install poppler
## TO AVOID ERROR ::: configure: error: cannot determine poppler-glib compile/link flags

#INSTALL PACKAGES
#install.packages("pdftools", dependencies=TRUE)  #only once

#IN/OUT FILES
PATH_TO_PDF_FILE="../inputs/14032805.pdf"
in_put_pdf="../inputs/14032805.pdf"
out_put_pdf="../reports/pdfs/testCopy.pdf"

#LOAD LIBS
library(pdftools)

#Copy of the original file
#file.copy(file.path(Sys.getenv("PATH_TO_PDF_FILE"), in_put_pdf), out_put_pdf)
file.copy(in_put_pdf, out_put_pdf)

#Many information about the file are displayed here
info <- pdf_info(out_put_pdf)
text <- pdf_text(out_put_pdf)
fonts <- pdf_fonts(out_put_pdf)
files <- pdf_attachments(out_put_pdf)


#To get the number of pages
numberOfPageInPdf = info[2]
numberOfPageInPdf