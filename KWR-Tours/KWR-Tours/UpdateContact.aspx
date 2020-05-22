<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateContact.aspx.cs" Inherits="projet_voiture.UpdateContact" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html lang="zxx" class="no-js" runat="server">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Espace Admin</title>
    <link rel="icon" type="image/png" href="img/Icon.png" />
    <link rel="stylesheet" href="UpdateContact.css" type="text/css" />
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body>
    <form id="form1" runat="server">
            <asp:HiddenField ID="hfContactID" runat="server" />
                <a href="EspaceAdmin.aspx" class="close"></a>
                    <div class="centerform">
                        <div id="centerTxt" class="wrap-login100">
                        <div id="UpdatePicture">
                            <asp:Image ID="Image1" runat="server" ImageUrl="Pics/UpdateContact.png" Style=" float: left;margin-left: 80px;"/>
                        </div>
                        <table id="table1">
                            <tr>
                            <td colspan="2">
                        <asp:Label Font-Names="Montserrat-Bold" class="colorlabel" ID="Nom" runat="server" Text="Nom :" Font-Bold="False"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox placeholder="Veuillez saisir la nom" class="designTxt" ID="txtNom" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                        
                        <asp:Label class="colorlabel" ID="Email" runat="server" Text="Email :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox placeholder="Veuillez saisir l'adresse email" class="designTxt" ID="txtEmail" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                        
                        <asp:Label class="colorlabel" ID="Objet" runat="server" Text="Objet :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox placeholder="Veuillez saisir l'objet du message" class="designTxt" ID="txtObjet" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                        
                        <asp:Label class="colorlabel" ID="Message" runat="server" Text="Message :"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox placeholder="Veuillez saisir le message" class="designTxt" ID="txtMessage" runat="server" Style="padding:7px;"></asp:TextBox><br /><br />
                       
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
            <asp:GridView ID="GV_Contact" runat="server" AutoGenerateColumns="false" CssClass="mydatagrid" PagerStyle-CssClass="pager"
 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="Nom" HeaderText="Nom" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:BoundField DataField="Objet" HeaderText="Objet" />
                    <asp:BoundField DataField="MessageC" HeaderText="Message" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkMisajour" runat="server" commandargument='<%# Eval("ContactID")%>' OnClick="lnkOnClick">Mise à jour</asp:LinkButton>
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
