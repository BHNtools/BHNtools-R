#########################################
#Convert PDF to txt, xls :: R - JULY 16
##########################################

##SOURCE
#----pdftools package
#https://cran.rstudio.com/web/packages/pdftools
#----xlsx package
#https://cran.r-project.org/web/packages/xlsx


#IN/OUT FILES
in_put_pdf="../inputs/14032805.pdf"
#Example :: in_put_pdf<-download.file("http://arxiv.org/pdf/1403.2805.pdf", "1403.2805.pdf", mode = "wb")

out_put_txt="../reports/txts/test_txt.txt"
out_put_xls_single="../reports/tabs/test_xlsS.xls"

#Requirement
#brew install poppler
## TO AVOID ERROR ::: configure: error: cannot determine poppler-glib compile/link flags

#INSTALL PACKAGES
#install.packages("pdftools", dependencies=TRUE)  #only once
#install.packages("xlsx", dependencies=TRUE)  #only once

#LOAD LIBS
library(pdftools)

#LOAD PDF input
txt <- pdf_text(in_put_pdf)

# CONVERT TO TXT :: first page text
#myfirstPage <-cat(txt[1])
write.table(txt, out_put_txt, sep="\t")

#CONVERT TO XLS
#library(xlsx)
#write.xlsx(txt, out_put_xls_single)

