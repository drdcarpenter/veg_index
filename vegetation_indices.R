
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
