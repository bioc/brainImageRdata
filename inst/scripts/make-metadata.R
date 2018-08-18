
## DevHum_low
meta <- data.frame(
  Title = "Low resolution maps of each brain region within the Allen Brain Atlas 25 pcw reference map",
  Description = paste0("Pre-computed matrices to be used as masks for  ",
                       "each region present within each layer of the  ",
                       "Allen Brain Atlas reference map for the 15 pcw human. The original ",
                       "images were downloaded from the Allen Brain Atlas,",
                       "then imported into photoshop where each region was individually ",
                       "masked and saved as a separated tiff image "),
  BiocVersion = "3.8",
  SourceType = "tiff",
  SourceUrl = "http://atlas.brain-map.org/",
  SourceVersion = "Accessed 2017",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "List",
  DispatchClass = "Rda",
  ResourceName = "DevHum_low.rda",
  RDataPath = "brainImageRdata/data/DevHum_low.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)

## AdHum
meta <- rbind(meta, data.frame(
    Title = "Low resolution maps of each brain region within the Allen Brain Atlas Adult Human reference map",
    Description = paste0("Pre-computed matrices to be used as masks for  ",
                         "each region present within each layer of the  ",
                         "Allen Brain Atlas reference map for the adult human brain. The original ",
                         "images were downloaded from the Allen Brain Atlas,",
                         "then imported into photoshop where each region was individually ",
                         "masked and saved as a separated tiff image "),
    BiocVersion = "3.8",
    SourceType = "tiff",
    SourceUrl = "http://atlas.brain-map.org/",
    SourceVersion = "Accessed 2017",
    Species = "Homo sapiens",
    TaxonomyId = 9606,
    DataProvider = "Salk Institute",
    Maintainer = "Sara Linker <slinker@salk.edu>",
    RDataClass = "List",
    DispatchClass = "Rda",
    ResourceName = "AdHum.rda",
    RDataPath = "brainImagerdata/data/AdHum.rda",
    Genome = "NA",
    Coordinate_1_based = "FALSE"
  )
)

##dev_DIM
meta <- rbind(meta, data.frame(
  Title = "Starting dimensions of all slices within the developmental brain",
  Description = paste0("Pre-computed matrices were used as masks for  ",
                       "each region present within each layer of the  ",
                       "Allen Brain Atlas reference map for the 15 pcw human brain. The object dev_DIM ",
                       "reports the original dimensions for the original full image so ",
                       "that the full image can be reconstructed at the end of the  ",
                       "analysis. "),
  BiocVersion = "3.8",
  SourceType = "tiff",
  SourceUrl = "http://atlas.brain-map.org/",
  SourceVersion = "Accessed 2017",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "List",
  DispatchClass = "Rda",
  ResourceName = "dev_DIM.rda",
  RDataPath = "brainImagerdata/data/dev_DIM.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)
)

##ad_DIM
meta <- rbind(meta, data.frame(
  Title = "Starting dimensions of all slices within the adult brain",
  Description = paste0("Pre-computed matrices were used as masks for  ",
                       "each region present within each layer of the  ",
                       "Allen Brain Atlas reference map for the adult human brain. The object ad_DIM ",
                       "reports the original dimensions for the original full image so ",
                       "that the full image can be reconstructed at the end of the  ",
                       "analysis. "),
  BiocVersion = "3.8",
  SourceType = "tiff",
  SourceUrl = "http://atlas.brain-map.org/",
  SourceVersion = "Accessed 2017",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "List",
  DispatchClass = "Rda",
  ResourceName = "ad_DIM.rda",
  RDataPath = "brainImagerdata/data/ad_DIM.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)
)

##dev_abrev
meta <- rbind(meta, data.frame(
  Title = "Abreviations of all brain regions present within each slice of the developing brain set",
  Description = paste0("Pre-computed matrices were used as masks for  ",
                       "each region present within each layer of the  ",
                       "Allen Brain Atlas reference map for the developing 15 pcw human brain. The object dev_abrev ",
                       "reports which brain regions are masked within a given slice for the developing 15 pcw brain.   "
                       ),
  BiocVersion = "3.8",
  SourceType = "tiff",
  SourceUrl = "http://atlas.brain-map.org/",
  SourceVersion = "Accessed 2017",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "List",
  DispatchClass = "Rda",
  ResourceName = "dev_abrev.rda",
  RDataPath = "brainImagerdata/data/dev_abrev.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)
)


##ad_abrev
meta <- rbind(meta, data.frame(
  Title = "Abreviations of all brain regions present within each slice of the adult brain set",
  Description = paste0("Pre-computed matrices were used as masks for  ",
                       "each region present within each layer of the  ",
                       "Allen Brain Atlas reference map for the adult human brain. The object ad_abrev ",
                       "reports which brain regions are masked within a given slice for the adult brain.   "
  ),
  BiocVersion = "3.8",
  SourceType = "tiff",
  SourceUrl = "http://atlas.brain-map.org/",
  SourceVersion = "Accessed 2017",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "List",
  DispatchClass = "Rda",
  ResourceName = "ad_abrev.rda",
  RDataPath = "brainImagerdata/data/ad_abrev.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)
)


##dev_outline
meta <- rbind(meta, data.frame(
  Title = "Outline to be drawn for each slice within the developing brain",
  Description = paste0("Pre-computed matrices were used as masks for  ",
                       "each region present within each layer of the  ",
                       "Allen Brain Atlas reference map for the developing human brain. The object dev_outline ",
                       "contains the information to draw an outline around all of these masks within the final image.   "
  ),
  BiocVersion = "3.8",
  SourceType = "tiff",
  SourceUrl = "http://atlas.brain-map.org/",
  SourceVersion = "Accessed 2017",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "List",
  DispatchClass = "Rda",
  ResourceName = "dev_outline.rda",
  RDataPath = "brainImagerdata/data/dev_outline.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)
)

##ad_outline
meta <- rbind(meta, data.frame(
  Title = "Outline to be drawn for each slice within the adult brain",
  Description = paste0("Pre-computed matrices were used as masks for  ",
                       "each region present within each layer of the  ",
                       "Allen Brain Atlas reference map for the adult human brain. The object ad_outline ",
                       "contains the information to draw an outline around all of these masks within the final image.   "
  ),
  BiocVersion = "3.8",
  SourceType = "tiff",
  SourceUrl = "http://atlas.brain-map.org/",
  SourceVersion = "Accessed 2017",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "List",
  DispatchClass = "Rda",
  ResourceName = "ad_outline.rda",
  RDataPath = "brainImagerdata/data/ad_outline.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)
)


##dev_conversion
meta <- rbind(meta, data.frame(
  Title = "Conversion between the microdissection transcriptome dataset and the position of the tissue in the reference developing brain images.",
  Description = paste0("A major advantage of brainImager is the ability to cross-reference two disparate datasets from the Allen Brain Atlas  ",
                       "These two datasets do not share a 1:1 relationship. As a general rule more than one microdissected tissue will be combined to generate the profile plotted over the general brain area reference atlas.   ",
                       "The object dev_conversion provides the information to convert between these two datasets for the developing brain "

  ),
  BiocVersion = "3.8",
  SourceType = "tab-delimited",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "Data Frame",
  DispatchClass = "Rda",
  ResourceName = "dev_conversion.rda",
  RDataPath = "brainimageRdata/data/dev_conversion.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)
)

##ad_conversion
meta <- rbind(meta, data.frame(
  Title = "Conversion between the microdissection transcriptome dataset and the position of the tissue in the reference adult brain images.",
  Description = paste0("A major advantage of brainImageR is the ability to cross-reference two disparate datasets from the Allen Brain Atlas  ",
                       "These two datasets do not share a 1:1 relationship. As a general rule more than one microdissected tissue will be combined to generate the profile plotted over the general brain area reference atlas.   ",
                       "The object ad_conversion provides the information to convert between these two datasets for the adult brain "

  ),
  BiocVersion = "3.8",
  SourceType = "tab-delimited",
  SourceUrl = "",
  SourceVersion = "",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "Data Frame",
  DispatchClass = "Rda",
  ResourceName = "ad_conversion.rda",
  RDataPath = "brainimageRdata/data/ad_conversion.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)
)


##dev_slices
meta <- rbind(meta, data.frame(
  Title = "Available slices for the developing brain",
  Description = paste0("We provide reference maps for multiple slices of the developing brain ",
                       "the object dev_slices lists the original sections that these correspond to in the ",
                       "Allen Institute's Brain Reference Atlas."

  ),
  BiocVersion = "3.8",
  SourceType = "",
  SourceUrl = "http://atlas.brain-map.org/",
  SourceVersion = "Accessed 2017",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "Vector",
  DispatchClass = "Rda",
  ResourceName = "dev_slices.rda",
  RDataPath = "brainimageRdata/data/dev_slices.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)
)


## ad_slices
meta <- rbind(meta, data.frame(
  Title = "Available slices for the developing brain",
  Description = paste0("We provide reference maps for multiple slices of the adult brain ",
                       "the object ad_slices lists the original sections that these correspond to in the ",
                       "Allen Institute's Brain Reference Atlas."

  ),
  BiocVersion = "3.8",
  SourceType = "",
  SourceUrl = "http://atlas.brain-map.org/",
  SourceVersion = "Accessed 2017",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "Vector",
  DispatchClass = "Rda",
  ResourceName = "ad_slices.rda",
  RDataPath = "brainimageRdata/data/ad_slices.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)
)

##dev_abatissuesBygenes
meta <- rbind(meta, data.frame(
  Title = "Presence of gene expression for each microdissected brain region",
  Description = paste0("Gene expression is noted as present (1) or absent (0) for  ",
                       "each microdissected structure within the 15 pcw developing brain (h376_IIIA_02). "

  ),
  BiocVersion = "3.8",
  SourceType = "csv",
  SourceUrl = "http://www.brainspan.org/api/v2/well_known_file_download/278442900",
  SourceVersion = "Accessed 2017",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "Data Frame",
  DispatchClass = "Rda",
  ResourceName = "dev_abatissuesBygenes.rda",
  RDataPath = "brainimageRdata/data/dev_abatissuesBygenes.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)
)


##ad_abatissuesBygenes
meta <- rbind(meta, data.frame(
  Title = "Presence of gene expression for each microdissected brain region",
  Description = paste0("Gene expression is noted as present (1) or absent (0) for  ",
                       "each microdissected structure within the adult developing brain. "

  ),
  BiocVersion = "3.8",
  SourceType = "csv",
  SourceUrl = "http://www.brainspan.org/api/v2/well_known_file_download/278442900",
  SourceVersion = "Accessed 2017",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "Data Frame",
  DispatchClass = "Rda",
  ResourceName = "ad_abatissuesBygenes.rda",
  RDataPath = "brainimageRdata/data/ad_abatissuesBygenes.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)
)

##dev_colmeta
meta <- rbind(meta, data.frame(
  Title = "Metadata for the tissues examined in the 15 pcw developing brain (h376_IIIA_02)",
  Description = paste0("Metadata for the tissues examined in the 15 pcw developing brain (h376_IIIA_02) "


  ),
  BiocVersion = "3.8",
  SourceType = "csv",
  SourceUrl = "http://www.brainspan.org/api/v2/well_known_file_download/278442900",
  SourceVersion = "Accessed 2017",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "Data Frame",
  DispatchClass = "Rda",
  ResourceName = "dev_colmeta.rda",
  RDataPath = "brainimageRdata/data/dev_colmeta.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)
)

## ad_colmeta
meta <- rbind(meta, data.frame(
  Title = "Metadata for the tissues examined in the adult brain ",
  Description = paste0("Metadata for the tissues examined in the adult brain (donors H0351.2001, H0351.2002, H372.006, H0351.2003, H0351.1009, H0351.1012, H0351.1015, H0351.1016)"


  ),
  BiocVersion = "3.8",
  SourceType = "csv",
  SourceUrl = "http://human.brain-map.org/static/download/",
  SourceVersion = "Accessed 2017",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "Data Frame",
  DispatchClass = "Rda",
  ResourceName = "ad_colmeta.rda",
  RDataPath = "brainimageRdata/data/ad_colmeta.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)
)


## rowmeta
meta <- rbind(meta, data.frame(
  Title = "rowmeta",
  Description = paste0("Gene level information for the conversion between probe id and gene symbol"


  ),
  BiocVersion = "3.8",
  SourceType = "csv",
  SourceUrl = "http://www.brainspan.org/api/v2/well_known_file_download/267666525",
  SourceVersion = "Accessed 2017",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "Data Frame",
  DispatchClass = "Rda",
  ResourceName = "rowmeta.rda",
  RDataPath = "brainimageRdata/data/rowmeta.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)
)


## alldev_colmeta
meta <- rbind(meta, data.frame(
  Title = "sample metadata for full development",
  Description = paste0("sample metadata for full development"


  ),
  BiocVersion = "3.8",
  SourceType = "csv",
  SourceUrl = "http://www.brainspan.org/api/v2/well_known_file_download/267666525",
  SourceVersion = "Accessed 2017",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "Data Frame",
  DispatchClass = "Rda",
  ResourceName = "alldev_colMeta.rda",
  RDataPath = "brainimageRdata/data/alldev_colMeta.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)
)


## alldev_scale
meta <- rbind(meta, data.frame(
  Title = "scaled expression for all development",
  Description = paste0("Raw expression data for all development was scaled for comparison across datasets."


  ),
  BiocVersion = "3.8",
  SourceType = "csv",
  SourceUrl = "http://www.brainspan.org/api/v2/well_known_file_download/267666525",
  SourceVersion = "Accessed 2017",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "Data Frame",
  DispatchClass = "Rda",
  ResourceName = "alldev_scale.rda",
  RDataPath = "brainimageRdata/data/alldev_scale.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)
)


## alldev_rowMeta
meta <- rbind(meta, data.frame(
  Title = "Gene level information for all development",
  Description = paste0("Metadata describing gene level information for the all development dataset."


  ),
  BiocVersion = "3.8",
  SourceType = "csv",
  SourceUrl = "http://www.brainspan.org/api/v2/well_known_file_download/267666525",
  SourceVersion = "Accessed 2017",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  DataProvider = "Salk Institute",
  Maintainer = "Sara Linker <slinker@salk.edu>",
  RDataClass = "Data Frame",
  DispatchClass = "Rda",
  ResourceName = "alldev_rowMeta.rda",
  RDataPath = "brainimageRdata/data/alldev_rowMeta.rda",
  Genome = "NA",
  Coordinate_1_based = "FALSE"
)
)


## Not run:
## Write the data out and put in the inst/extdata directory.
write.csv(meta, file="~/Documents/R/packages/brainimageRdata/inst/extdata/metadata.csv", row.names=FALSE)

## Test the validity of metadata.csv with readMetadataCsv():
library(ExperimentHubData)
meta = makeExperimentHubMetadata("~/Documents/R/packages/brainimageRdata/")
