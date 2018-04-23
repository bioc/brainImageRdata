###############
## load libraries
library(devtools)
###############
#only on my computer
LoadAdultHuman <- function(){
  setClass(Class="DataL",
           representation(fileloc = "list",abrev = "list",conversion = "data.frame",DIM = "list", outline = "list", slices = "vector",DIR = "vector"))
  slices <- c(5,17,25,31,51,59,67,77,83,91)#43 missing Outline.tiff
  ## Get File Locations
  DIR <- c(paste("~/Documents/SalkProjects/ME/NHPManuscript/brainImageR_tiffs/adultHuman_lowres/AllenBrainSlicescopy/",paste("Slice_",slices,"/",sep=""),sep=""))
  fileloc <- c()
  i <- 0
  for (d in DIR){
    i <- i + 1
    x <- paste(d,list.files(path=d,pattern="tif"),sep="")
    x <- x[-c(grep("Outline",x))]
    fileloc[[i]] <- x
  }
  names(fileloc) <- DIR

  ## Get Abreviations
  abrev <- c()
  for (i in 1:length(DIR)){
    tmp <- do.call("rbind",strsplit(x=list.files(path=DIR[i],pattern="tif"),fixed=TRUE,split="."))[,1]
    abrev[[i]] <-  tmp[-c(which(tmp == "Outline"))]
  }
  names(abrev) <- DIR

  #conversion of abreviation to the regions that are in this image
  conversion <- as.data.frame(read.table(as.matrix("~/Documents/SalkProjects/ME/NHPManuscript/brainImageR_tiffs/adultHuman_lowres/AllenBrainSlicescopy/Human34_Hierarchy.txt"),header=TRUE))
  #Dimensions of the image
  DIM <- c()
  options(warn = -1)
  for (d in 1:length(DIR)){
    f <- list.files(DIR[d])
    fordim <- paste(DIR[d],f[1],sep="")
    DIM[[d]] <- dim(readTIFF(source=fordim)[,,1])
  }
  names(DIM) <- DIR
  #Outline image
  outline <- c()
  for (i in 1:length(DIR)){
    tmpfile <- paste(DIR[i],"Outline.tif",sep="")
    outline[[i]] <- readTIFF(source=tmpfile)[,,1]
  }
  options(warn = 0)
  names(outline) <- DIR

  datal <- new(Class="DataL",
               fileloc = fileloc,abrev = abrev,conversion = conversion,DIM = DIM, outline = outline, slices = slices,DIR = DIR)
  return(datal)

}

LoadDevelopingHuman <- function(res = "high"){
  #  require(tiff)
  setClass(Class="DataL",
           representation(fileloc = "list",abrev = "list",conversion = "data.frame",DIM = "list", outline = "list", slices = "vector",DIR = "vector"))
  slices <- c(1,6,8,12,19,24,29,32,39,45)
  ## Get File Locations
  if (res == "high"){
    DIR <- c(paste("~/Documents/SalkProjects/ME/NHPManuscript/brainImageR_tiffs/developingHuman/AllenBrainSlicescopy/",paste("Slice_",slices,"/",sep=""),sep=""))
  }else if (res == "low"){
    DIR <- c(paste("~/Documents/SalkProjects/ME/NHPManuscript/brainImageR_tiffs/developingHuman_lowres/AllenBrainSlicescopy/",paste("Slice_",slices,"/",sep=""),sep=""))
  }

  fileloc <- c()
  i <- 0
  for (d in DIR){
    i <- i + 1
    x <- paste(d,list.files(path=d,pattern="tif"),sep="")
    x <- x[-c(grep("Outline",x))]
    fileloc[[i]] <- x
  }
  names(fileloc) <- DIR

  ## Get Abreviations
  abrev <- c()
  for (i in 1:length(DIR)){
    tmp <- do.call("rbind",strsplit(x=list.files(path=DIR[i],pattern="tif"),fixed=TRUE,split="."))[,1]
    abrev[[i]] <-  tmp[-c(which(tmp == "Outline"))]
  }
  names(abrev) <- DIR

  #conversion of abreviation to the regions that are in this image
  conversion <- as.data.frame(read.table(as.matrix("~/Documents/SalkProjects/ME/brainImageR_ABA/colmeta_hierarchy_2.txt"),header=TRUE))
  #Dimensions of the image
  DIM <- c()
  options(warn = -1)
  for (d in 1:length(DIR)){
    fordim <- paste(DIR[d],"CP.tif",sep="")
    DIM[[d]] <- dim(readTIFF(source=fordim)[,,1])
  }
  names(DIM) <- DIR
  #Outline image
  outline <- c()
  for (i in 1:length(DIR)){
    tmpfile <- paste(DIR[i],"Outline.tif",sep="")
    outline[[i]] <- readTIFF(source=tmpfile)[,,1]
  }
  options(warn = 0)
  names(outline) <- DIR

  datal <- new(Class="DataL",
               fileloc = fileloc,abrev = abrev,conversion = conversion,DIM = DIM, outline = outline, slices = slices,DIR = DIR)
  return(datal)
}


###########################################
## DEVELOPING HUMAN
###########################################
load("~/Documents/SalkProjects/ME/NHPManuscript/nhp_man_R/abaresults.rda")

devhum <- LoadDevelopingHuman(res = "low")

dev_DIM <- devhum@DIM
dev_fileloc <- devhum@fileloc
dev_abrev <- devhum@abrev
dev_conversion <- devhum@conversion
dev_outline <- devhum@outline
dev_slices <- devhum@slices
dev_DIR <- devhum@DIR


dev_abatissues <- abatissues
dev_abatissuesBygenes <- abatissuesBygenes
dev_colmeta <- colmeta
dev_rowmeta <- rowmeta

##############
#saving tif images into list instead of on computer
# Dir <-  DIR[slice] #pick which slice
# Abrev <- as.vector(unlist(abrev[Dir]))
# Fileloc <- unlist(fileloc[Dir])
# Files <- lapply(X=as.vector(Abrev),FUN=LoadFiles, Dir = Dir)
# dim <- as.vector(unlist(DIM[Dir]))
#

require(tiff)
#file <- paste(Dir,i,".tif",sep="")
DIR <- dev_DIR
#low res developmental human
DevHum_low <- list()
for (k in 1:length(DIR)){
  DevHum_low[[k]] <- list()
  names(DevHum_low)[[k]] <- strsplit(DIR[k], "/")[[1]][length(strsplit(DIR[k], "/")[[1]])]

  for(i in 1:length(unlist(dev_fileloc[k]))){
    f <- dev_fileloc[[k]][i]
    suppressWarnings(DevHum_low[[k]][[i]] <- readTIFF(source=f)[,,1])
    f2 <- unlist(strsplit(f, "/"))
    names(DevHum_low[[k]])[i] <- strsplit(f2[length(f2)],".", fixed = TRUE)[[1]][1]
  }

}

names(dev_DIM) <- names(DevHum_low)
names(dev_abrev) <- names(DevHum_low)
names(dev_outline) <- names(DevHum_low)
############


###########################################
## ADULT HUMAN
###########################################
#LOAD ADULT HUMAN
load("~/Documents/SalkProjects/ME/NHPManuscript/nhp_man_R/abaresults_adult.rda")

ad_abatissues <- abatissues
ad_abatissuesBygenes <- abatissuesBygenes
ad_colmeta <- colmeta
ad_rowmeta <- rowmeta

adhum <- LoadAdultHuman()

ad_DIM <- adhum@DIM
ad_fileloc <- adhum@fileloc
ad_abrev <- adhum@abrev
ad_conversion <- adhum@conversion
ad_outline <- adhum@outline
ad_slices <- adhum@slices
ad_DIR <- adhum@DIR
##############

require(tiff)
file <- paste(ad_DIR,i,".tif",sep="")

#low res developmental human
AdHum <- list()
for (k in 1:length(ad_DIR)){
  AdHum[[k]] <- list()
  names(AdHum)[[k]] <- strsplit(ad_DIR[k], "/")[[1]][length(strsplit(ad_DIR[k], "/")[[1]])]

  for(i in 1:length(unlist(ad_fileloc[k]))){
    f <- ad_fileloc[[k]][i]
    suppressWarnings(AdHum[[k]][[i]] <- readTIFF(source=f)[,,1])
    f2 <- unlist(strsplit(f, "/"))
    names(AdHum[[k]])[i] <- strsplit(f2[length(f2)],".", fixed = TRUE)[[1]][1]
  }

}

names(ad_DIM) <- names(AdHum)
names(ad_abrev) <- names(AdHum)
names(ad_outline) <- names(AdHum)
############
# ADDITIONAL INFO FOR THE PREDICTIONS
load("~/Documents/SalkProjects/ME/NHPManuscript/nhp_man_R/estTime_data.rda")

##
#devtools::use_data(DevHum_low, overwrite = TRUE, internal = FALSE)
#devtools::use_data(AdHum, overwrite = TRUE, internal = FALSE)
#devtools::use_data(dev_DIM, overwrite = TRUE, internal = FALSE)
#devtools::use_data(ad_DIM, overwrite = TRUE, internal = FALSE)
#devtools::use_data(dev_abrev, overwrite = TRUE, internal = FALSE)
#devtools::use_data(ad_abrev, overwrite = TRUE, internal = FALSE)
#devtools::use_data(dev_outline, overwrite = TRUE, internal = FALSE)
#devtools::use_data(ad_outline, overwrite = TRUE, internal = FALSE)
#devtools::use_data(dev_conversion, overwrite = TRUE, internal = FALSE)
#devtools::use_data(ad_conversion, overwrite = TRUE, internal = FALSE)
#devtools::use_data(dev_slices, overwrite = TRUE, internal = FALSE)
#devtools::use_data(ad_slices, overwrite = TRUE, internal = FALSE)
#devtools::use_data(dev_abatissuesBygenes, overwrite = TRUE, internal = FALSE)
#devtools::use_data(ad_abatissuesBygenes, overwrite = TRUE, internal = FALSE)
devtools::use_data(dev_colmeta, overwrite = TRUE, internal = FALSE)
devtools::use_data(rowmeta, overwrite = TRUE, internal = FALSE)
devtools::use_data(ad_colmeta, overwrite = TRUE, internal = FALSE)
devtools::use_data(alldev_colMeta, overwrite = TRUE, internal = FALSE)
devtools::use_data(alldev_scale, overwrite = TRUE, internal = FALSE)
devtools::use_data(GeneLists, overwrite = TRUE, internal = FALSE)
devtools::use_data(alldev_rowMeta, overwrite = TRUE, internal = FALSE)
devtools::use_data(Samples, overwrite = TRUE, internal = FALSE)
devtools::use_data(Models, overwrite = TRUE, internal = FALSE)

# devtools::use_data(DevHum_low,dev_DIM,dev_abrev, dev_outline,
#                    dev_conversion,dev_slices,
#                    dev_DIR, dev_abatissuesBygenes,
#                    dev_colmeta,rowmeta,
#                    AdHum, ad_DIM, ad_abrev, ad_outline,
#                    ad_conversion, ad_slices,
#                    ad_DIR,
#                    ad_abatissuesBygenes,
#                    ad_colmeta,
#                    alldev_colMeta, alldev_scale,Models,GeneLists,alldev_rowMeta,Samples,
#                    internal = TRUE, overwrite = TRUE)


