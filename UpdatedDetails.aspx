<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdatedDetails.aspx.cs" Inherits="project1.UpdatedDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="container text-center" style="margin-top: 50px;">
        <h2 style="color: green;">Updated Successfully!</h2>
        <p>Your changes have been saved successfully.</p>
        

        <asp:Label ID="lblEmailLabel" runat="server" Text="Email: "></asp:Label>
        <asp:Label ID="lblEmail" runat="server"></asp:Label>
        <br /><br />
        <asp:Label ID="lblNameLabel" runat="server" Text="First Name: "></asp:Label>
        <asp:Label ID="lblFName" runat="server"></asp:Label>
        <br /><br />
        <asp:Label ID="lblLNameLabel" runat="server" Text="Last Name: "></asp:Label>
        <asp:Label ID="lblLName" runat="server"></asp:Label>
        <br /><br />
        <asp:Label ID="lblYOB" runat="server" Text="Year of Birth: "></asp:Label>
        <asp:Label ID="lYob" runat="server"></asp:Label>
        <br /><br />
        <asp:Label ID="lblPwd" runat="server" Text="Password: "></asp:Label>
        <asp:Label ID="lblPass" runat="server"></asp:Label>
    </div>

</asp:Content>
