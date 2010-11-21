﻿<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<TicketDesk.Domain.Models.Ticket>" %>
<%@ Import Namespace="TicketDesk.Web.Client.Helpers" %>
<% 
    var controller = ViewContext.Controller as TicketDesk.Web.Client.Controllers.ApplicationController;
%>
--------------------------------------------------------------------------
<%= Html.DisplayPaddedNameFor(m => m.TicketId, 23)%>: <%= Html.DisplayLimitedValueFor(m => m.TicketId, 50)%>
<%= Html.DisplayPaddedNameFor(m => m.CurrentStatus, 23)%>: <%= Html.DisplayLimitedValueFor(m => m.CurrentStatus, 50)%>
--------------------------------------------------------------------------

<%= Html.DisplayPaddedNameFor(m => m.Title, 23)%>: <%= Html.DisplayLimitedValueFor(m => m.Title, 50)%>

<%= Html.DisplayPaddedNameFor(m => m.Priority, 23)%>: <%= Html.DisplayLimitedValueFor(m => m.Priority, 50)%>
<%= Html.DisplayPaddedNameFor(m => m.AssignedTo, 23)%>: <%= Html.DisplayLimitedValue(Model.GetAssignedToDisplayName(controller), 50)%>
<%= Html.DisplayPaddedNameFor(m => m.Owner, 23)%>: <%= Html.DisplayLimitedValue(Model.GetOwnerDisplayName(controller), 50)%>
<%= Html.DisplayPaddedNameFor(m => m.CurrentStatusSetBy, 23)%>: <%= Html.DisplayLimitedValue(Model.GetCurrentStatusByDisplayName(controller), 50)%>
<%= Html.DisplayPaddedNameFor(m => m.CurrentStatusDate, 23)%>: <%= Html.DisplayLimitedValue(Model.CurrentStatusDate.ToShortDateString() + Model.CurrentStatusDate.ToShortTimeString(), 50)%>
<%= Html.DisplayPaddedNameFor(m => m.CreatedBy, 23)%>: <%= Html.DisplayLimitedValue(Model.GetCreatedByDisplayName(controller), 50)%>
<%= Html.DisplayPaddedNameFor(m => m.CreatedDate, 23)%>: <%= Html.DisplayLimitedValue(Model.CreatedDate.ToShortDateString() + Model.CreatedDate.ToShortTimeString(), 50)%>

--------------------------------------------------------------------------
<%= Html.DisplayPaddedNameFor(m => m.Details, 23)%>: 
--------------------------------------------------------------------------
<% 
    var content = Html.WordWrapText(Html.DisplayLimitedValueFor(m => m.Details, 250).ToString(), 50);
    var contentLines = content.Split(new[]{"\n"}, StringSplitOptions.None);
    foreach (var line in contentLines)
    {
%>
<%= string.Empty.PadLeft(25) + line %>
<%
}
%>
--------------------------------------------------------------------------

