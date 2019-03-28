<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="PictureManage.Upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
        <h1 class="textAlign" style="color: #008000">Upload Image Using ASP.NET</h1>
        <p class="textAlign" style="color: #008000">&nbsp;</p>
    </div>
    <div>
        <table align="center" cellpadding="3" cellspacing="3" style="width: 941px; height: 159px">
            <tr>
                <td style="height: 56px; width: 469px">
                    <asp:Label ID="Label1" runat="server" Font-Size="20px" Text="請輸入您的姓名"></asp:Label>
                </td>
                <td style="height: 56px; width: 469px">
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 56px; width: 469px">
                    <asp:Label ID="Label2" runat="server" Font-Size="20px" Text="請選擇您要上傳的圖片"></asp:Label>
                </td>
                <td style="height: 56px; width: 469px">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="380px" />
                </td>
            </tr>
            <tr>
                <td class="textAlign" colspan="2" style="height: 44px">
                    <br />
                    <asp:Button ID="ButtonUpload" runat="server" Height="34px" OnClick="ButtonUpload_Click" Text="Upload" Width="90px" />
                    <br />
                    <br />
                    <asp:Label ID="LabelMessage" runat="server"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Display.aspx">Go to View Picture</asp:HyperLink>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Image]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>