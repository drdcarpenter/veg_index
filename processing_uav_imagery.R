library(raster)

sonning <- raster("C:/Users/TVERC/Documents/Battlemead UAV/Sonning/sonning.tif")
plot(sonning)

x <- log(sonning)
plot(x)

require(uavRst)
plotRGB(sonning, 1,2,3)

sonningr <- raster("C:/Users/TVERC/Documents/Battlemead UAV/Sonning/sonning.tif", band = 1)
sonningg <- raster("C:/Users/TVERC/Documents/Battlemead UAV/Sonning/sonning.tif", band = 2)
sonningb <- raster("C:/Users/TVERC/Documents/Battlemead UAV/Sonning/sonning.tif", band = 3)

sonningrgb <- stack(sonningr, sonningg, sonningb)
plotRGB(sonningrgb, 1,2,3)

sexg <- exg(sonningrgb, 1, 2, 3)
plot(sexg)

sngrdi <- NGRDI(sonningrgb, 1,2,3)
plot(sngrdi)

svari <- VARI(sonningrgb, 1, 2, 3)
plot(svari)

stcvi <- tcvi(sonningrgb, 1, 2, 3)
plot(stcvi)
