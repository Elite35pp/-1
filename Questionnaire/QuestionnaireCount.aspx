<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuestionnaireCount.aspx.cs" Inherits="Questionnaire.QuestionnaireCount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <script src="js/bootstrap.js"></script>
    <title></title>
    <style>
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
        <div id="d3" class="text-center">
            <asp:Literal ID="ltlQTName" runat="server"></asp:Literal>
        </div>

    </form>
</body>
</html>
