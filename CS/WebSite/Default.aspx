<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.1, Version=10.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v10.1, Version=10.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to change styles for a hyperlink column</title>
    <style type="text/css">
        .hyperlink { font-family:Georgia,serif; font-size:large }
        .hyperlink:link { color:blue; }
        .hyperlink:visited { color: #660066 !important; }
        .hyperlink:hover { text-decoration: none; color: #ff9900 !important; font-weight:bold; }
        .hyperlink:active { color: red;text-decoration: none }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="sds"
                KeyFieldName="CategoryID" Width="100%">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="0"
                        Width="100px">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="1" Width="125px">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataHyperLinkColumn FieldName="CategoryID" VisibleIndex="2">
                        <PropertiesHyperLinkEdit NavigateUrlFormatString="~/default.aspx?{0}" TextField="Description">
                            <Style CssClass="hyperlink"></Style>
                        </PropertiesHyperLinkEdit>
                        <CellStyle HorizontalAlign="left">
                        </CellStyle>
                    </dx:GridViewDataHyperLinkColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="sds" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
                SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
