# This will probably move to nectar.

.add_class <- function(x, new_class) {
  class(x) <- c(new_class, class(x))
  return(x)
}

.tibblify <- function(x, spec, class_name) {
  .add_class(tibblify::tibblify(x, spec = spec), class_name)
}
