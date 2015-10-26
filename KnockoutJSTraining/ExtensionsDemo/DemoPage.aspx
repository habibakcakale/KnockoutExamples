<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DemoPage.aspx.cs" Inherits="KnockoutJSTraining.ExtensionsDemo.DemoPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <input type="button" value="Appy Page Tracking" data-bind="click:applyPageTracking"/>
    <div data-bind="foreach: links">
        <a href="#" data-bind="html:text, click:linkAction"></a>
        <span data-bind="text: eval('console.log($data)')"></span>
        <!-- ko if: $data.clickCount -->
        <span data-bind="text: 'Click heat count:'+ clickCount()"></span>
        <!-- /ko-->
        <br />
    </div>
    </form>
    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script src="../Scripts/knockout-3.3.0.js"></script>
    <script src="extensions.js"></script>
     <script src="main.js"></script>
</body>
</html>
