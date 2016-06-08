<%@ Page Title="" Language="C#" MasterPageFile="~/Styles/Site.Master" AutoEventWireup="true" CodeBehind="ReviewAdd.aspx.cs" Inherits="FutureStore.ReviewAdd" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor" TagPrefix="HTMLEditor" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <div class="ContentHead">Add Review - <asp:label id="ModelName" runat="server" /></div>
    <div style="padding: 20px; border-style:solid; border-width: 1px">
        <span class="NormalBold">Name</span><br />
        <asp:TextBox id="Name" runat="server" Width="400px" /><br />
        <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" ControlToValidate="Name" Display="Dynamic" 
                                    CssClass="ValidationError" ErrorMessage="'Name' must not be left blank."  /><br />
        <span class="NormalBold">Email</span><br />
        <asp:TextBox id="Email" runat="server" Width="400px" /><br />
        <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" ControlToValidate="Email" Display="Dynamic" 
                                    CssClass="ValidationError" ErrorMessage="'Email' must not be left blank." />
        <br /><hr /><br />
        <span class="NormalBold">Rating</span><br /><br />
        <asp:RadioButtonList ID="Rating" runat="server">
            <asp:ListItem value="5" selected="True" Text='<img src="Styles/Images/reviewrating5.png" alt=""> (Five Stars) '  />
            <asp:ListItem value="4" selected="True" Text='<img src="Styles/Images/reviewrating4.png" alt=""> (Four Stars) '  />
            <asp:ListItem value="3" selected="True" Text='<img src="Styles/Images/reviewrating3.png" alt=""> (Three Stars) '  />
            <asp:ListItem value="2" selected="True" Text='<img src="Styles/Images/reviewrating2.png" alt=""> (Two Stars) '  />
            <asp:ListItem value="1" selected="True" Text='<img src="Styles/Images/reviewrating1.png" alt=""> (One Stars) '  />
        </asp:RadioButtonList>
        <br /><hr /><br />
        <span class="NormalBold">Comments</span><br />
        <HTMLEditor:Editor ID="UserComment" runat="server" />
        <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" ControlToValidate="UserComment" Display="Dynamic" 
                                    CssClass="ValidationError" ErrorMessage="Please enter your comment." /><br /><br />
        <asp:ImageButton ImageURL="Styles/Images/submit.png" runat="server" id="ReviewAddBtn" onclick="ReviewAddBtn_Click" />
    <br /><br /><br />
    </div>
</asp:Content>
