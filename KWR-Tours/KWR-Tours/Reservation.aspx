<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="projet_voiture.Reservation" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!DOCTYPE html>

<html lang="zxx" class="no-js" runat="server">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Espace Admin</title>
    <link rel="stylesheet" href="Reservation.css" type="text/css" />
    <link rel="icon" type="image/png" href="img/Icon.png" />
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body>
    <form id="form1" runat="server">
            <asp:HiddenField ID="hfReservationID" runat="server" />
                <a href="EspaceAdmin.aspx" class="close"></a>
                    <div class="centerform">
                        <div id="centerTxt" class="wrap-login100">
                        <div id="UpdatePicture">
                            <asp:Image ID="Image1" runat="server" ImageUrl="Pics/Reservation.png" Style=" float: left;margin-left: 80px;"/>
                        </div>
                        <table id="table1">
                            <tr>
                            <td colspan="2">
                        <asp:Label Font-Names="Montserrat-Bold" class="colorlabel" ID="Marque" runat="server" Text="Marque :" Font-Bold="False"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox placeholder="Veuillez saisir la marque de voiture" class="designTxt" ID="txtMarque" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                        
                        <asp:Label class="colorlabel" ID="NbrReserver" runat="server" Text="Nbr voitures réservées :"></asp:Label>&nbsp;
                        <asp:TextBox placeholder="Veuillez saisir le nbr de voitures réservées" class="designTxt" ID="txtNbrReserver" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                        
                        <asp:Label class="colorlabel" ID="dateReservation" runat="server" Text="Date Réservation :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox placeholder="Veuillez saisir la date de réservation" class="datepicker" ID="txtdateReservation" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                        
                        <asp:Label class="colorlabel" ID="NbrDepot" runat="server" Text="Nbr voitures déposées :"></asp:Label>&nbsp;
                        <asp:TextBox placeholder="Veuillez saisir le nbr de voitures déposées" class="designTxt" ID="txtNbrDepot" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                        
                        <asp:Label class="colorlabel" ID="dateDepot" runat="server" Text="Date dépôt :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox placeholder="Veuillez saisir la date de dépôt" class="datePicker" ID="txtdateDepot" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                        
                        <asp:Label class="colorlabel" ID="NomComplet" runat="server" Text="Nom Complet :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox placeholder="Veuillez saisir le nom complet" class="designTxt" ID="txtNomComplet" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                        
                        <asp:Label class="colorlabel" ID="Email" runat="server" Text="Email :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox placeholder="Veuillez saisir l'adresse Email" class="designTxt" ID="txtEmail" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                        
                        <asp:Label class="colorlabel" ID="Tel" runat="server" Text="Téléphone :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox placeholder="Veuillez saisir le numéro de téléphone" class="designTxt" ID="txtNumTel" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                        
                        <script>
                                   $(function(){
                                       $('.datePicker').datepicker();
                                   });
                        </script>
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
                        <asp:Label ID="lblSuccesMessage" runat="server" Text="" ForeColor="Green" Style="text-align:center;display:block;"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red" Style="text-align:center;display:block;"></asp:Label>
                    </td>
                </tr>
            </table>
             </div>
            </div>
            <br />
            <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup">
            <div class="centergv">
            <asp:GridView ID="GV_Reservation" runat="server" AutoGenerateColumns="false" CssClass="mydatagrid" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="Marque" HeaderText="Marque" />
                    <asp:BoundField DataField="Reserver" HeaderText="Nombre voitures réservées" />
                    <asp:BoundField DataField="Date_rev" HeaderText="Date Réservation" />
                    <asp:BoundField DataField="Depose" HeaderText="Nombre voitures déposées" />
                    <asp:BoundField DataField="Datr_dep" HeaderText="Date Dépôt" />
                    <asp:BoundField DataField="NomComplet" HeaderText="Nom Complet" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Tele" HeaderText="Téléphone" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkMisajour" runat="server" commandargument='<%# Eval("ReservationID")%>' OnClick="lnkOnClick">Mise à jour</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            </div>
            </asp:Panel>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <ajaxToolkit:ModalPopupExtender BackgroundCssClass="modalBackground" TargetControlID="btnModifier" ID="ModalPopupExtender1" runat="server" PopupControlID="Panel1"></ajaxToolkit:ModalPopupExtender>
    </form>
</body>
</html>
