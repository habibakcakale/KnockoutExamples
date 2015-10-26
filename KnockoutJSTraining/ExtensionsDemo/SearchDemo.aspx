<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchDemo.aspx.cs" Inherits="KnockoutJSTraining.ExtensionsDemo.SearchDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label for="search">Book to Search</label>
            <input type="search" name="search" id="search" data-bind="value: searchtoken, valueUpdate: 'keypress'" />
            <fieldset>
                <legend>Search Results:</legend>
                <div data-bind="foreach: searchResult">
                    <div data-bind="html: title + '-' + author"></div>
                </div>
            </fieldset>
        </div>
    </form>
    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script src="../Scripts/knockout-3.3.0.js"></script>
    <script src="searchdemo.js"></script>
</body>
</html>
