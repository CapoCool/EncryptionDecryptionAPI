<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Decrypt.aspx.cs" Inherits="ProjectPart2.Decrypt" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Encryption Reciever</h2>
    <p>
    <asp:Label runat="server">Encrypted Text: </asp:Label>
    <asp:TextBox ID="decryptBox" runat="server" Width="200px"></asp:TextBox>
    </p>
    <p>
    <asp:Button ID="decryptButton" runat="server" OnClick="decryptButton_Click" Text ="Decrypt"/>
     <asp:Button ID="returnButton" runat="server" OnClick="returnButton_Click" Text ="Return to Sender"/>
    </p>
        </div>
    </form>
</body>
</html>

<%--<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Encryption Reciever</h2>
    <p>
    <asp:Label runat="server">Encrypted Text: </asp:Label>
    <asp:TextBox ID="decryptBox" runat="server" Width="200px"></asp:TextBox>
    </p>
    <p>
    <asp:Button ID="decryptButton" runat="server" OnClick="decryptButton_Click" Text ="Decrypt" CausesValidation="False" ValidateRequestMode="Disabled" />
     <asp:Button ID="returnButton" runat="server" OnClick="returnButton_Click" Text ="Return to Sender"/>
    </p>

</asp:Content>--%>
