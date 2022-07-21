<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Example3.aspx.cs" Inherits="EClerx.ASPNET.Day25.Example3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="Panel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <h2>
                        <asp:Label Text="" ID="LblPanel1Time" runat="server" />
                    </h2>
                    <asp:Button ID="Btn1" Text="Change Time - Panel 1" runat="server" OnClick="Btn1_Click" />
                </ContentTemplate>
            </asp:UpdatePanel>
             <asp:UpdatePanel ID="Panel2" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                     <h2>
                        <asp:Label Text="" ID="LblPanel2Time" runat="server" />
                    </h2>
                         <asp:Button ID="Btn2" Text="Change Time - Panel 2" runat="server" OnClick="Btn2_Click" />              
                </ContentTemplate>
                 <Triggers>
                      <asp:AsyncPostBackTrigger ControlID="Btn1" EventName="Click" />
                 </Triggers>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
