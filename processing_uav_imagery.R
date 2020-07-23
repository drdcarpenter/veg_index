library(raster)

sonning <- raster("sonning.tif")
plot(sonning)

x <- log(sonning)
plot(x)

# read in each band separately and then combine into rgb stack
sonningr <- raster("sonning.tif", band = 1)
sonningg <- raster("sonning.tif", band = 2)
sonningb <- raster("sonning.tif", band = 3)

sonningrgb <- stack(sonningr, sonningg, sonningb)
plotRGB(sonningrgb, 1,2,3)

# process through indices
sexg <- exg(sonningrgb, 1, 2, 3)
plot(sexg)

sngrdi <- NGRDI(sonningrgb, 1,2,3)
plot(sngrdi)

svari <- VARI(sonningrgb, 1, 2, 3)
plot(svari)

stcvi <- tcvi(sonningrgb, 1, 2, 3)
plot(stcvi)

# normalise image
sonningn <- normalise_rgb(sonningrgb, 1, 2, 3)

# indices with normalised images
nexg <- exg(sonningn, 1, 2, 3)
plot(nexg)

nngrdi <- NGRDI(sonningn, 1, 2, 3)
plot(nngrdi)

nvari <- VARI(sonningn, 1, 2, 3)
plot(nvari)

ntcvi <- tcvi(sonningn, 1, 2, 3)
plot(ntcvi)