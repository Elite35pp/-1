<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuestionnaireConfire.aspx.cs" Inherits="Questionnaire.QuestionnaireConfire" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <script src="js/bootstrap.js"></script>
    <title></title>
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

        #d3 {
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
            <asp:Literal ID="ltlStTime" runat="server"></asp:Literal>
            <asp:Literal ID="ltlEdTime" runat="server"></asp:Literal>
        </div>

        <div id="d3" class="text-center">
            <asp:Literal ID="ltlQTName" runat="server"></asp:Literal><br />
        </div>
        <div class="text-center">
            姓名   <asp:Literal ID="ltlName" runat="server"></asp:Literal><br /><br />
            手機   <asp:Literal ID="ltlPhone" runat="server"></asp:Literal><br /><br />
            Email   <asp:Literal ID="ltlEmail" runat="server"></asp:Literal><br /><br />
            年齡   <asp:Literal ID="ltlAge" runat="server"></asp:Literal><br /><br />
        </div>
        <div class="text-center">
            <asp:Literal ID="Literal1" runat="server">1.請投給以下一位</asp:Literal><br /><br />
            <asp:Literal ID="Literal2" runat="server"></asp:Literal><br /><br />
        </div>
        <div class="text-center">
            <asp:Button ID="Button1" runat="server" Text="修改" />　　　　
            <asp:Button ID="Button2" runat="server" Text="送出" />
        </div>
    </form>
</body>
</html>
