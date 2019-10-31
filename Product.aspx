<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="AdvanceTech.product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="CategoryMenu" style="text-align: center">
        <asp:ListView ID="categoryList"
            ItemType="WingtipToys.Models.Category"
            runat="server"
            SelectMethod="GetCategories">
            <ItemTemplate>
                <b style="font-size: large; font-style: normal">
                 <%--   <a href="/ProductList.aspx?id=<%#: Item.CategoryID %>">
                        <%#: Item.CategoryName %>
                    </a>--%>
                </b>
            </ItemTemplate>
            <ItemSeparatorTemplate>| </ItemSeparatorTemplate>
        </asp:ListView>
    </div>
</asp:Content>
