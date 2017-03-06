#' @export
runShiny <- function() {
  appDir <- system.file("shiny-examples", "myapp", package = "complexity")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `complexity`.", call. = FALSE)
  }

  shiny::runApp(appDir, display.mode = "normal")
}

