#' {{title}}
#'
#' {{description}}
#'
#' @return FILL THIS FROM COMPONENTS
#' @export
{{fn_name}} <- function({{#has_parameters}}parms = stop("Get these from the spec"){{/has_parameters}}) {
  call_guru_api(path = "{{path}}")
}
