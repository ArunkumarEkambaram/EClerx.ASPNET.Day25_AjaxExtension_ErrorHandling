<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Example4.aspx.cs" Inherits="EClerx.ASPNET.Day25.Example4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="Panel1" runat="server">
                <ContentTemplate>
                    <asp:Label Text="" ID="LblTime" runat="server" />
                </ContentTemplate>       
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
            </asp:UpdatePanel>
             <asp:Timer ID="Timer1" Interval="1000" OnTick="Timer1_Tick" runat="server"></asp:Timer>
        </div>
    </form>
</body>
</html>
