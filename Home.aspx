<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="project1.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home</title>
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

    <div class="container" style="background-image: url('images/background_image4.jpg'); background-size: cover; background-position: center; background-repeat: no-repeat; padding: 20px;"width=" 900">
    <h2>Welcome to My Resume</h2>
<p>Hi, I'm Ramya Perumalla, an aspiring IT professional with a focus on data analysis and cloud technologies.</p>

      
                       

       <table>
 <tr>
     <td><img src="images/profile.jpeg" alt="Ramya Perumalla" width="200px"/></td>
              <td>
             <p><strong> Career Objective</strong></p>
<ul>
    <li>To be a part of a challenging team that strives for the organization's better
        growth explores my potential and provides me with an opportunity to enhance 
        my talent to be an asset to the company.</li>
    
</ul>
                 

         </table>
</asp:Content>
