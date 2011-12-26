<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<testuser.Models.users>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">id</div>
        <div class="display-field"><%: Model.id %></div>
        
        <div class="display-label">first_name</div>
        <div class="display-field"><%: Model.first_name %></div>
        
        <div class="display-label">lastname</div>
        <div class="display-field"><%: Model.lastname %></div>
        
        <div class="display-label">city</div>
        <div class="display-field"><%: Model.city %></div>
        
    </fieldset>
    <p>

        <%: Html.ActionLink("Edit", "Edit", new { id=Model.id }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>

