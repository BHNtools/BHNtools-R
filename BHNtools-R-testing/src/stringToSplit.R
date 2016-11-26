#' How to split a string before the delimiter?
#' Satckoverflow - Quest : PeterCreate,zx8754
#' Suggestion: NajlaBioinfo
#' @param stringToSplit : string to split.
#' @param mypattern : wanted pattern.
#' @return vector of splited string.
#DOCS: https://cran.r-project.org/web/packages/stringr/vignettes/stringr.html

library(stringr)
stringSpliter <- function(stringToSplit,mypattern) {
  #check if pattern exist
  if (str_detect(stringToSplit, mypattern)==TRUE){
    #Pattern occurence
    nbrOfSplit<-lengths(str_extract_all(stringToSplit, myPattern))
    #Paste the pattern with the splited string
    stringPatternMatch <-paste(myPattern,str_split_fixed(stringToSplit,myPattern,nbrOfSplit+1),sep="")
    #The clean out put
    vectorOfSplits<-stringPatternMatch[2:length(stringPatternMatch)]
    return(vectorOfSplits)}
  else{return(print("No match with this pattern."))}
}

#######
#TEST
######
stringToSplit<-"T,2016,07,22,00,50,42,B,1247721,64109,28,3447,717510,30094,17,3447,998.4,300.3,G,2830652,67651,440,3447,1645640,30654,417,3447,998.4,300.3,R,1918257,63348,6691,3447,1123015,39705,6345,3447,998.4,300.3,D,NBXX,2951,2.270e-7,4.481e7,1.699e7,1.286e-7,8.332e8,-7.408e8,Y,170520,998.4,300.3,297.6,71.9,12.6,6.0,0,0000,T,2016,07,22,00,55,42,B,1246814,64500,21,3447,713744,30248,25,3448,998.4,300.3,G,2830524,67634,495,3447,1642153,30404,362,3448,998.4,300.3,R,1915647,63473,6775,3447,1121333,39869,6492,3448,998.4,300.3,D,NBXX,2651,4.390e7,4.446e7,1.476e7,2.092e7,1.844e8,-9.807e-8,Y,170512,998.4,300.3,297.6,71.9,12.6,6.0,0,0000,T,2016,07,22,01,00,42,B,1244908,64980,24,3447,715297,30273,26,3447,998.5,300.3,G,2829637,67766,458,3447,1642059,30966,376,3447,998.5,300.3,R,1916468,63793,6619,3447,1123483,40087,6422,3447,998.5,300.3,D,NBXX,2351,7.181e7,4.899e7,3.144e7,2.458e7,1.714e7,4.504e8,Y,170458,998.5,300.3,297.5,72.1,12.6,5.9,0,0000"
myPattern<-"T,2016,07"

rslt<-stringSpliter(stringToSplit,myPattern)
rslt

myPattern<-"NBXX"
#myPattern<-"dfqdqf"
rslt<-stringSpliter(stringToSplit,myPattern)
rslt