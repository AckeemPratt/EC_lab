<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="shippingDetails.aspx.cs" Inherits="AdvanceTech.Checkout.shippingDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-horizontal jumbotron">
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="FirstName" CssClass="col-md-2 control-label">First Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="FirstName" CssClass="form-control" placeholder="John" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName"
                    CssClass="text-danger" ErrorMessage="The first name field is required." />
            </div>
        </div>

     <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="LastName" CssClass="col-md-2 control-label">Last Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="LastName" CssClass="form-control" placeholder="Doe" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="LastName"
                    CssClass="text-danger" ErrorMessage="The last name field is required." />
            </div>
        </div>

     <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Address" CssClass="col-md-2 control-label">Address</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Address" CssClass="form-control" placeholder="Address" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Address"
                    CssClass="text-danger" ErrorMessage="The address field is required." />
            </div>
        </div>

         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Phone" CssClass="col-md-2 control-label">Phone</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Phone" CssClass="form-control" placeholder="Phone" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Phone"
                    CssClass="text-danger" ErrorMessage="The Phone field is required." />
            </div>
        </div>

      <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="PostalCode" CssClass="col-md-2 control-label">PostalCode</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="PostalCode" CssClass="form-control" placeholder="PostalCode" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="PostalCode"
                    CssClass="text-danger" ErrorMessage="The PostalCode field is required." />
            </div>
        </div>

     <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="City" CssClass="col-md-2 control-label">City</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="City" CssClass="form-control" placeholder="City" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="City"
                    CssClass="text-danger" ErrorMessage="The address field is required." />
            </div>
        </div>
    
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="State" CssClass="col-md-2 control-label">State</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="State" CssClass="form-control" placeholder="State" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="State"
                    CssClass="text-danger" ErrorMessage="The State field is required." />
            </div>
        </div>  

    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Country" CssClass="col-md-2 control-label">Country</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Country" CssClass="form-control" placeholder="Country" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Country"
                    CssClass="text-danger" ErrorMessage="The Country field is required." />
            </div>
        </div>

    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Country" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" placeholder="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The Email field is required." />
            </div>
        </div>
    </div>
     <asp:Button Text="checkout" CssClass="btn default" runat="server" OnClick="shippingDetails_Click" />
</asp:Content>
