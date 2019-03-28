<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PictureManage._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function getWidth() {
            var intViewportWidth = window.innerWidth;
            var w = window.innerWidth;
            var h = window.innerHeight;
            var ow = window.outerWidth; //including toolbars and status bar etc.
            var oh = window.outerHeight;
            if (window.matchMedia("(min-width: 400px)").matches) {
                /* the viewport is at least 400 pixels wide */
            }
            else {
                /* the viewport is less than 400 pixels wide */
            }
            if (self.innerWidth) {
                return self.innerWidth;
            }
            if (document.documentElement && document.documentElement.clientWidth) {
                return document.documentElement.clientWidth;
            }
            if (document.body) {
                return document.body.clientWidth;
            }
        }
    </script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script type="text/javascript">
        $(function () {
            // See if this is a touch device
            if ('ontouchstart' in window) {
                // Set the correct body class
                $('body').removeClass('no-touch').addClass('touch');

                // Add the touch toggle to show text
                $('div.boxInner img').click(function () {
                    $(this).closest('.boxInner').toggleClass('touchFocus');
                });
            }
        });
    </script>

    <asp:Table ID="Table1" runat="server" Height="85" BackColor="SkyBlue"></asp:Table>
    <div>
        <h1 class="textAlign" style="color: #009900">Picture Management Using ASP.NET</h1>
        <p class="textAlign" style="color: #009900">&nbsp;</p>
    </div>
    <div>
        <table align="center" cellpadding="3" cellspacing="3" style="width: 80%">
            <tr>
                <td class="textAlign">
                    <asp:Button ID="ButtonUpload" runat="server" CssClass="style6" Height="35px" OnClick="ButtonUpload_Click" style="font-size: medium" Text="Upload" Width="100px" />
                </td>
                <td class="textAlign">
                    <asp:Button ID="ButtonDisplay" runat="server" Height="35px" OnClick="ButtonDisplay_Click" style="font-size: medium" Text="Display" Width="100px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>