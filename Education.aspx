<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Education.aspx.cs" Inherits="project1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
     <div class="container" style="background-image: url('images/background_image4.jpg'); background-size: cover; background-position: center; background-repeat: no-repeat; padding: 20px;">
    <table>
     <tr>
         <td><img src="images/unt_logo.png" alt="UNT Logo" style="width:150px; height:auto;" /></td>
         <td class="auto-style1">
             <h3>Master's in Information Systems and Technology</h3>
             <p>University of North Texas</p>
             <p>Denton, Texas.</p>
         </td>
     </tr>
     <tr>
         <td><img src="images/griet_logo.png" alt="GRIET Logo" style="width:150px; height:auto;" /></td>
         <td class="auto-style1">
             <h3>Bachelor's in Computer Science and Engineering</h3>
             <p>Gokaraju Rangaraju Institute of Engineering and Technology</p>
             <p>Hyderabad, India.</p>
         </td>
     </tr>
 </table>
</asp:Content>
