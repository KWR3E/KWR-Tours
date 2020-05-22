<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EspaceAdmin.aspx.cs" Inherits="projet_voiture.EspaceAdmin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Espace Admin</title>
<link rel="icon" type="image/png" href="img/Icon.png" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="EspaceAdmin.css" type="text/css" rel="stylesheet" />
</head>
<body>
<main>
  <h1>
    Bonjour!
    <span> Bienvenue sur votre espace admin.  </span>
  </h1>
  <input type="checkbox" id="myInput">
  <label for="myInput">
      <span class="bar top"></span>
      <span class="bar middle"></span>
      <span class="bar bottom"></span>
    </label>
  <aside>
    <div class="aside-section aside-left">
      <div class="aside-content">
        <p> Si vous voulez vous déconnecter, cliquer ici!</p>
          <a href="login.aspx" class="button">LOGOUT</a>
      </div>
    </div>
    <div class="aside-section aside-right">
      <ul class="aside-list">
        <li><a href="UpdateVoiture.aspx" class="aside-anchor">Voiture</a></li>
        <li><a href="Reservation.aspx" class="aside-anchor">Réservation</a></li>
        <li><a href="Location.aspx" class="aside-anchor">Location</a></li>
        <li><a href="UpdateContact.aspx" class="aside-anchor">Contact</a></li>
      </ul>
    </div>
  </aside>
</main>

</body>
</html>