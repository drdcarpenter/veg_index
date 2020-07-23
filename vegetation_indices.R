
exg <- function(img, i, j, k) {
  bi <- img[[i]]
  bj <- img[[j]]
  bk <- img[[k]]
  vi <- (2*bj-bi-bk) / (bj + bk + bi)
  return(vi)
}

NGRDI <- function(img, i, j, k) {
  bi <- img[[i]]
  bj <- img[[j]]
  bk <- img[[k]]
  vi <- (bj-bi) / (bj + bi)
  return(vi)
}

VARI <- function(img, i, j, k){
  bi <- img[[i]]
  bj <- img[[j]]
  bk <- img[[k]]
  vi <- (bj - bi) / (bj + bi - bk)
  return(vi)
}

tcvi <- function(img, i, j, k){
  bi <- img[[i]]
  bj <- img[[j]]
  bk <- img[[k]]
  vi <- 1.4 * (2*bi - 2*bk)/(2*bi - bj - 2*bk + 255 * 0.4)
  return(vi)
}


normalise_rgb <- function(img, i, j, k) {
  r <- img[[i]]
  g <- img[[j]]
  b <- img[[k]]
  r <- r/(r + g + b)
  g <- g/(r + g + b)
  g <- b/(r + g + b)
  img <- raster::stack(r, g, b)
  return(img)
}
