<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatePickerBindingDemo.aspx.cs" Inherits="KnockoutJSTraining.SimpleCustomBinding.DatePickerBindingDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/themes/base/theme.css" rel="stylesheet" />
    <link href="../Content/themes/base/datepicker.css" rel="stylesheet" />
</head>
<body style="font-size: 12px">
    <form id="form1" runat="server">
        <input type="text" data-bind="datepicker: rightNow, opions: { showMonthAfterYear: true }"/>
    
    
    </form>
    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script src="../Scripts/jquery-ui-1.11.4.min.js"></script>
    <script src="../Scripts/knockout-3.3.0.js"></script>
    <script src="custombindings.js"></script>
    <script src="datedemo.js"></script>
</body>
</html>
