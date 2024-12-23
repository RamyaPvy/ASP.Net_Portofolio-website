<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="project1.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <h2>Update Your Information</h2>

    <!-- Display an error message if any -->
    <asp:Label ID="lblCourseMessage" runat="server" ForeColor="Red"></asp:Label>
    <br />

    <!-- Update Form -->
    <asp:Panel ID="UpdatePanel" runat="server">
        <table>
            <tr>
                <td><asp:Label ID="lblEmailLabel" runat="server" Text="Email:"></asp:Label></td>
                <td><asp:Label ID="lblEmail" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblPasswordLabel" runat="server" Text="Password:"></asp:Label></td>
                <td><asp:TextBox ID="txtPassword" runat="server"  Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblFirstNameLabel" runat="server" Text="First Name:"></asp:Label></td>
                <td><asp:TextBox ID="txtFirstName" runat="server" Width="200px"></asp:TextBox><asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:5680LabsConnectionString %>" DeleteCommand="DELETE FROM [Logins] WHERE [User_Email] = @User_Email" InsertCommand="INSERT INTO [Logins] ([User_Email], [User_Pass], [User_FName], [User_LName], [User_YOB]) VALUES (@User_Email, @User_Pass, @User_FName, @User_LName, @User_YOB)" SelectCommand="SELECT * FROM [Logins] WHERE ([User_Email] = @User_Email)" UpdateCommand="UPDATE [Logins] SET [User_Pass] = @User_Pass, [User_FName] = @User_FName, [User_LName] = @User_LName, [User_YOB] = @User_YOB WHERE [User_Email] = @User_Email" ID="ctl04">
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
</td>
            </tr>
            <tr>
                <td><asp:Label ID="lblLastNameLabel" runat="server" Text="Last Name:"></asp:Label></td>
                <td><asp:TextBox ID="txtLastName" runat="server" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblYearLabel" runat="server" Text="Year of Birth:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtYear" runat="server" Width="200px" AutoPostBack="false"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="btn btn-primary" />
                </td>
            </tr>
        </table>
    </asp:Panel>
                    
                    </asp:Content>
