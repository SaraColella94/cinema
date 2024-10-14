<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film</title>
<link rel="stylesheet" href="style.css">
</head>
<body class="custom-bg">
<%@ include file="nav.jsp"%>

<div class="container text-center">
<div class="row">

  
  <div class="col-md-4">
  
  <!-- card film -->
	<div class="card card-attore"
	style="border-color:transparent;
	background-color: transparent;
	padding-top: 100px;
	">
	  <img src="locandina.jpg"  height="550" width="358" style="border-radius:15px" class="card-img-top" alt="...">
	  <div class="card-body">
	  </div>
	</div>
	</div> <!-- chiusura colonna 1-->
<br>
  <div style="margin-left: 20px; max-width: 500px; padding-top: 100px;">
      <span style="font-size: 40px; opacity: 0.5; color: white;">DETTAGLI</span>
      <h1 style="color: white;">Avengers: Endgame</h1>
      <div>
        <p style="color: white;">
          L'epica conclusione della Saga dell'Infinito, fenomeno acclamato dalla critica di tutto il mondo,
          in una drammatica resa dei conti che vede gli Avengers contro il cattivo più potente dell'universo, 
          Thanos. Dopo che eventi devastanti hanno spazzato via metà della popolazione mondiale e hanno disperso i loro ranghi,
          gli eroi rimasti lottano per andare avanti, 
          ma dovranno farlo insieme se vorranno ripristinare l'ordine e l'armonia nell'universo e salvare i propri cari.
        </p>
      </div>
      <br>
      <div>
        <span style="font-size: 20px; opacity: 0.5; color: white;">Durata:</span>
        <p style="font-size: 15px; opacity: 0.5; color: white;">3h 5min</p>
        <span style="font-size: 20px; opacity: 0.5; color: white;">Data di uscita:</span>
        <p style="font-size: 15px; opacity: 0.5; color: white;">2019</p>
        <span style="font-size: 20px; opacity: 0.5; color: white;">Genere:</span>
        <p style="font-size: 15px; opacity: 0.5; color: white;">Azione</p>
      </div>
    </div>

  </div>
  <br>
  <span style="font-size: 40px; opacity: 0.5; color: white;">CAST</span>
  <br>
  <br>
  <br>
 <div class="row">
      <div class="col-lg-4">
    <img src="robert.png" class="bd-placeholder-img rounded-circle" width="140" height="140" alt="Robert Downey Jr.">
    <h2 class="fw-normal" style="font-size: 20px; opacity: 0.5; color: white">Robert Downey Jr.</h2>
    <p style="font-size: 15px; opacity: 0.5; color: white">Iron Man</p>
    <p><a class="btn btn-giallo" href="#">Vedi attore</a></p>
</div>
     <div class="col-lg-4">
    <img src="benedict.png" class="bd-placeholder-img rounded-circle" width="140" height="140" alt="Benedict Cumberbatch">
    <h2 class="fw-normal" style="font-size: 20px; opacity: 0.5; color: white">Benedict Cumberbatch</h2>
    <p style="font-size: 15px; opacity: 0.5; color: white">Doctor Strange</p>
    <p><a class="btn btn-giallo" href="#">Vedi attore</a></p>
</div>
</div>
</div>
<br>
<br>
<div class="row" style="padding-left: 200px;">
  <div class="col-lg-4">
    <div class="border rounded" style="background-color: rgb(101, 131, 161); border: none;">
      <div class="p-4" style="background-color: transparent;">
        <h5 class="mb-3" style="color: white;">Lascia una recensione</h5>
        <textarea class="form-control mb-3" rows="3" placeholder="La tua recensione" required
          style="background-color: transparent; color: white; border: 1px solid yellow; placeholder-color: white;"></textarea>
        <div class="form-floating mb-3">
          <button type="submit" class="btn btn-giallo" style="color: black;">INVIA RECENSIONE</button>
        </div>
      </div>
    </div>
  </div>
</div>


</body>
</html>