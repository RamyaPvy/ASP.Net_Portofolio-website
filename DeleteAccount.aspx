<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DeleteAccount.aspx.cs" Inherits="project1.DeleteAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="text-center text-lg-start">
        <div class="card mb-3">
            <div class="row g-0 d-flex align-items-center">
                <div class="col-lg-8">
                    <div class="card-body py-5 px-md-5">
                       <center> <h1>Delete Form</h1></center>
                        <br />
                        <div class="warning-text">
                           <center><p>Please enter your email:</p></center> 
                        </div>

                        <div class="form-outline mb-4">
                           <center><asp:TextBox runat="server" class="userText" ID="usernameValidate" placeholder="Email Address" required="true"></asp:TextBox></center> 
                        </div>

                      <center>  <asp:Button runat="server" class="btn btn-danger btn-block mb-4" ID="signup" Text="Delete" OnClick="delete_Pass" /></center>

                        <center><asp:Label runat="server" ID="labelerr" CssClass="error-message" /></center>
                    </div>
                </div>
            </div>
            <asp:SqlDataSource ID="dsInsert" runat="server" 
                ConnectionString="<%$ ConnectionStrings:5680LabsConnectionString %>"
                SelectCommand="SELECT * FROM [Logins] WHERE ([User_Email] = @User_Email)"
                DeleteCommand="DELETE FROM [Logins] WHERE [User_Email] = @User_Email"
                InsertCommand="INSERT INTO [Logins] ([User_Email], [User_Pass], [User_FName], [User_LName], [User_YOB]) VALUES (@User_Email, @User_Pass, @User_FName, @User_LName, @User_YOB)"
                UpdateCommand="UPDATE [Logins] SET [User_Pass] = @User_Pass, [User_FName] = @User_FName, [User_LName] = @User_LName, [User_YOB] = @User_YOB WHERE [User_Email] = @User_Email">
                <DeleteParameters>
                    <asp:Parameter Name="User_Email" Type="String"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="User_Email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="User_Pass" Type="String"></asp:Parameter>
                    <asp:Parameter Name="User_FName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="User_LName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="User_YOB" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter Name="User_Email" Type="String"></asp:Parameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="User_Pass" Type="String"></asp:Parameter>
                    <asp:Parameter Name="User_FName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="User_LName" Type="String"></asp:Parameter>
                    <asp:Parameter Name="User_YOB" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="User_Email" Type="String"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </section>



</asp:Content>
