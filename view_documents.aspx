<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_documents.aspx.cs" Inherits="NameMyFee.view_documents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
       
 
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="id@mail.com"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" />
<asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="Upload" />
<hr />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
<Columns>
    <asp:BoundField DataField="document_name" HeaderText="File Name" />
    <asp:BoundField DataField="uni_name" HeaderText="University Name" />
</Columns>
</asp:GridView>
        </div>
    </form>
</body>
</html>
