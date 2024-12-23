<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="project1.Success" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Login Successful</h2>
    <asp:Label ID="lblWelcome" runat="server" Font-Bold="True"></asp:Label><br />
    <p>You have successfully authenticated!</p>
    <p>
               
                <asp:HyperLink ID="lnkUpdateInfo" runat="server" NavigateUrl="~/update.aspx">click here, to update your account</asp:HyperLink>. 
            </p>

    <p>
           
           <p>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/DeleteAccount.aspx" Text="To delete your account, click here"></asp:HyperLink>
</p>


</asp:Content>
