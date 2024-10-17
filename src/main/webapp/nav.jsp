<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="it.generationitaly.cinema.entity.Utente" %>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>nav</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet" 
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
          crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<nav class="navbar fixed-top navbar-expand-lg mb-5" style="background-color: rgb(101, 131, 161); box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);">
    <div class="container-fluid">
        <a class="navbar-brand" href="homeServlet">
            <img src="./img-ref/logo-popcorn.png" alt="Bootstrap" width="164.36" height="66">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item" style="padding-top: 20px">
                    <a class="nav-link active" aria-current="page" href="elencoRecensioni">Community</a>
                </li>
                <li class="nav-item" style="padding-top: 20px">
                <!-- Inserito collegamento a fil.jsp -->
                    <a class="nav-link" href="ricercaFilmPerAnno?anno=2024">Novità</a>
                </li>
                <li class="nav-item" style="padding-top: 20px">
                    <a class="nav-link" href="elencoCategoria">Generi</a>
                </li>
                 <li class="nav-item">
                    <a class="navbar-brand" href="ricercaPerCategoria?idCategoria=5">
            <img src="./img-ref/paghallo.png" alt="Bootstrap" width="100" height="70">
        </a>
                </li>
            </ul>

           <form class="d-flex align-items-center" action="ricercaFilmEAttoreServlet" method="get" role="search" style="margin-bottom: 0; padding-left: 300px;">
                 <input class="form-control me-2" type="search" placeholder="Cerca" aria-label="Search" name="ricerca" style="border-radius: 20px; height: 38px;">
                 <button class="btn btn-sm btn-giallo" type="submit" style="height: 38px; margin-left: 5px;">Cerca</button>
              </form>

           <% if (session.getAttribute("username") == null) { %>
             <a href="./login.jsp" class="btn btn-sm btn-giallo" style="margin-left: 10px; height: 38px;display: flex; justify-content: center; align-items: center;">Accedi</a>
             <a href="./registrazione.jsp" class="btn btn-sm btn-nero" type="button" style="margin-left: 10px; height: 38pxdisplay: flex; justify-content: center; align-items: center;;">Registrati</a>
     <% } else { %>
       <% Utente utente = (Utente)session.getAttribute("utente"); %>
    <span class="fw-bold" style="color: white; padding-left: 20px;">
        <a class="text-warning text-decoration-none" href="utenteServlet?id=<%= utente.getId() %>"><%= session.getAttribute("username") %></a>
    </span>
    <form class="d-flex" action="logout" method="post" style="margin-left: 10px;">
        <button class="btn btn-giallo" type="submit" style="height: 38px;">LOGOUT</button>
         </form>
      <% } %>
           
        </div>
    </div>
</nav>
