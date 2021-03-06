﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Styles/Site.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="FutureStore.ContactUs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="HTMLEditor" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ToolkitScriptManager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <center>
        <h3>
            <asp:Label ID="LabelMessage" runat="server" Text=""></asp:Label>
        </h3>
    </center>
    <br />
    <table>
        <tr>
            <td style="text-align: right;">Your Name : </td>
            <td><asp:TextBox ID="TextBoxYourName" runat="server" Width="500px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align: right;">Your Email Address : </td>
            <td><asp:TextBox ID="TextBoxEmail" runat="server" Width="500px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align: right;">Subject : </td>
            <td><asp:TextBox ID="TextBoxSubject" runat="server" Width="500px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style=" vertical-align: top; text-align: right;">Message : </td>
            <td>
                <HTMLEditor:Editor ID="EditorEmailMessageBody" runat="server" Width="500px" />
            </td>
        </tr>
        <tr>
            <td style=" vertical-align: top; text-align: right;">&nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton_Submit" runat="server" ImageUrl="~/Styles/Images/submit.png" onclick="ImageButton_Submit_Click" />   
            </td>
        </tr>
    </table>
    
</asp:Content>
