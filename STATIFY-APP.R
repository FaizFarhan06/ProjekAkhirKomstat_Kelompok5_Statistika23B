# Install package jika belum:
# install.packages(c("shiny", "shinydashboard", "ggplot2", "plotly", "DT", "dplyr"))
# install.packages("shinycssloaders")
# install.packages(c("rmarkdown", "knitr", "officer", "flextable"))

library(shinycssloaders)
library(shiny)
library(shinydashboard)
library(ggplot2)
library(plotly)
library(DT)
library(dplyr)

ui <- dashboardPage(
  dashboardHeader(title = tags$div(
    tags$img(src = "logo_statify.png", height = "30px", style = "margin-right:10px;"),
    "STATIFY"
  ))
  ,
  dashboardSidebar(
    sidebarMenu(
      menuItem("Beranda", tabName = "beranda", icon = icon("home")),
      menuItem("Tentang Uji Statistik", tabName = "info", icon = icon("book")),
      menuItem("Upload & Pengaturan", tabName = "upload", icon = icon("cloud-upload-alt")),
      menuItem("Visualisasi", tabName = "visual", icon = icon("chart-line")),
      menuItem("Hasil Uji", tabName = "hasil", icon = icon("balance-scale"))
    )
  ),
  
  dashboardBody(
    tags$audio(src = "intro.mp3", type = "audio/mp3", controls = NA, autoplay = NA, style = "display:none;"),
    tags$head(
      tags$style(HTML("
    /* === LATAR BELAKANG === */
    .content-wrapper, .right-side {
      background-image: url('bg_Rshiny7.jpg');
      background-size: cover;
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-position: center;
    }
    
    .box:hover {
      box-shadow: 0 0 10px rgba(255, 255, 255, 0.5);
      transform: scale(1.02);
      transition: all 0.3s ease-in-out;
    }

    .skin-blue .main-sidebar .sidebar .sidebar-menu .active a {
      background-color: #1e88e5 !important;
      color: white !important;
      font-weight: bold;
    }

    
    /* === FONT PUTIH === */
    body, label, h1, h2, h3, h4, h5, h6, .box, .info-box, .small-box, .content-wrapper, .right-side {
      color: white !important;
      text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.6); 
      font-weight: bold;
      font-family: 'Segoe UI', sans-serif
    }

    /* === TABEL DATA TRANSPARAN === */
    .dataTables_wrapper {
      background-color: rgba(0, 0, 0, 0.3) !important;
      padding: 15px;
      border-radius: 10px;
    }

    table.dataTable {
      background-color: rgba(255, 255, 255, 0.1) !important;
      color: white !important;
    }

    th {
      background-color: rgba(255, 255, 255, 0.2) !important;
      color: white !important;
    }

    /* === TAB AKTIF === */
    .nav-tabs-custom > .nav-tabs > li.active > a {
      background-color: rgba(255, 255, 255, 0.2);
      color: white !important;
      border-color: transparent;
    }

    /* === AREA PLOT === */
    .plotly {
      background-color: rgba(0, 0, 0, 0.15);
      padding: 10px;
      border-radius: 12px;
    }

    /* === HEADER DAN SIDEBAR GELAP === */
    .skin-blue .main-header .logo {
      background-color: #212121;
      color: white;
      font-weight: bold;
    }

    .skin-blue .main-sidebar {
      background-color: #121212;
    }

    .skin-blue .main-header .navbar {
      background-color: #1c1c1c;
    }
  "))
    ),
    tags$footer(
      tags$p("© 2025 STATIFY | Dibuat oleh Kelompok 5", 
             style = "text-align:center; color:white; margin-top:30px; padding:10px;")
    ),
    
    tags$div(
      id = "splash-screen",
      style = "position: fixed; top: 0; left: 0; width: 100%; height: 100%;
           background-color: #121212; color: white; z-index: 9999;
           display: flex; justify-content: center; align-items: center;
           flex-direction: column; font-family: 'Segoe UI', sans-serif;",
      tags$style(HTML("
    @keyframes fadeOut {
      0%   { opacity: 1; }
      100% { opacity: 0; visibility: hidden; }
    }
  ")),
      tags$h1("📊 Selamat Datang di STATIFY", style = "font-size: 36px; text-align: center;"),
      tags$h4("Aplikasi Analisis Uji Nonparametrik", style = "font-weight: normal;"),
      tags$script(HTML("
    setTimeout(function() {
      var splash = document.getElementById('splash-screen');
      splash.style.animation = 'fadeOut 1s forwards';
    }, 2500); // muncul selama 2.5 detik
  "))
    ),