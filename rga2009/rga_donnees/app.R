# application pour affichage

library(shiny)
library(shinydashboard)
library(DT)

# Define UI for application that draws a histogram
ui <- dashboardPage(
header <- dashboardHeader(title = "RGA"),
sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Présentation", tabName = "dashboard", icon = icon("dashboard")),
    menuItem("Cultures", tabName = "cultures", icon = icon("tree"),
             menuSubItem("Cultures annuelles et pérennes", tabName = "perenne", icon = icon("dashboard")),
             menuSubItem("Noix et graines oléagineuses", tabName = "noix", icon = icon("dashboard")),
             menuSubItem("Arbres", tabName = "arbres", icon = icon("dashboard")),
             menuSubItem("Jachères", tabName = "jachere", icon = icon("dashboard")),
             menuSubItem("Terrain incultes", tabName = "inculte", icon = icon("dashboard"))),
    
    menuItem("Animaux d’élevage", tabName = "animaux", icon = icon("th"))
  )
  
),
body <- dashboardBody(
  tabItems(
    #premier élément
    tabItem(tabName = "dashboard"),
    tabItem(tabName = "cultures",
         tabItem(tabName = "perenne",
         
              mainPanel(
                tabsetPanel(
                  
                  # Application title
                  tabPanel("Céréales",
                           sidebarLayout(
                             sidebarPanel(),
                             mainPanel())),
                  tabPanel("Racines et tubercules"),
                  tabPanel("Cultures potagères"),
                  tabPanel("Céréales"),
                  tabPanel("Céréales"),
                  tabPanel("Céréales"),
                  tabPanel("Céréales"),
                  tabPanel("Céréales"),
                  tabPanel("Céréales"),
                  tabPanel("Céréales"),
                  tabPanel("Céréales"),
                  tabPanel("Céréales"),
                  tabPanel("Céréales"),
                  tabPanel("Céréales"),
                  tabPanel("Céréales"),
                  tabPanel("Céréales"),
                  tabPanel("Céréales"),
                  tabPanel("Céréales"),
                  tabPanel("Céréales"),
                  tabPanel("Céréales")
                )))),
    tabItem(tabName = "animaux")
  )
)  
)
#dashboardPage(header, sidebar, body)
# Define server logic required to draw a histogram
server <- function(input, output) { }

# Run the application 
shinyApp(ui = ui, server = server)

