
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
library(shinydashboard)
library(shiny)


dashboardPage(
  dashboardHeader(title = "RGA"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Présentation", tabName = "dashboard", icon = icon("dashboard")),
      menuItem("Cultures", tabName = "cultures", icon = icon("tree")),
             
      menuItem("Animaux d’élevage", tabName = "animaux", icon = icon("th"))
    )
  
  ),
  dashboardBody(
    tabItems(
      #premier élément
      tabItem(tabName = "dashboard"),
      tabItem(tabName = "cultures",
        

        (
        mainPanel(
           tabsetPanel(
  
  # Application title
  tabPanel("Céréales",
           # Sidebar avec radio pour choisir le type de carte 
           sidebarLayout(
             sidebarPanel(
               selectInput("culture", label = h4("Choississez la culture qui vous intéresse"),
                           choices = c("Riz" = "c1",
                                       "Maïs" = "c2"), selected = "c1"),
               radioButtons("type_carte", label = h4("Choix de la carte à afficher"),
                            choices = list ("Densité" = "_pc_sau", "Nombre de carreaux" = "_pc_util", "% de la Section" = "_tot_car" )),
               
               downloadButton('telechargement', 'Téléchargement des données')),
             
             
             # Show a plot of the generated distribution
             mainPanel(
               imageOutput("monimage"),
               dataTableOutput("tableau")
             )
           )),
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
  tabPanel("Céréales"),
  navbarMenu("Végétation",
     tabPanel("Cultures",

  # Sidebar avec radio pour choisir le type de carte 
  sidebarLayout(
    sidebarPanel(
      radioButtons("type_carte", label = h4("Choix de la carte à afficher"),
                 choices = list ("Densité" = "_pc_sau", "Nombre de carreaux" = "_pc_util", "% de la Section" = "_tot_car" )),
      selectInput("culture", label = h4("Choississez la culture qui vous intéresse"),
                  choices = c("Poivrier" = "c80",
                  "Mabi" = "c77"), selected = "c80"),
      downloadButton('telechargement', 'Téléchargement des données')),
    

    # Show a plot of the generated distribution
    mainPanel(
      imageOutput("monimage"),
      dataTableOutput("tableau")
    )
  )
    ),
  tabPanel("Cultu", windowTitle = "RGA"
  )
           )
  
)
)
)
),
tabItem(tabName = "animaux")

)
)
)


