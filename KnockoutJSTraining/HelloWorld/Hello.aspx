<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hello.aspx.cs" Inherits="KnockoutJSTraining.HelloWorld.Hello" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <fieldset title=""><legend>Task 1, 2, 3, 5</legend>
            
            <asp:TextBox runat="server" data-bind="value:name"></asp:TextBox>
            <br />
            <asp:ListBox runat="server" data-bind="options:countries" />
            <br />
            <asp:Button runat="server" data-bind="click:addCountry" Text="Ekle" />
        </fieldset>
        <fieldset>
            <legend>Task 4</legend>
            <input type="text" data-bind="value: price" />
            <label data-bind="text: taxedAmount"></label>
        </fieldset>
    </form>
    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script src="../Scripts/knockout-3.3.0.js"></script>
    <script src="hello.js"></script>
</body>
</html>
