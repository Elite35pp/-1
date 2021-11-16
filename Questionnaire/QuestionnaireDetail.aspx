<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuestionnaireDetail.aspx.cs" Inherits="Questionnaire.QuestionnaireDetail" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <script src="js/bootstrap.js"></script>
    <style>
        #d1 {
            position: absolute;
            left: 1300px;
            top: 10px;
        }

        #d2 {
            position: absolute;
            left: 1250px;
            top: 50px;
        }

        #f1 {
            font-size: 1.2cm;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>前台</h1>
        </div>
        <div id="d1">
            <asp:Literal ID="ltlState" runat="server"></asp:Literal>
        </div>
        <div id="d2">
            <asp:Label ID="lblStTime" runat="server" Text='<%# Eval("StTime","{0:yyyy/MM/dd}") %>' />~
            <asp:Label ID="lblEdTime" runat="server" Text='<%# Eval("EdTime", "{0:yyyy/MM/dd}") %>' />
        </div>

        <figure id="f1" class="text-center">
            <asp:Literal ID="ltlName" runat="server"></asp:Literal><br />
        </figure>
        <figure id="f2" class="text-center">
            <asp:Literal ID="ltlnaiyou" runat="server"></asp:Literal>
        </figure>
        <br />
        <br />
        <div class="d-flex justify-content-center align-items-center w-100">
            <div class="text-center  w-50">
                <div>
                    <label for="Name">姓名　</label>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
                    <br />
                    <label for="phone">手機　</label>
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox><br />
                    <br />
                    <label for="Email">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
                    <br />
                    <label for="Age">年齡　</label>
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox><br />
                    <br />
                </div>
            </div>
        </div>

        <div class="d-flex justify-content-center align-items-center w-100">
            <div class="text-center  w-50">
                <asp:Label ID="Label1" runat="server" Text="Label">1.請投給以下一位</asp:Label><br />
                <asp:RadioButton ID="RadioButton1" runat="server" Text="黃鵬軒" /><br />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="謝采葦" /><br />
                <asp:RadioButton ID="RadioButton3" runat="server" Text="洪衍和" /><br />
                <asp:RadioButton ID="RadioButton4" runat="server" Text="張蒸瑋"/>
            </div>
        </div>
    </form>
</body>
</html>
