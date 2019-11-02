<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="AdvanceTech.Views.ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <style>
        .glow {
  font-size: 25px;
  
  color: white;
  text-align: center;
  -webkit-animation: glow 1s ease-in-out infinite alternate;
  -moz-animation: glow 1s ease-in-out infinite alternate;
  animation: glow 0.5s ease-in-out infinite alternate;
}

@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 1px #fff, 0 0 2px #fff , 0 0 2px #4E85C1, 0 0 2px #4E85C1;
  }
  
  to {
    text-shadow: 0 0 1px #fff, 0 0 2px #4E85C1, 0 0 2px #4E85C1, 0 0 2px #4E85C1;
  }
}
    </style>

    <section>
        <div class="glow jumbotron">
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>

            <asp:ListView ID="productList" runat="server" DataKeyNames="ProductID" GroupItemCount="4" ItemType="AdvanceTech.Models.Product" SelectMethod="GetProducts">
                <EmptyDataTemplate>
                    <table>
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td><a href="/Views/ProductDetails.aspx?productID=<%#:Item.ProductID%>">
                                    <img src="/products/<%#:Item.ImagePath%>" width="320" height="320" style=" border: 2px solid #333333; border-radius: 5px" />

                                </a></td>

                            </tr>
                            <tr>
                                <td><a href="ProductDetails.aspx?productID=<%#:Item.ProductID%>"><span><%#:Item.ProductName%> </span></a>
                                    <br />
                                    <span><b>Price: </b><%#:String.Format("{0:c}", Item.UnitPrice)%>  </span>
                                  
                                </td>
                              

                            </tr>
                            <tr>
                                <td><a href="/AddToCart.aspx?productID=<%#:Item.ProductID %>"><div class="ProductListItem btn btn-primary glow" style="justify-content:left">
                                        <b>Add To Cart<b> 
                                    </div>
                                </a>&nbsp</td>
                            </tr>
                                
                        </table>
                        </p>                     </td>
      </ItemTemplate> 
                <LayoutTemplate> 
                    <table runat="server" style="width:100%;"> 
                        <tbody> 
                            <tr runat="server"> 
                                <td runat="server"> 
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%"> 
                                        <tr id="groupPlaceholder" runat="server"></tr> 
                                    </table> 
                                </td> 
                            </tr> 
                            <tr runat="server"> 
                                <td runat="server"></td> 
                            </tr> 
                            <tr></tr> 
                        </tbody> 
                    </table> 
                </LayoutTemplate> 
            </asp:ListView> 
        </div> 
    </section> 

</asp:Content>
