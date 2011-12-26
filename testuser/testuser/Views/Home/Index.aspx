<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<testuser.Models.users>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            <th>
                id
            </th>
            <th>
                first_name
            </th>
            <th>
                lastname
            </th>
            <th>
                city
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.id }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.id })%> 
            <td>
                <%: item.id %>
            </td>
            <td>
                <%: item.first_name %>
            </td>
            <td>
                <%: item.lastname %>
            </td>
            <td>
                <%: item.city %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

