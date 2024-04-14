<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master"  EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjectPart2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <h2>Encryption Sender</h2>
    <p>
        <asp:Label runat="server">Enter a string below</asp:Label>
    </p>

    <p>
        <asp:TextBox ID="encryptBox" runat="server" Width="350px"></asp:TextBox>
    </p>

    <p>
        <asp:Button ID="encryptButton" runat="server" OnClick="encryptButton_Click" Text="Encrypt" />
    </p>

    <p>
        <asp:Button ID="sendButton" runat="server" OnClick="sendButton_Click" Text="Send to Receiver" />
    </p>


    <h2>Image Verifier</h2>
    <p>
        <asp:Image ID="image" runat="server"/>
    </p>
    <p>
        <asp:Label runat="server">Image String Length: </asp:Label>
        <asp:TextBox runat="server" ID="imageLengthBox" Width="25px" Text="4"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="imageButton" runat="server" OnClick="imageButton_Click" Text="Show Image String" />
    </p>
    <p>
        <asp:Button ID="verifyButton" runat="server" OnClick="verifyButton_Click" Text="Verify"/>
        <asp:TextBox runat="server" ID="verifyBox" Width="350px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="confirm" runat="server"></asp:Label>
    </p>


</asp:Content>
