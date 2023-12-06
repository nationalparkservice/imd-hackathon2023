#https://posit-dev.github.io/r-shinylive/

install.packages("shinylive")

# Copy "Hello World" from `{shiny}`
system.file("examples", "01_hello", package="shiny") |>
  fs::dir_copy("myapp", overwrite = TRUE)

shinylive::export("myapp", "site")

httpuv::runStaticServer("site/")