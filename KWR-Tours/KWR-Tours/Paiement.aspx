<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Paiement.aspx.cs" Inherits="projet_voiture.Paiement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script>
		function valider()
		{
			if(document.getElementById('nom').value == "" || !/^[A-Z][a-z]+[ ][a-z]+$/.test(nom.value))
			{
				alert("Le champ nom est vide ou incorrect");
			}
			else if(document.getElementById('adresse').value == "")
			{
				alert("Le champ adresse est vide");
			}
			else if(!/^[0-9]{9}$/.test(tel.value))
			{
				alert("Le numéro de téléphone doit contenir 9 chiffres");
			}
			else if(document.getElementById('date_op').value == "" )
			{
				alert("Le champ date operation est vide");
			}
			else if(document.getElementById('type_payement1').checked && email.value.indexOf('@')==-1)
			{
				alert("L'email est incorrect");
			}
			else if(document.getElementById('type_payement1').checked && document.getElementById('password').value=="")
			{
				alert("Le champ password est vide");
			}
			else if(document.getElementById('type_payement2').checked && !/^[0-9]{16}$/.test(num_carte.value))
			{
				alert("le champs numero de carte doit contenir  16 chiffres");
			}
			else if(document.getElementById('type_payement2').checked && !/^[0-9]{3}$/.test(code_verif.value))
			{
				alert("le champs code doit contenir 3 chiffres");
			}
			
		}
        </script>
    
    <!--CSS-->
                        <style>
                                #exp{
                            width:50px;
                        }
                        #type_carte{
                            width:112px;
                        }
                        #Button1,#Button2{
                            width:275px;
                            height:40px;
                            background-color:blue;
                            color:white;
                            border-radius: 10px;
                            text-align: center;
                            margin-left: 30px;
                        }
                        #carte_bancaire{
                            display: none;
                        }
                        #principal{
                            width: 700px;
                            border: solid 2px white;
                            border-radius: 10px;
                            padding: 30px;
                            margin: 20px;
                            background-color: white;
                        }
                        legend{
                            border-radius: 5px;
                            background-color:#fab700;
                            color : white;
                            font-size : 24px;
                            padding: 12px;
                            padding-left:20px;
                            padding-right:20px;
                            text-align: center;
                        }
                            select, option {
                                width: 300px; 
                                text-align-last:center;
                            }
                                </style>
    <!-- start banner Area -->
			<section class="banner-area relative" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Paiment en ligne				
							</h1>	
							<p class="text-white link-nav"><a href="index.aspx">Acceuil </a>  <span class="lnr lnr-arrow-right"></span>  <a href="elements.aspx"> Paiement en ligne</a></p>
						</div>											
					</div>
				</div>
			</section>
			<!-- End banner Area -->
			<section class="model-area section-gap" id="cars" data-aos="fade-left">
				<div class="container">
					<div class="row d-flex justify-content-center pb-40">
						<div class="col-md-8 pb-40 header-text" id="voitures">
							<h1 class="text-center pb-10">Veuillez choisir la voiture qui correspondent le mieux à vos besoins.</h1>
							<p class="text-center">
								Qui sont extrêmement respectueux au système écologique.
							</p>
						</div>
					</div>				
					<div class="active-model-carusel" data-aos="fade-left">
						<div class="row align-items-center single-model item">
							<div class="col-lg-6 model-left">
								<div class="title justify-content-between d-flex">
									<h4 class="mt-20">KIA PICANTO</h4>
									<h2>300DH<span>/jour</span></h2>
								</div>
								<p>
									Découvrez la nouvelle Kia Picanto compacte, sportive et élégante, adossée au meilleur programme de garantie du secteur.
								</p>
								<p>
                                        A/C<br>
                                        2× Quantité de baggage<br>
                                        4× Personnes<br>
                                        Essence
								</p>
								<a class="text-uppercase primary-btn" href="#idunno">&nbsp;LOUER CETTE VOITURE&nbsp;</a>
							</div>
							<div class="col-lg-6 model-right">
								<img class="img-fluid" src="img/car.jpg" alt="">
							</div>
						</div>
						<div class="row align-items-center single-model item">
							<div class="col-lg-6 model-left">
								<div class="title justify-content-between d-flex">
									<h4 class="mt-20">RENAULT CLIO 4</h4>
									<h2>400DH<span>/jour</span></h2>
								</div>
								<p>
									Découvrez la nouvelle RENAULT CLIO 4 compacte, sportive et élégante, adossée au meilleur programme de garantie du secteur.
								</p>
								<p>
									A/C<br>
                                    2× Quantité de baggage<br>
                                    5× Personnes<br>
                                    Diesel
								</p>
								<a class="text-uppercase primary-btn" href="#idunno">&nbsp;LOUER CETTE VOITURE&nbsp;</a>
							</div>
							<div class="col-lg-6 model-right">
								<img class="img-fluid" src="img/CLIO-4.png" alt="">
							</div>
						</div>
						<div class="row align-items-center single-model item">
							<div class="col-lg-6 model-left">
								<div class="title justify-content-between d-flex">
									<h4 class="mt-20">DACIA DUSTER</h4>
									<h2>500DH<span>/jour</span></h2>
								</div>
								<p>
									Découvrez la nouvelle DACIA DUSTER compacte, sportive et élégante, adossée au meilleur programme de garantie du secteur.
								</p>
								<p>
									A/C<br>
                                    2× Quantité de baggage<br>
                                    5× Personnes<br>
                                    Diesel
								</p>
								<a class="text-uppercase primary-btn" href="#idunno">&nbsp;LOUER CETTE VOITURE&nbsp;</a>
							</div>
							<div class="col-lg-6 model-right">
								<img class="img-fluid" src="img/Dacia-duster.png" alt="">
							</div>
						</div>
						<div class="row align-items-center single-model item">
							<div class="col-lg-6 model-left">
								<div class="title justify-content-between d-flex">
									<h4 class="mt-20">PEUGEOT 208</h4>
									<h2>400DH<span>/jour</span></h2>
								</div>
								<p>
									Découvrez la nouvelle PEUGEOT 208 compacte, sportive et élégante, adossée au meilleur programme de garantie du secteur.
								</p>
								<p>
									A/C<br>
                                    2× Quantité de baggage<br>
                                    5× Personnes<br>
                                    Diesel
								</p>
								<a class="text-uppercase primary-btn" href="#idunno">&nbsp;LOUER CETTE VOITURE&nbsp;</a>
							</div>
							<div class="col-lg-6 model-right">
								<img class="img-fluid" src="img/Peujeot208.png" alt="">
							</div>
						</div>		
						<div class="row align-items-center single-model item">
							<div class="col-lg-6 model-left">
								<div class="title justify-content-between d-flex">
									<h4 class="mt-20">PEUGEOT 301</h4>
									<h2>400DH<span>/jour</span></h2>
								</div>
								<p>
									Découvrez la nouvelle PEUGEOT 301 compacte, sportive et élégante, adossée au meilleur programme de garantie du secteur.
								</p>
								<p>
									A/C<br>
                                    2× Quantité de baggage<br>
                                    5× Personnes<br>
                                    Diesel
								</p>
								<a class="text-uppercase primary-btn" href="#idunno">&nbsp;LOUER CETTE VOITURE&nbsp;</a>
							</div>
							<div class="col-lg-6 model-right">
								<img class="img-fluid" src="img/Peujeot301.png" alt="">
							</div>
						</div>	
						<div class="row align-items-center single-model item">
							<div class="col-lg-6 model-left">
								<div class="title justify-content-between d-flex">
									<h4 class="mt-20">JEEP NEW CHEROKEE</h4>
									<h2>1100DH<span>/jour</span></h2>
								</div>
								<p>
									Découvrez la nouvelle JEEP NEW CHEROKEE compacte, sportive et élégante, adossée au meilleur programme de garantie du secteur.
								</p>
								<p>
									A/C<br>
                                    2× Quantité de baggage<br>
                                    5× Personnes<br>
                                    Diesel
								</p>
								<a class="text-uppercase primary-btn" href="#idunno">&nbsp;LOUER CETTE VOITURE&nbsp;</a>
							</div>
							<div class="col-lg-6 model-right">
								<img class="img-fluid" src="img/JEEP.png" alt="">
							</div>
						</div>	
						<div class="row align-items-center single-model item">
							<div class="col-lg-6 model-left">
								<div class="title justify-content-between d-flex">
									<h4 class="mt-20">RANGE ROVER SPORT</h4>
									<h2>3000DH<span>/jour</span></h2>
								</div>
								<p>
									Découvrez la nouvelle RANGE ROVER SPORT compacte, sportive et élégante, adossée au meilleur programme de garantie du secteur.
								</p>
								<p>
									A/C<br>
                                    2× Quantité de baggage<br>
                                    5× Personnes<br>
                                    Diesel
								</p>
								<a class="text-uppercase primary-btn" href="#idunno">&nbsp;LOUER CETTE VOITURE&nbsp;</a>
							</div>
							<div class="col-lg-6 model-right">
								<img class="img-fluid" src="img/Range-rover.png" alt="">
							</div>
						</div>									
					</div>
				</div>	
			</section>
			<!-- End model Area -->
    <!--FORM PAIEMENT-->
         <div id="idunno">
           <section class="fields"> 					
           <div class="row justify-content-center" data-aos="zoom-in">
            <fieldset name="principal" id="principal">
                    <legend>Informations de payement</legend>
                        <form name="form_payement" runat="server">
                        <div>
                           <div id="marque">
                              <label>Veuillez entrer une Marque &nbsp;&nbsp;&nbsp;:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:DropDownList ID="DropDownList1" runat="server">
                               <asp:ListItem Selected="True" disabled="distruabled" value="" Text="SELECTIONNER UNE MARQUE"></asp:ListItem>
                               <asp:ListItem  value="1" Text="KIA PICANTO"></asp:ListItem>
                               <asp:ListItem  value="1" Text="RENAULT CLIO 4"></asp:ListItem>
                               <asp:ListItem  value="1" Text="DACIA DUSTER"></asp:ListItem>
                               <asp:ListItem  value="1" Text="PEUGEOT 208"></asp:ListItem>
                               <asp:ListItem  value="1" Text="PEUGEOT 301"></asp:ListItem>
                               <asp:ListItem  value="1" Text="JEEP NEW CHEROKEE"></asp:ListItem>
                           </asp:DropDownList>
                           </div><br>
                            <label>Nom et prenom client&nbsp;&nbsp;&nbsp;:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox id='nom' runat="server" size="53.5" placeholder="Veuillez saisir votre nom complet" Style="text-indent: 10px;"></asp:TextBox><br><br>
                            <label>Votre adresse&nbsp;&nbsp;&nbsp;:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox id='adresse' size="61" runat="server" placeholder="Veuillez saisir votre adresse" Style="text-indent: 10px;"></asp:TextBox><br><br>
                            <label>Téléphone &nbsp;: </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="tel" runat="server" placeholder="Numéro de téléphone" Style="text-indent: 10px;"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;                       
                            <label>Date d'operation&nbsp;&nbsp;&nbsp;:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="date" runat="server" Width="160px" CssClass="datepicker" Style="text-indent: 10px;" placeholder="Date"></asp:TextBox>
                               <script>
                                   $(function(){
                                       $('.datepicker').datepicker();
                                   });
                               </script>
                            <br><br>
                            <label>Type de payement&nbsp;&nbsp;:&nbsp;&nbsp;</label>
                            <asp:RadioButton runat="server" GroupName='type_payement' id='type_payement1' checked="true" value="1" onclick="document.getElementById('carte_bancaire').style.display='none';document.getElementById('paypal').style.display='block';" />&nbsp;Paypal&nbsp;<img src="img/paypal.jpg" width="30px"/>
                            <asp:RadioButton runat="server" GroupName='type_payement' id='type_payement2' value="2" onclick="document.getElementById('paypal').style.display='none';document.getElementById('carte_bancaire').style.display='block';" />&nbsp;Par carte bancaire&nbsp;<img src="img/visa.jpg" width="40px" />&nbsp;<img src="img/mastercard.png" width="40px" /><br><br>
                        </div>
                        <div id="paypal">
                            <label>Email&nbsp;&nbsp;:</label>&nbsp;&nbsp;<asp:TextBox runat="server" id='email' size="61" placeholder="Veuillez saisir votre adresse Email" Style="text-indent: 10px;"></asp:TextBox><br><br>
                            <label>Mot de passe&nbsp;&nbsp;:</label>&nbsp;&nbsp;<asp:TextBox TextMode="Password" runat="server" id='password' placeholder="Veuillez saisir votre mot de passe" Width="412" Style="text-indent: 10px;"></asp:TextBox><br><br>
                        </div>
                        <div id="carte_bancaire" >
                            <label>Type de carte &nbsp;&nbsp;:&nbsp;&nbsp;</label>
                            <asp:DropDownList name='type_carte' id='type_carte' runat="server">
                                <asp:ListItem value="1" Text="Visa"></asp:ListItem>
                                <asp:ListItem value="1" Text="MasterCard"></asp:ListItem>
                            </asp:DropDownList>
                            <br><br>
                            <label>Numéro de carte&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;</label><asp:TextBox runat="server" id='num_carte' placeholder="Veuillez saisir votre numéro de carte" Width="276" Style="text-indent: 5px;"></asp:TextBox><br><br>
                            <label>Expiration fin&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                            <asp:TextBox runat="server" type="number" name='mois' id='exp1' min=1 max=12 value="1" Width="40"></asp:TextBox>
                            <asp:TextBox runat="server" type="number" name='annee' id='exp' value="2020" Width="60"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <label>Code verification&nbsp;&nbsp;:&nbsp;&nbsp;</label><asp:TextBox runat="server" type="text" id='code_verif' Width="185" placeholder="Veuillez saisir votre code" Style="text-indent: 5px;"></asp:TextBox><br><br>    
                        </div>
                        <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red" Style="margin-left:170px;" Visible="false"></asp:Label>
                        <asp:Label ID="lblSuccesMessage" runat="server" Text="" ForeColor="Green" Style="text-align:center;display:block;" Visible="false"></asp:Label>
                        <div style="padding-top:5px;">
                            <asp:Button ID="Button1" runat="server" Text="Effacer" 
                            style="width:275px;
                            height:40px;
                            background-color:blue;
                            color:white;
                            border-radius: 10px;
                            text-align: center;
                            margin-left: 30px;" OnClick="Button1_Click1"/>
                            <asp:Button ID="Button2" runat="server" Text="Valider"
                            style="width:275px;
                            height:40px;
                            background-color:blue;
                            color:white;
                            border-radius: 10px;
                            text-align: center;
                            margin-left: 30px;" OnClick="Button2_Click1"/>
                        </div>
                        <asp:GridView ID="GridView1" runat="server" Visible="false"></asp:GridView>
                    </form>
                    </fieldset>
               </div>
                    </section>
                    </div>
</asp:Content>
