<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registation.aspx.cs" Inherits="project1._new" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   
            <div class="container">
                <h2>Register an Account</h2>
                <center>
                    <table border="1">
                        <!-- Row 1: First Name -->
                        <tr>
                            <td>First Name</td>
                            <td>
                                <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName"
                                    ErrorMessage="*Required." ForeColor="Red" />
                            </td>
                        </tr>
                        
                        <!-- Row 2: Last Name -->
                        <tr>
                            <td>Last Name</td>
                            <td>
                                <asp:TextBox ID="txtLastName" runat="server" placeholder="Last Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName"
                                    ErrorMessage="*Required." ForeColor="Red" />
                            </td>
                        </tr>

                        <!-- Row 3: Year Hired -->
                <tr>
     <td>Year of Birth:</td>
                    <td>
                        <asp:TextBox ID="txtYOB" runat="server" AutoPostBack="true"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valYOB" runat="server" 
                            ControlToValidate="txtYOB" ErrorMessage="Year of Birth is required." />
                        <asp:RangeValidator ID="valRangeYOB" runat="server" 
                            ControlToValidate="txtYOB" MinimumValue="1900" MaximumValue="2100"
                            Type="Integer" ErrorMessage="Enter a valid year." />
                    </td>
 </tr>
                        <!-- Row 4: Email -->
                        <tr>
                            <td>Email</td>
                            <td>
                                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail"
                                    ErrorMessage="*Required." ForeColor="Red" />
                            </td>
                            <td> <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
               ErrorMessage="Invalid email format." ForeColor="Red"
             ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" /> </td>
                        </tr>
                         <!-- Error message for duplicate email -->
                        <tr>
                    <td colspan="2">
                        <asp:Label ID="lblEmailExists" runat="server" ForeColor="Red" Visible="false" Text="Email already registered."></asp:Label>
                    </td>
                        <!-- Row 5: Password -->
                        <tr>
                            <td>Password</td>
                            <td>
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword"
                                    ErrorMessage="*Required." ForeColor="Red" />
                            </td>
                        </tr>

                        <!-- Row 6: Confirm Password -->
                        <tr>
                    <td><asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:" /></td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" /> 
                        <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" 
                            ErrorMessage="*Required." ForeColor="Red" /></td>
                      <td>  <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" 
                            ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords should match." ForeColor="Red" />
                    </td>
                </tr>
                    </table>
                </center>
                <center>
                    <div style="margin-top: 10px;">
                        <asp:Button ID="btnSubmit" runat="server" Text="Register" OnClick="btnSubmit_Click" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:5680LabsConnectionString %>" DeleteCommand="DELETE FROM [Logins] WHERE [User_Email] = @User_Email" InsertCommand="INSERT INTO [Logins] ([User_Email], [User_Pass], [User_FName], [User_LName], [User_YOB]) VALUES (@User_Email, @User_Pass, @User_FName, @User_LName, @User_YOB)" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Logins] WHERE (([User_Email] = @User_Email) AND ([User_Pass] = @User_Pass))" UpdateCommand="UPDATE [Logins] SET [User_Pass] = @User_Pass, [User_FName] = @User_FName, [User_LName] = @User_LName, [User_YOB] = @User_YOB WHERE [User_Email] = @User_Email">
                            <DeleteParameters>
                                <asp:Parameter Name="User_Email" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="User_Email" Type="String" />
                                <asp:Parameter Name="User_Pass" Type="String" />
                                <asp:Parameter Name="User_FName" Type="String" />
                                <asp:Parameter Name="User_LName" Type="String" />
                                <asp:Parameter Name="User_YOB" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:Parameter Name="User_Email" Type="String" />
                                <asp:Parameter Name="User_Pass" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="User_Pass" Type="String" />
                                <asp:Parameter Name="User_FName" Type="String" />
                                <asp:Parameter Name="User_LName" Type="String" />
                                <asp:Parameter Name="User_YOB" Type="Int32" />
                                <asp:Parameter Name="User_Email" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </center>
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red" />
            </div>
       
</asp:Content>
