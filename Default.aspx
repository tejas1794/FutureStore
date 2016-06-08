<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Styles/Site.master" AutoEventWireup="true"  CodeBehind="Default.aspx.cs" Inherits="FutureStore._Default" %>
<%@ Register src="Controls/PopularItem.ascx" tagname="PopularItem" tagprefix="uc1" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    

    <h2>

    <asp:LoginView ID="LoginView_VisitorGreeting" runat="server">
    <AnonymousTemplate>
      Welcome to the Future Store!
    </AnonymousTemplate>
        <LoggedInTemplate>
        Hi <asp:LoginName ID="LoginName_Welcome" runat="server" />. Thanks for coming back. 
        </LoggedInTemplate>
    </asp:LoginView>
    </h2>
	<p><strong>The Future Store</strong> is your one stop shop to buy all futuristic gadgets. </p>
    <table>
    <tr>
    <td style="width: 50%; text-align:center">
        <img src="Content/Images/StorePic.jpg" alt=""/></td>
    </tr>
    </table>

</asp:Content>
