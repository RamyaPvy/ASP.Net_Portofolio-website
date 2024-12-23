<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Experience.aspx.cs" Inherits="project1.Experience" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Experience</title>
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
        <h2>Professional Experience</h2>
    <ul>

        <!-- <h2>Experience</h2> -->
    <!-- <div class="experience-section"> -->
        <div class="experience-section">
    
            <h4><strong>1. TCS</strong></h4>

           <table>
     <tr>
         <td><img src="images/tcs_logo.jpg" alt="TCS Logo" style="width:150px; height:auto;"></td>
         <td>
             <p><strong> Designer and Data Analyst</strong></p>
<ul>
    <li>Responsible for designing user interfaces and data visualizations.</li>
    <li>Performed data analysis and reporting.</li>
    <li>Contributed to project development and implementation.</li>
</ul>
         </td>
     </tr>
               </table>

                        <h4><strong>2. Gokaraju Rangaraju Institution of engineering and Technology</strong></h4>

           <table>
     <tr>
         <td><img src="images/griet_logo.png" alt="TCS Logo" style="width:150px; height:auto;"></td>
         <td>
             <p><strong> Student Assistant</strong></p>
<ul>
    <li>Taught library tools and assisted researchers.</li>
    <li>Enhanced efficiency through technology and adaptability.</li>
    <li>Collaborated effectively with team members.</li>
</ul>
         </td>
     </tr>
               </table>

  <!--  <div class="company-details">
        <h4>1. TCS</h4>
      
        <div class="company-logo">
    <img src="images/tcs_logo.jpg" alt="TCS Logo" style="width:150px; height:auto;">
</div>
        <p>Designer and Data Analyst</p>
        <ul>
            <li>Responsible for designing user interfaces and data visualizations.</li>
            <li>Performed data analysis and reporting.</li>
            <li>Contributed to project development and implementation.</li>
        </ul>
    </div>
</div>  -->
    

</asp:Content>
