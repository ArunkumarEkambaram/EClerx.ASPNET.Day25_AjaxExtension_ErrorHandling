<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Example2.aspx.cs" Inherits="EClerx.ASPNET.Day25.Example2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ajax Example</title>
    <style>
        .container {
            margin: auto;
            margin-top: 50px;
            width: 500px;
            height: 300px;
            border: 1px solid;
            border-radius: 20px;
        }

        table {
            padding: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="Panel1" runat="server">
            <ContentTemplate>
                <div class="container">
                    <table>
                        <tr>
                            <td>
                                <b>Select a Color
                                </b>
                                <asp:DropDownList ID="DdlColors" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DdlColors_SelectedIndexChanged">
                                    <asp:ListItem Text="--Select--" />
                                    <asp:ListItem Text="Red" />
                                    <asp:ListItem Text="Green" />
                                    <asp:ListItem Text="Yellow" />
                                    <asp:ListItem Text="Blue" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h1>
                                    <asp:Label Text="Hello World!!!" ID="LblMessage" runat="server" />
                                </h1>
                            </td>
                        </tr>
                    </table>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
