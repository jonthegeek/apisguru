.stabilize_chr_scalar_non_empty <- function(x,
                                            arg = rlang::caller_arg(x),
                                            call = rlang::caller_env()) {
  stbl::stabilize_chr_scalar(
    x,
    allow_null = FALSE,
    allow_zero_length = FALSE,
    allow_na = FALSE,
    x_arg = arg,
    call = call
  )
}

.validate_provider <- function(provider, call = rlang::caller_env()) {
  .stabilize_chr_scalar_non_empty(provider, call = call)
}

.validate_api <- function(api, call = rlang::caller_env()) {
  .stabilize_chr_scalar_non_empty(api, call = call)
}
