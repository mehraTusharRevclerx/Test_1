<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="test1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration Form</title>
    <style>
        body {
            text-align: center;
            position: relative;

        }
        #GridView1 {
            position: relative;
            top: 30%;
            left:30%;
        }
        
        #RequiredFieldValidator1, 
        #RequiredFieldValidator2,
        #RequiredFieldValidator3,
        #RequiredFieldValidator4,
        #RequiredFieldValidator5

         {
            color: red;
        }
        
        

    </style>
</head>
<body class="form-center">
    <h1>User Registration Form</h1>
    <form id="form1" runat="server" >
        <div>
            <asp:Label ID="FirstNameLabel" runat="server" Text="Enter your First Name:"></asp:Label>
            <asp:TextBox  ID="FirstNameBox" runat="server" class="textBox" ></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="FirstNameBox" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Your First Name"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="LastNameLabel" runat="server" Text="Enter your Last Name:"></asp:Label>
            <asp:TextBox ID="LastNameBox" runat="server" class="textBox"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="LastNameBox" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Your Last Name"></asp:RequiredFieldValidator>

            <br />
            <asp:Label ID="EmailLabel" runat="server" Text="Enter your Email:"></asp:Label>
            <asp:TextBox ID="EmailBox" runat="server" class="textBox"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="EmailBox" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Your Email"></asp:RequiredFieldValidator>

            <br />
            <asp:Label ID="AddressLabel" runat="server" Text="Enter your Address:"></asp:Label>
            <asp:TextBox ID="AddressBox" runat="server" class="textBox"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="AddressBox" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Your Address"></asp:RequiredFieldValidator>

            <br />
            <asp:Label ID="PhoneNoLabel" runat="server" Text="Enter your Phone No:"></asp:Label>
            <asp:TextBox ID="PhoneNoBox" runat="server" class="textBox"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="PhoneNoBox" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter Your Phone No"></asp:RequiredFieldValidator>

            <br />
            <asp:Button ID="SubmitBtn" runat="server" Text="Submit" OnClick="SubmitBtn_Click" />
            <asp:Button ID="ResetBtn" runat="server" Text="Reset" OnClick="ResetBtn_Click" />
            <asp:Button ID="DeleteBtn" runat="server" Text="Delete Table" OnClick="DeleteBtn_Click" />
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
