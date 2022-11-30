<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lecture5.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TxtId" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVRId" runat="server" 
            ControlToValidate="TxtId" Display="None" ErrorMessage="* Emty Field" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TxtNm" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVRNm" runat="server" 
            ControlToValidate="TxtNm" Display="None" ErrorMessage="* Emty Field" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Surname"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TxtSnm" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVRSnm" runat="server" 
            ControlToValidate="TxtSnm" Display="None" ErrorMessage="* Emty Field" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Age"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TxtAge" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVRAge" runat="server" 
            ControlToValidate="TxtAge" Display="None" ErrorMessage="* Emty Field" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RValAge" runat="server" ControlToValidate="TxtAge" 
            Display="None" ErrorMessage="* Between 18-80" ForeColor="Red" MaximumValue="80" 
            MinimumValue="18" Type="Integer"></asp:RangeValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="E-mail"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="Txtmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVREmail" runat="server" 
            ControlToValidate="Txtmail" Display="None" ErrorMessage="* Emty Field" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="ReExEmail" runat="server" 
            ControlToValidate="Txtmail" Display="None" ErrorMessage="* Invalid Characters" 
            ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Re-type Email"></asp:Label>
    
    &nbsp;&nbsp;
        <asp:TextBox ID="TxtRemail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFVReType" runat="server" 
            ControlToValidate="TxtRemail" Display="None" ErrorMessage="* Emty Field" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompValReMa" runat="server" 
            ControlToCompare="Txtmail" ControlToValidate="TxtRemail" Display="None" 
            ErrorMessage="* Email not match " ForeColor="Red"></asp:CompareValidator>
        <br />
        <br />
        <asp:Button ID="Regbutt" runat="server" onclick="Regbutt_Click" Text="Register" 
            Width="118px" />
        <br />
        <br />
        <asp:ValidationSummary ID="ValSum" runat="server" ForeColor="Red" />
        <br />
        <asp:Label ID="LblComp" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
