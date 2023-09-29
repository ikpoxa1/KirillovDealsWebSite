<%@ Page Title="Журнал" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div style="font-style:x-large" align="center"> 
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Электронный журнал: Договорная деятельность организации"></asp:Label>
        </div>
        <br>
        <table class="nav-justified">
            <tr>
                <td style="width: 215px">&nbsp;</td>
                <td style="width: 141px">Номер договора</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                &nbsp;
                    <asp:Button ID="Button4" runat="server" BackColor="#990033" Font-Bold="True" ForeColor="White" OnClick="Button4_Click" Text="Поиск" />
                &nbsp;
                    <asp:Button ID="Button5" runat="server" BackColor="#990033" Font-Bold="True" ForeColor="White" OnClick="Button5_Click" Text="Вставить из" Width="107px" />
                </td>
            </tr>
            <tr>
                <td style="width: 215px">&nbsp;</td>
                <td style="width: 141px">Название компании</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 215px">&nbsp;</td>
                <td style="width: 141px">Сумма сделки (руб.)</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 215px; height: 24px;"></td>
                <td style="width: 141px; height: 24px;">Срок сделки</td>
                <td style="height: 24px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                        <asp:ListItem>1 год</asp:ListItem>
                        <asp:ListItem>2 года</asp:ListItem>
                        <asp:ListItem>5 лет</asp:ListItem>
                        <asp:ListItem>10 лет</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 215px">&nbsp;</td>
                <td style="width: 141px">Дата заключения</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 215px; height: 26px;"></td>
                <td style="width: 141px; height: 26px;">Дата окончания</td>
                <td style="height: 26px">
                    <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 215px; height: 22px"></td>
                <td style="width: 141px; height: 22px"></td>
                <td style="height: 22px"></td>
            </tr>
            <tr>
                <td style="width: 215px; height: 28px;"></td>
                <td style="width: 141px; height: 28px;"></td>
                <td style="height: 28px">
                    <asp:Button ID="Button1" runat="server" BackColor="#990033" Font-Bold="True" ForeColor="White" OnClick="Button1_Click" Text="Вставить" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="#990033" Font-Bold="True" ForeColor="White" OnClick="Button2_Click" Text="Обновить" />
                &nbsp;<asp:Button ID="Button3" runat="server" BackColor="#990033" Font-Bold="True" ForeColor="White" OnClick="Button3_Click" Text="Удалить" />
                </td>
            </tr>
            <tr>
                <td style="width: 215px; height: 22px"></td>
                <td style="width: 141px; height: 22px"></td>
                <td style="height: 22px"></td>
            </tr>
            <tr>
                <td style="width: 215px">&nbsp;</td>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" Width="623px">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 215px">&nbsp;</td>
                <td style="width: 141px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
