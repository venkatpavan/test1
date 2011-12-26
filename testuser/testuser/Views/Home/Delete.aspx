<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<testuser.Models.users>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Delete</h2>

    <h3>Are you sure you want to delete this?</h3>
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
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Delete" /> |
		    <%: Html.ActionLink("Back to List", "Index") %>
        </p>
    <% } %>

</asp:Content>

