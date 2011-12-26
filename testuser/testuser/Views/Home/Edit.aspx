<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<testuser.Models.users>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Edit</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.id) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.id) %>
                <%: Html.ValidationMessageFor(model => model.id) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.first_name) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.first_name) %>
                <%: Html.ValidationMessageFor(model => model.first_name) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.lastname) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.lastname) %>
                <%: Html.ValidationMessageFor(model => model.lastname) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.city) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.city) %>
                <%: Html.ValidationMessageFor(model => model.city) %>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

