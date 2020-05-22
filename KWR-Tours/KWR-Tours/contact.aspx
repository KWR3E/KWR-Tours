<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="projet_voiture.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- start banner Area -->
			<section class="banner-area relative" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Contactez-nous
							</h1>	
							<p class="text-white link-nav"><a href="index.aspx">Acceuil </a>  <span class="lnr lnr-arrow-right"></span>  <a href="contact.aspx"> Contact</a></p>
						</div>											
					</div>
				</div>
			</section>
			<!-- End banner Area -->	

			<!-- Start contact-page Area -->
            <section class="contact-page-area section-gap">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 d-flex flex-column address-wrap" style="left: 0px; top: 0px">
                            <div class="single-contact-address d-flex flex-row">
                                <div class="icon">
                                    <span class="lnr lnr-home"></span>
                                </div>
                                <div class="contact-details">
                                    <h5>Avenue Mohammadia,</h5>
                                    <p>Marrakech-Tensift-Al Haouz, 40150</p>
                                </div>
                            </div>
                            <div class="single-contact-address d-flex flex-row">
                                <div class="icon">
                                    <span class="lnr lnr-phone-handset"></span>
                                </div>
                                <div class="contact-details">
                                    <h5>+212 5 24 34 50 57</h5>
                                    <p>Lundi - Samedi, Ouvre à 08:00</p>
                                </div>
                            </div>
                            <div class="single-contact-address d-flex flex-row">
                                <div class="icon">
                                    <span class="lnr lnr-envelope"></span>
                                </div>
                                <div class="contact-details">
                                    <h5>KWR-Tours@gmail.com</h5>
                                    <p>Nous sommes toujours à votre service.</p>
                                </div>
                            </div>
                        </div>
                            <div class="col-lg-8">
                            <form runat="server" class="form-area">
                                <div  class="contact-form text-right">
                                <div class="row">
                                    <div class="col-lg-6 form-group">
                                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Entrer votre nom" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Entrer votre nom'" class="common-input mb-20 form-control" required="required"></asp:TextBox>
                                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Entrer votre adresse email" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Entrer votre adresse email'" class="common-input mb-20 form-control" AutoCompleteType="Email" Font-Size="Small" required="required"></asp:TextBox>
                                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Entrer l'objet de votre message" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Entrer l'objet de votre message'" class="common-input mb-20 form-control" required="required"></asp:TextBox>
                                        <div class="mt-20 alert-msg" style="text-align: left;"></div>
                                    </div>
                                    <div class="col-lg-6 form-group">
                                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" class="common-textarea form-control" placeholder="Message" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Messege'" required="required"></asp:TextBox>
                                        <asp:Button ID="Button1" runat="server" Text="Envoyer un message" Width="350" class="primary-btn mt-20 text-white" Style="float: right;padding-top: 5px;padding-right: 5px;padding-bottom: 5px;padding-left: 5px;" OnClick="Button1_Click"  />
                                    </div>
                                </div>
                               </div>
                            </form>
                        </div>
                                    <br />
                                    <asp:GridView ID="GridView1" runat="server" Visible="False">
                                    </asp:GridView>
                        <div style="margin-top: 70px" data-aos="zoom-in">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3397.433960532065!2d-8.049218585366402!3d31.621966549283275!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdafe934d23cf64f%3A0x6d002ebf12a6a0ec!2sInstitut%20Sup%C3%A9rieur%20de%20Gestion%20et%20d&#39;Informatique!5e0!3m2!1sfr!2sma!4v1586542507332!5m2!1sfr!2sma" width="1150" height="450" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                        </div>
                        </div>
                        </div>
                </section>
            <!-- End contact-page Area -->
</asp:Content>