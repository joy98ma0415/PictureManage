<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="PictureManage.Display" %>

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
        <h1 class="textAlign" style="color: #008000">Display Image Using ASP.NET</h1>
        <p class="textAlign" style="color: #008000">&nbsp;</p>
        <p class="textAlign" style="color: #008000">
            <asp:Button ID="ButtonDisplay" runat="server" Font-Names="Comic Sans MS" Font-Size="18px" OnClick="ButtonDisplay_Click" Text="Display Image" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonBack" runat="server" Font-Names="Comic Sans MS" Font-Size="18px" OnClick="ButtonBack_Click" Text="Back DefaultPage" />
        </p>
        <p class="textAlign" style="color: #008000">&nbsp;</p>
    </div>
    <div>

        <div class="textAlign">
            <asp:GridView ID="GridView1" runat="server" Width="600px" Height="200px" CellPadding="3" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="編號" />
                    <asp:BoundField DataField="name" HeaderText="上傳者姓名" />
                    <asp:TemplateField HeaderText="上傳的圖片">
                        <ItemTemplate>
                            <asp:Image runat="server" Width="400px" Height="200px" ImageUrl='<%#"data:Image/jpg;base64,"+Convert.ToBase64String((byte [])Eval("image")) %>'></asp:Image>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <br />
            <br />
        </div>
    </div>
</asp:Content>