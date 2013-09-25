﻿@using $rootnamespace$.Utility
@model DateTime?

@{
    DateTime dt;
    if (Model.HasValue)
    {
        dt = (DateTime)Model;
    }
    else
    {
        dt = DateTime.Now;
    }
}

<div class="form-group@(Html.ValidationErrorFor(m => m, " error has-error"))">
    @Html.LabelFor(m => m, new { @class = "control-label" })
    @Html.TextBoxFor(m => m, new { @class="form-control datepicker", data_provide="datepicker", data_date_language="globalize", data_date=dt, data_date_format=System.Globalization.CultureInfo.CurrentCulture.DateTimeFormat.ShortDatePattern.Replace("M", "m"), data_date_today_highlight="1", data_date_today_btn="1" })
    @Html.ValidationMessageFor(m => m, null, new { @class="help-block" })
</div>