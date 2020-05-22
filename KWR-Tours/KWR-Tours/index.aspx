<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="projet_voiture.index1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- start banner Area -->
        <section class="banner-area relative" id="home">
            <div class="overlay overlay-bg"></div>
            <div class="container">
                <div class="row fullscreen d-flex align-items-center">
                    <div class="banner-content col-lg-7 col-md-6 ">
                        <h6 class="text-white ">Vous voulez réserver une voiture et vous cherchez une bonne affaire ?</h6>
                        <h1 class="text-white text-uppercase">L'agence KWR Tours est parfaite pour vous	
                        </h1>
                        <p class="pt-20 pb-20 text-white">
                            La Location voiture Marrakech est facile avec notre agence KWR Tours qui vous offre une large gamme de voitures. Organisez votre Location de voitures et votre véhicules vous attendra dès votre arrivée à l’aéroport ou la gare de Marrakech. On vous permet de réserver facilement et rapidement une voiture de votre choix.
                        </p>
                        <a class="primary-btn text-uppercase" href="Paiement.aspx">Louer une voiture maintenant</a>
                    </div>
                    <div class="col-lg-5 col-md-6 header-right">
                        <h4 class="text-white pb-30">Reserver une voiture dés aujourd'hui</h4>
                        <form class="form" role="form" autocomplete="off" runat="server">
                            <div class="form-group">
                                <div class="default-select" id="default-select">
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Selectionner la marque" Selected="True" disabled="distruabled"></asp:ListItem>
                                        <asp:ListItem Text="KIA PICANTO"></asp:ListItem>
                                        <asp:ListItem Text="RENAULT CLIO 4"></asp:ListItem>
                                        <asp:ListItem Text="DACIA DUSTER"></asp:ListItem>
                                        <asp:ListItem Text="PEUGEOT 208"></asp:ListItem>
                                        <asp:ListItem Text="PEUGEOT 301"></asp:ListItem>
                                        <asp:ListItem Text="JEEP NEW CHEROKEE"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-md-6 wrap-left">
                                    <div class="default-select" id="default-select">
                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                            <asp:ListItem Text="Réserver" Selected="True" disabled="distruabled"></asp:ListItem>
                                            <asp:ListItem Text="Une seule voiture"></asp:ListItem>
                                            <asp:ListItem Text="Deux voitures"></asp:ListItem>
                                            <asp:ListItem Text="Trois voitures"></asp:ListItem>
                                            <asp:ListItem Text="Quatre voitures"></asp:ListItem>
                                        </asp:DropDownList>  
                                    </div>
                                </div>
                                <div class="col-md-6 wrap-right">
                                    <div class="input-group dates-wrap">
                                      <asp:TextBox CssClass="dates form-control" ID="datepicker" runat="server" class="dates form-control" placeholder="Date & time" required="required"></asp:TextBox>
                                                <script>
                                           $(function(){
                                               $('.dates').datepicker();
                                           });
                                       </script>
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="lnr lnr-calendar-full"></span></span>
                                        </div>
                                    </div>
                              </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-md-6 wrap-left">
                                    <div class="default-select" id="default-select">
                                        <asp:DropDownList ID="DropDownList3" runat="server">
                                            <asp:ListItem Text="Déposer" Selected="True" disabled="distruabled"></asp:ListItem>
                                            <asp:ListItem Text="Une seule voiture"></asp:ListItem>
                                            <asp:ListItem Text="Deux voitures"></asp:ListItem>
                                            <asp:ListItem Text="Trois voitures"></asp:ListItem>
                                            <asp:ListItem Text="Quatre voitures"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-md-6 wrap-right">
                                    <div class="input-group dates-wrap">
                                        <asp:TextBox CssClass="dates form-control" ID="datepicker2" runat="server" class="dates form-control" placeholder="Date & time" required="required"></asp:TextBox>
                                        <script>
                                           $(function(){
                                               $('.dates').datepicker();
                                           });
                                       </script>   
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="lnr lnr-calendar-full"></span></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="from-group">
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control txt-field" placeholder="Nom Complet" required="required"></asp:TextBox>
                                <asp:TextBox ID="TextBox2" runat="server" class="form-control txt-field" placeholder="Adresse Email" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" required="required"></asp:TextBox>
                                <asp:TextBox ID="TextBox3" runat="server" class="form-control txt-field" placeholder="Numéro de téléphone" required="required"></asp:TextBox>
                                </div>
                            <div class="form-group row">
                                <div class="col-md-12">
                                    <asp:Button ID="Button1" runat="server" Text="Confirmer" class="btn btn-default btn-lg btn-block text-center text-uppercase" OnClick="Button1_Click"  />
                                   </div>
                            </div>
                            <asp:GridView ID="GridView1" runat="server" Visible="false"></asp:GridView>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- End banner Area -->

			<!-- Start feature Area -->
			<main class="container-main">
			<section class="feature-area section-gap" data-aos="zoom-in">
				<div class="container">
					<div class="row d-flex justify-content-center" id="ser">
						<div class="col-md-8 pb-40 header-text">
							<h1>Quels services offrons-nous</h1>
							<p>
								L'agence KWR Tours à votre disposition.
							</p>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4 col-md-6">
							<div class="single-feature">
								<h4><span class="lnr lnr-user"></span>Techniciens Experts</h4>
								<p>
									L’expert automobile évalue, après un accident ou un sinistre, l'état technique et la valeur d'un véhicule à la demande d’une compagnie d’assurances
								</p>
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="single-feature">
								<h4><span class="lnr lnr-license"></span>Service Professionnel</h4>
								<p>
									KWR Tours propose aux particuliers un service de location de voiture clé en main, négocie les meilleurs tarifs auprès des loueurs internationaux et élabore.
								</p>								
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="single-feature">
								<h4><span class="lnr lnr-phone"></span>Grand Soutien</h4>
								<p>
									Même dans les cas où l'indépendance de l'agence est respectée.
									On dispose un grand soutien public et politique.
								</p>								
							</div>
						</div>
						
						<div class="col-lg-4 col-md-6">
							<div class="single-feature">
								<h4><span class="lnr lnr-rocket"></span>Compétences Techniques</h4>
								<p>
									 Tous les employés ont l'expertise nécessaire pour qu'un individu réussisse son travail.
								</p>				
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="single-feature">
								<h4><span class="lnr lnr-diamond"></span>Hautement Recommandé</h4>
								<p>
									Notre agence, KWR Tours est fortement recommandée par tous les clients qui ont déja passés par nous.
								</p>								
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="single-feature">
								<h4><span class="lnr lnr-bubble"></span>Avis positifs</h4>
								<p>
									Consultez les avis des clients de notre agence qui ont acheté, vendu ou loué avec nous. 
								</p>									
							</div>
						</div>						
					</div>
				</div>
			</section>
			<!-- End feature Area -->		

			<!-- Start home-about Area -->
			<section class="home-about-area" id="about" data-aos="fade-right">
				<div class="container-fluid">				
					<div class="row justify-content-center align-items-center">
						<div class="col-lg-6 no-padding home-about-left">
							<img class="img-fluid" src="img/about-img.jpg" alt="">
						</div>
						<div class="col-lg-6 no-padding home-about-right">
							<h1>Chèrs clients,<br>Bienvenue sur notre site web.</h1>
							<p>
								<span>L'agence KWR Tours à votre disposition.</span>
							</p>
							<p>
								L’agence location voiture KWR Tours vous assure l’un des suivi les plus adaptés à vos divers besoins. Avec notre panoplie de services, et notre parc suréquipé, nous vous proposons des véhicules pas cher à la pointe de la technologie, et très puissantes tout en étant économiques, depuis les 4×4 jusqu’aux berlines de grand luxe, en passant par les simples citadines.
							</p>
							<a class="text-uppercase primary-btn" href="#">Plus d'informations</a>
						</div>
					</div>
				</div>	
			</section>
			<!-- End home-about Area -->	

			<!-- Start model Area -->
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
					<div class="active-model-carusel">
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
								<a class="text-uppercase primary-btn" href="#">&nbsp;Réserver CETTE VOITURE&nbsp;</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a class="text-uppercase primary-btn" href="Paiement.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOUER CETTE VOITURE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
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
								<a class="text-uppercase primary-btn" href="#">&nbsp;Réserver CETTE VOITURE&nbsp;</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a class="text-uppercase primary-btn" href="Paiement.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOUER CETTE VOITURE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
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
								<a class="text-uppercase primary-btn" href="#">&nbsp;Réserver CETTE VOITURE&nbsp;</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a class="text-uppercase primary-btn" href="Paiement.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOUER CETTE VOITURE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
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
								<a class="text-uppercase primary-btn" href="#">&nbsp;Réserver CETTE VOITURE&nbsp;</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a class="text-uppercase primary-btn" href="Paiement.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOUER CETTE VOITURE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
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
								<a class="text-uppercase primary-btn" href="#">&nbsp;Réserver CETTE VOITURE&nbsp;</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a class="text-uppercase primary-btn" href="Paiement.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOUER CETTE VOITURE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
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
								<a class="text-uppercase primary-btn" href="#">&nbsp;Réserver CETTE VOITURE&nbsp;</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a class="text-uppercase primary-btn" href="Paiement.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOUER CETTE VOITURE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
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
								<a class="text-uppercase primary-btn" href="#">&nbsp;Réserver CETTE VOITURE&nbsp;</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a class="text-uppercase primary-btn" href="Paiement.aspx">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LOUER CETTE VOITURE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
							</div>
							<div class="col-lg-6 model-right">
								<img class="img-fluid" src="img/Range-rover.png" alt="">
							</div>
						</div>									
					</div>
				</div>	
			</section>
			</main>
			<!-- End model Area -->


			<!-- Start fact Area -->
			<section class="facts-area section-gap">
				<div class="container">
					<div class="row">
						<div class="col single-fact">
							<h1 class="counter">2536</h1>
							<p>Projets Complets</p>
						</div>
						<div class="col single-fact">
							<h1 class="counter">6784</h1>
							<p>Clients Fidèles</p>
						</div>
						<div class="col single-fact">
							<h1 class="counter">1059</h1>
							<p>Tâches Complétées</p>
						</div>
						<div class="col single-fact">
							<h1 class="counter">2239</h1>
							<p>Tasses de Café Prises</p>
						</div>	
						<div class="col single-fact">
							<h1 class="counter">435</h1>
							<p>Professionnels Internes</p>
						</div>												
					</div>
				</div>	
			</section>
			<!-- end fact Area -->							
			

			<!-- Start callaction Area -->
			<section class="callaction-area relative section-gap">
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-10">
							<h1 class="text-white">Contactez nous pour plus d'informations</h1>
							<p>
								Pour plus d'information, n'hésitez pas à nous contacter en utilisant le formulaire de la page de contact! <br>Nous nous ferons un plaisir de vous informer. 
							</p>
							<a class="callaction-btn text-uppercase" href="contact.aspx">REJOINS-NOUS</a>	
						</div>
					</div>
				</div>	
			</section>
    </asp:Content> 