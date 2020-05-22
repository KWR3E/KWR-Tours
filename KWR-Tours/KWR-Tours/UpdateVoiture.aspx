<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateVoiture.aspx.cs" Inherits="projet_voiture.UpdateVoiture" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>
<html lang="zxx" class="no-js" runat="server">
<head runat="server">
    <title>Espace Admin</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="UpdateVoiture.css" type="text/css" />
<link rel="icon" type="image/png" href="img/Icon.png" />
<!-- Mobile Specific Meta -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    </head>
		<body>
            <form id="form1" runat="server">
            <asp:HiddenField ID="hfVoitureID" runat="server" />
                <a href="EspaceAdmin.aspx" class="close"></a>
                    <style>
                        .close {
                              position: absolute;
                              right: 32px;
                              top: 32px;
                              width: 32px;
                              height: 32px;
                              opacity: 0.5;
                            }
                            .close:hover {
                              opacity: 1;
                            }
                            .close:before, .close:after {
                              position: absolute;
                              left: 15px;
                              content: ' ';
                              height: 33px;
                              width: 2px;
                              background-color: #333;
                            }
                            .close:before {
                              transform: rotate(45deg);
                            }
                            .close:after {
                              transform: rotate(-45deg);
                            }

                    </style>
                    <div class="centerform">
                        <style>
                            .header {
                                background-color: #04091e;
                            }
                            .mydatagrid a:hover /** FOR THE PAGING ICONS HOVER STYLES**/ {
                                background-color: #04091e;
                            }
                            .centerform{
                                margin-left:70px;
                            }
                            body{
                                background: #04091e;
                            }
                            #table1{
                                margin-left:620px;
                                margin-top: 20px;
                                margin-right: 30px;
                            }
                            .wrap-login100 {
                                    width: 1120px;
                                    background: white;
                                    border-radius: 10px;
                                    padding: 40px;
                                    margin-top: 90px;
                                    margin-bottom: 40px;
                                }
                            .button{
                                background-color: #fab700;
                                color:white;
                                height:30px;
                                border:0px;
                            }
                            .button:hover{
                                background: #04091e;
                            }
                            @media screen and (min-height: 760px) {
                              .wrap-login100 {
                                    margin-top: 150px;
                                }
                            }
                        </style>
                        <div id="centerTxt" class="wrap-login100">
                        <div id="UpdatePicture">
                            <asp:Image ID="Image1" runat="server" ImageUrl="Pics/UpdateVoiture.png" Style=" float: left;margin-left: 80px;"/>
                        </div>
                        <table id="table1">
                            <tr>
                            <td colspan="2">
                        <asp:Label Font-Names="Montserrat-Bold" class="colorlabel" ID="NumMatricule" runat="server" Text="Num Matricule :" Font-Bold="False"></asp:Label>&nbsp;&nbsp;
                        <asp:TextBox placeholder="Veuillez saisir le numero de matricule" class="designTxt" ID="txtNumMatricule" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                        
                        <asp:Label class="colorlabel" ID="Marque" runat="server" Text="Marque :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox placeholder="Veuillez saisir la marque" class="designTxt" ID="txtMarque" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                        
                        <asp:Label class="colorlabel" ID="Modele" runat="server" Text="Modele :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox placeholder="Veuillez saisir le modéle" class="designTxt" ID="txtModele" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                        
                        <asp:Label class="colorlabel" ID="NombrePlaces" runat="server" Text="Nombre places :"></asp:Label>&nbsp;&nbsp;
                        <asp:TextBox placeholder="Veuillez saisir le nombres des places" class="designTxt" ID="txtNombrePlaces" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                        
                        <asp:Label class="colorlabel" ID="Puissance" runat="server" Text="Puissance :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox placeholder="Veuillez saisir la puissance" class="designTxt" ID="txtPuissance" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                        
                        <asp:Label class="colorlabel" ID="Consommation" runat="server" Text="Consommation :"></asp:Label>&nbsp;&nbsp;
                        <asp:TextBox placeholder="Veuillez saisir le taux de consommation" class="designTxt" ID="txtConsommation" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                        
                        <asp:Label class="colorlabel" ID="Couleur" runat="server" Text="Couleur :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox  placeholder="Veuillez saisir la couleur" class="designTxt" ID="txtxCouleur" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                                </td>
                    </tr>
                    <tr>
                    <td colspan="2">
                        <asp:Button class="button" ID="btnAjouter" runat="server" Text="Ajouter" OnClick="btnAjouter_Click" />
                        <asp:Button class="button" ID="btnSupprimer" runat="server" Text="Supprimer" OnClick="btnSupprimer_Click" visible="false"/>
                        <asp:Button class="button" ID="btnModifier" runat="server" Text="Modifier" OnClick="btnModifier_Click" />
                        <asp:Button class="button" ID="btnVider" runat="server" Text="Vider" OnClick="btnVider_Click" />
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td> 
                        <asp:Label ID="lblSuccesMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
             </div>
            </div>
            <br />
            <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup">
            <div class="centergv">
            <asp:GridView ID="GV_Voiture" runat="server" AutoGenerateColumns="false" CssClass="mydatagrid" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="NumMatr" HeaderText="Num Matricule" />
                    <asp:BoundField DataField="Marque" HeaderText="Marque" />
                    <asp:BoundField DataField="Modele" HeaderText="Modele" />
                    <asp:BoundField DataField="NombrePlace" HeaderText="Nombre Place" />
                    <asp:BoundField DataField="Puissance" HeaderText="Puissance" />
                    <asp:BoundField DataField="Consommation" HeaderText="Consommation" />
                    <asp:BoundField DataField="Couleur" HeaderText="Couleur" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkMisajour" runat="server" commandargument='<%# Eval("VoitureID")%>' OnClick="lnkOnClick">Mise à jour</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            </div>
            </asp:Panel>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <style>
                    .modalBackground{
                        background-color: Black;
                        filter: alpha(opacity=40);
                        opacity: 0.4;
                        width:100%;
                    }
                    .modalPopup{
                        width:100%;
                        margin-left:145px;
                    }
                </style>
                <ajaxToolkit:ModalPopupExtender BackgroundCssClass="modalBackground" TargetControlID="btnModifier" ID="ModalPopupExtender1" runat="server" PopupControlID="Panel1"></ajaxToolkit:ModalPopupExtender>
    </form>
		</body>
	</html>

   