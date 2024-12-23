<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="project1.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>contact me</title>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container" style="background-image: url('images/background_image4.jpg'); background-size: cover; background-position: center; background-repeat: no-repeat; padding: 20px; min-height: 400px;">

    <h2>Contact Me</h2>
  
<p>Email: <a href="mailto:ramyaperumalla@my.unt.edu">ramyaperumalla@my.unt.redu</a></p>

<p>If you'd like to connect, feel free to reach out via LinkedIn:</p>
<a href="https://www.linkedin.com/in/ramya-perumalla-63921a26b/" target="_blank">  
    <img src="images/linkedin_icon.png" alt="LinkedIn" style="width:60px; height:60px;" /> My LinkedIn Profile
</a>
     
</div>
</asp:Content>
