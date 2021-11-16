<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminList.aspx.cs" Inherits="Questionnaire.System_Admin.AdminList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <script src="js/bootstrap.js"></script>
    <style>
        #div2 {
            border: 1px solid #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>前台</h1>
        </div>

        <div id="div2">
            問卷標題
            <asp:TextBox ID="txtSearch" runat="server" Width="422px" ></asp:TextBox>
            <br />
            開始 / 結束
            <asp:TextBox ID="TextBox2" runat="server" TextMode="DateTime" Width="185px"></asp:TextBox>　
            <asp:TextBox ID="TextBox3" runat="server" TextMode="DateTime" Width="185px"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="搜尋" OnClick="btnSearch_Click" />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList>
        </div>

        <asp:Repeater ID="RptQt" runat="server" >
            <HeaderTemplate>
                <table cellspacing="0" rules="all" border="1" class="table table-bordered">
                    <tr>
                        <th scope="col" style="width: 30px">#
                        </th>
                        <th scope="col" style="width: 180px">問卷
                        </th>
                        <th scope="col" style="width: 80px">狀態
                        </th>
                        <th scope="col" style="width: 100px">開始時間
                        </th>
                        <th scope="col" style="width: 100px">結束時間
                        </th>
                        <th scope="col" style="width: 100px">觀看統計
                        </th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Label ID="lblQtID" runat="server" Text='<%# Eval("QtID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lblQtCaption" runat="server" Text='<%# Eval("QtCaption") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lblOnOff" runat="server" Text='<%# Eval("OnOff") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lblStTime" runat="server" Text='<%# Eval("StTime","{0:yyyy/MM/dd}") %>' />
                    </td>
                    <td>
                        <asp:Label ID="lblEdTime" runat="server" Text='<%# Eval("EdTime", "{0:yyyy/MM/dd}") %>' />
                    </td>
                    <td>
                        <a href="QuestionnaireDetail.aspx?QtGuid=<%# Eval("QtGuid") %>">前往</a>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </form>
</body>
</html>
