<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="RoyalRoute.Public.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
    
    </div>
    </form>
    <script src="../User/bknAssets/js/jquery-2.1.3.min.js"></script>
    <script src="../User/bknAssets/js/jquery-ui.js"></script>
    <script type="text/javascript">
        //$(function () {
           
        //    $("#txtDate").datepicker();

        //});
        //$(function () {
        //    $('#txtDate').datepicker(
        //    {
        //        dateFormat: 'dd/mm/yy',
        //        changeMonth: true,
        //        changeYear: true,
        //        yearRange: '1950:2100'
        //    });
        //})
        //$(document).ready(function () {
        //    $('#txtDate').datepicker({
        //        dateFormat: 'dd/mm/yy'
        //    });

        //});
        </script>
    <script type="text/javascript">
        $(function () {
            $.datepicker.regional['it'] = {
                closeText: 'Chiudi',
                prevText: '&#x3c;Prec',
                nextText: 'Succ&#x3e;',
                currentText: 'Oggi',
                monthNames: ['Gennaio', 'Febbraio', 'Marzo', 'Aprile', 'Maggio', 'Giugno',
                    'Luglio', 'Agosto', 'Settembre', 'Ottobre', 'Novembre', 'Dicembre'],
                monthNamesShort: ['Gen', 'Feb', 'Mar', 'Apr', 'Mag', 'Giu',
                    'Lug', 'Ago', 'Set', 'Ott', 'Nov', 'Dic'],
                dayNames: ['Domenica', 'Luned&#236', 'Marted&#236', 'Mercoled&#236',
                   'Gioved&#236', 'Venerd&#236', 'Sabato'],
                dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mer', 'Gio', 'Ven', 'Sab'],
                dayNamesMin: ['Do', 'Lu', 'Ma', 'Me', 'Gi', 'Ve', 'Sa'],
                weekHeader: 'Sm',
                dateFormat: 'dd/mm/yy',
                firstDay: 1,
                isRTL: false,
                showMonthAfterYear: false,
                yearSuffix: ''
            };

            $.datepicker.setDefaults($.datepicker.regional['it']);

            $('#txtDate').datepicker();
        });
</script>
</body>
</html>
