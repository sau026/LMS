<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IssueBook.aspx.cs" Inherits="IssueBook" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat=server>
    
        <table align="center" class="style1" 
    style="height: 376px; width: 884px">
            <tr>
                <td class="style20" valign="top">
                    <table cellpadding="5" cellspacing="5" 
                        
                        
                        
                        
                        
                        
                        
                        style="width: 29%; z-index: 1; left: 253px; top: 243px; position: absolute; height: 267px;">
                        <tr>
                            <td class="style18" style="color: #000000" width="150">
                                Book Name</td>
                            <td class="style6">
                                <asp:DropDownList ID="DropDownListBN" runat="server" 
                                    DataSourceID="SqlDataSource1" DataTextField="Book_Name" 
                                    DataValueField="Book_Name" Width="180px" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownListBN_SelectedIndexChanged">
                                    <asp:ListItem>Select</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style18" width="150">
                                Available Stock</td>
                            <td class="style6">
                                <asp:TextBox ID="TextBoxAStock" runat="server" Width="180px" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style18" width="150">
                                Issue Stock</td>
                            <td class="style15">
                                <asp:TextBox ID="TextBoxIssueStock" runat="server" Width="180px" 
                                    ReadOnly="True">1</asp:TextBox>
                            </td>
                            <td class="style16">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17" width="150">
                                Username</td>
                            <td class="style12">
                                <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" 
                                    onselectionchanged="Calendar1_SelectionChanged1" ShowGridLines="True" 
                                    style="z-index: 1; left: 388px; top: -5px; position: absolute; height: 129px; width: 89px" 
                                    Visible="False">
                                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                    <OtherMonthDayStyle ForeColor="#CC9966" />
                                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                    <SelectorStyle BackColor="#FFCC66" />
                                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                                        ForeColor="#FFFFCC" />
                                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                </asp:Calendar>
                                <asp:DropDownList ID="DropDownUN" runat="server" AutoPostBack="True" 
                                    DataSourceID="SqlDataSource2" DataTextField="Username" 
                                    DataValueField="Username" 
                                    onselectedindexchanged="DropDownUN_SelectedIndexChanged" Width="180px">
                                </asp:DropDownList>
                            </td>
                            <td class="style13">
                            </td>
                        </tr>
                        <tr>
                            <td class="style18" width="150">
                                Current Date</td>
                            <td class="style6">
                                <asp:TextBox ID="TextBoxCDate" runat="server" Width="180px"></asp:TextBox>
                                <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" 
                                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" 
                                    onselectionchanged="Calendar2_SelectionChanged" ShowGridLines="True" 
                                    style="z-index: 1; left: 391px; top: 131px; position: absolute; height: 75px; width: 62px" 
                                    Visible="False">
                                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                    <OtherMonthDayStyle ForeColor="#CC9966" />
                                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                    <SelectorStyle BackColor="#FFCC66" />
                                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                                        ForeColor="#FFFFCC" />
                                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                </asp:Calendar>
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButtonCDate" runat="server" CausesValidation="False" 
                                    Height="19px" ImageUrl="~/Image/June-calendar.jpg" 
                                    onclick="ImageButtonCDate_Click" Width="17px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="TextBoxCDate" ErrorMessage="Field Required" ForeColor="Red" 
                                    
                                    
                                    style="z-index: 1; left: 374px; top: 161px; position: absolute; height: 24px; width: 127px;"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style18" width="150">
                                Return Date</td>
                            <td class="style6">
                                <asp:TextBox ID="TextBoxRDate" runat="server" Width="180px"></asp:TextBox>
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButtonReDate" runat="server" CausesValidation="False" 
                                    Height="19px" ImageUrl="~/Image/June-calendar.jpg" 
                                    onclick="ImageButtonReDate_Click" Width="17px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="TextBoxRDate" ErrorMessage="Field Required" ForeColor="Red" 
                                    
                                    
                                    style="z-index: 1; left: 375px; top: 199px; position: absolute; height: 24px; width: 124px;"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style18" width="150">
                            </td>
                            <td class="style9">
                                <input id="Reset1" type="reset" value="reset" onclick="return Reset1_onclick()" /><asp:Button ID="ButtonIssue" 
                                    runat="server" 
                                    
                                    
                                    
                                    
                                    style="background-color: #99CCFF; z-index: 1; left: -33px; top: 1px; position: relative; height: 29px; right: 33px;" Text="Issue book" 
                                    onclick="ButtonIssue_Click" />
                                </td>
                            <td class="style10">
                            </td>
                        </tr>
                    </table>
                    <asp:Image ID="Image1" runat="server" 
                        ImageUrl="~/Image/Depositphotos_9655826_original.jpg" 
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        style="left: 623px; top: 73px; position: relative; height: 194px; width: 224px" />
                    <table align="right" class="style7">
                        <tr>
                            <td>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [Username] FROM [UserData]">
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [Book_Name] FROM [Book]"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                    <div class="style13" 
                        style="width: 157px; z-index: 1; left: 589px; top: 183px; position: absolute; height: 38px">
                        <strong>Issue Book</strong></div>
                </td>
            </tr>
            </table>
    
 
    
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Reset1_onclick() {

        }

// ]]>
    </script>

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        #Reset1
        {
            z-index: 1;
            left: 117px;
            top: 1px;
            position: relative;
            width: 40px;
            height: 29px;
            background-color: #99CCFF;
        }
        .style7
        {
            z-index: 1;
            left: 848px;
            top: 459px;
            position: absolute;
            height: 72px;
            width: 191px;
        }
    .style12
    {
        color: #000066;
    }
    .style13
    {
        color: #000066;
        font-size: xx-large;
    }
    </style>
</asp:Content>

