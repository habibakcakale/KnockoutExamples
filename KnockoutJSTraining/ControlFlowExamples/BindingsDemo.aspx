<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BindingsDemo.aspx.cs" Inherits="KnockoutJSTraining.ControlFlowExamples.BindingsDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script id="accountTemplate" type="text/html">
        <ul data-bind="foreach: $data">
            <li data-bind="text: id() + '-' + balance()"></li>
        </ul>

    </script>
        <script id="accountTemplate2" type="text/html">
            <li data-bind="text: id() + '-' + balance()"></li>
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <fieldset>
            <legend>Task 1</legend>
            <input type="text" data-bind="value: transferAmount" />
            <div data-bind="if: transferAmount() < 20000">At least 20000 must be transferred</div>
            <div data-bind="if: transferAmount() >= 20000">
                <input type="button" value="Transfer" />
            </div>
        </fieldset>
        <fieldset data-bind="with: sourceAccount">
            <legend>Source Account Detail</legend>
            <label data-bind="text: id"></label>
            <br />
            <label data-bind="text: balance"></label>
        </fieldset>
        <fieldset>
            <legend>TargetAccounts</legend>
            <div data-bind="template: { name: 'accountTemplate', data: targetAccounts }"></div>
            <ul data-bind="template: { name:'accountTemplate2', foreach: targetAccounts }"></ul>
            Account Id:
            <input type="text" data-bind="value: newTargetAccountId " /><br />
            Balance:
            <input type="text" data-bind="value: newTargetAccountBalance" /><br />
            <input type="button" data-bind="click: addTargetAccount" value="Ekle" />
        </fieldset>
    </form>
    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script src="../Scripts/knockout-3.3.0.js"></script>
    <script src="bindings.js"></script>
</body>
</html>
