# source("chooser.R")
swiperButton <- function(inputId, value = 0) {
  tagList(
      singleton(tags$head(
        tags$script(src="touchSwipe.js"),
        tags$script(src="shinySwiper.js")
      )),
    tags$button(id = inputId,
                class = "swiper btn-default",
                type = "button",
                as.character(value))
  )
}

fluidPage(
  swiperButton("myswiper"),
  verbatimTextOutput("selection")
)
