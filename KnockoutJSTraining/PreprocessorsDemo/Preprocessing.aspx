<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Preprocessing.aspx.cs" Inherits="KnockoutJSTraining.PreprocessorsDemo.Preprocessing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <span data-bind="html: countryName()"></span>
    </div>
    </form>
    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script src="../Scripts/knockout-3.3.0.js"></script>
    <script src="preprocessors.js"></script>
    <script src="bindings.js"></script>
</body>
</html>
