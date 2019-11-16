<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="AdvanceTech.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2 class="jumbotron animated jello"><%: Title %></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal jumbotron animated zoomInUp">
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />


        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="fName" CssClass="col-md-2 control-label">First Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="fName" CssClass="form-control" placeholder="John" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="fName"
                    CssClass="text-danger" ErrorMessage="The first name field is required." />
            </div>
        </div>



        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="lName" CssClass="col-md-2 control-label">Last Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="lName" CssClass="form-control"  placeholder="Doe"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="lName"
                    CssClass="text-danger" ErrorMessage="The last name field is required." />
            </div>
        </div>

   

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" placeholder="johnDoe@email.com" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="format johnDoe@email.com" ControlToValidate="Email" CssClass="text-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>



        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="dob" CssClass="col-md-2 control-label">Date Of Birth</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="dob" CssClass="form-control" style="width:280px" TextMode="Date" />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="dob" ErrorMessage="you are too young" Operator="LessThan" Type="Date"  CssClass="text-danger"  Display="Dynamic"></asp:CompareValidator>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="dob" CssClass="text-danger" ErrorMessage="The dob field is required."  Display="Dynamic" />
            </div>
        </div>


        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="phone" CssClass="col-md-2 control-label">Phone</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="phone" CssClass="form-control" placeholder="###-###-####"/>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="format phone ###-###-####" Display="Dynamic" CssClass="text-danger" ControlToValidate="phone" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="phone"
                    CssClass="text-danger" ErrorMessage="The phone field is required."  Display="Dynamic" />
            </div>
        </div>



        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control"  placeholder="type password"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>


        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control"  placeholder="Re-type password" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
   
</asp:Content>
