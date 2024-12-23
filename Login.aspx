<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="project1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- <link rel="stylesheet" type="text/css" href="~/Content/stylesheet.css" / -->

        <link href="StyleSheet1.css" rel="stylesheet" />
    <style>
        body {
            background-image: url('images/background_body.jpg'); /* Path to your background image */
            background-size: cover; /* Cover the entire body */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Do not repeat the image */
            margin: 0; /* Remove default margin */
            padding: 0; /* Remove default padding */
        }
    </style>
    <style>
        

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

    <div class="container" style="background-image: url('images/background_image4.jpg'); background-size: cover; background-position: center; background-repeat: no-repeat; padding: 20px; min-height: 400px;">

        <center><h2>Login Page<asp:SqlDataSource ID="dsLogin" runat="server" ConnectionString="<%$ ConnectionStrings:5680LabsConnectionString %>" SelectCommand="SELECT * FROM [Logins] WHERE (([User_Email] = @User_Email) AND ([User_Pass] = @User_Pass))">
            <SelectParameters>
                <asp:Parameter Name="User_Email" Type="String" />
                <asp:Parameter Name="User_Pass" Type="String" />
            </SelectParameters>
            </asp:SqlDataSource>
            </h2></center> 
        <div>
            <center>
                <label for="userId">User ID:</label> 
                <asp:TextBox ID="txtUserID" runat="server" OnTextChanged="txtUserID_TextChanged"></asp:TextBox><br />
            </center>
            <center>
                <label for="password">Password:</label> 
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
            </center>
            <center>
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br />
            </center>
            <center>
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </center>
        </div>
    </div>
    


</asp:Content>
