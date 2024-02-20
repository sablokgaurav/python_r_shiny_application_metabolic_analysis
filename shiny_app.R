#! /usr/bin/R
# Universitat Potsdam
# Author Gaurav Sablok
# date: 2024-2-16
# a shiny application for the analysis of the metabolic 
# mappings following the genome annotations
# You can also pass the csv file or the text file 
# containing the metabolic mappings. 

library(shiny)
library(ggkegg)
# Define UI for application that draws a histogram
ui <- fluidPage(
    # Application title
    titlePanel("metabolic analysis upload file"),
    sidebarLayout(
        sidebarPanel(
           fileInput("file", "please upload a csv file", 
                     multiple = FALSE,
                     accept = c("text/csv")),
           checkboxInput("header", "Header", TRUE), 
           radioButtons("sep", "separator", 
                        choices = c(tab="\t", comma=",")),
        mainPanel(
           tableOutput("table")
        )
      )
  )
) 
