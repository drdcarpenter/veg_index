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

# TODO normalise image?
# where was the reference to this?

# process through indices
sexg <- exg(sonningrgb, 1, 2, 3)
plot(sexg)

sngrdi <- NGRDI(sonningrgb, 1,2,3)
plot(sngrdi)

svari <- VARI(sonningrgb, 1, 2, 3)
plot(svari)

stcvi <- tcvi(sonningrgb, 1, 2, 3)
plot(stcvi)
