<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DeleteSuccess.aspx.cs" Inherits="project1.DeleteSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="text-center text-lg-start">
        <div class="card mb-3">
            <div class="row g-0 d-flex align-items-center">
                <div class="col-lg-8">
                    <div class="card-body py-5 px-md-5 text-center">
                        <h1 class="text-success">Deleted Successfully!</h1>
                        <p>Your account has been deleted successfully. You can now log out or return to the login page.</p>
                        <asp:Button runat="server" class="btn btn-primary btn-block mb-4" ID="logout" Text="Log Out" OnClick="delete_Pass" />
                    </div>
                </div>
            </div>
        </div>
    </section>
  <br />  <a href="Login.aspx">Login</a> <br>

To create new account<a href="Registation.aspx">Click Here</a>  

</asp:Content>
