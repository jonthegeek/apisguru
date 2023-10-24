# This will probably move to nectar.

.add_class <- function(x, new_class) {
  class(x) <- c(new_class, class(x))
  return(x)
}
