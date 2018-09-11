<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReturnBook.aspx.cs" Inherits="ReturnBook" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat=server>
    <table align="center" class="style1" style="height: 332px">
        <tr>
            <td class="style3">
                <table class="style5" 
                    style="height: 242px; width: 38%; z-index: 1; left: 356px; top: 245px; position: absolute">
                    <tr>
                        <td class="style6">
                            Username</td>
                        <td class="style7">
                            <asp:DropDownList ID="DropDownListUN" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="Username" 
                                DataValueField="Username" Width="180px" AutoPostBack="True" 
                                onselectedindexchanged="DropDownListUN_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                onclick="LinkButton1_Click">Check Issued Book</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Book Name</td>
                        <td class="style7">
                            <asp:DropDownList ID="DropDownListBN" runat="server" AutoPostBack="True" 
                                DataSourceID="SqlDataSource2" DataTextField="Book_Name" 
                                DataValueField="Book_Name" Width="180px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Issue Date</td>
                        <td class="style7">
                            <asp:TextBox ID="TextBox1IssueDate" runat="server" Width="180px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Return Date</td>
                        <td class="style7">
                            <asp:TextBox ID="TextBoxReturnDate" runat="server" Width="180px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Available Stock</td>
                        <td class="style10">
                            <asp:TextBox ID="TextBoxAStock" runat="server" Width="180px"></asp:TextBox>
                        </td>
                        <td class="style11">
                            </td>
                    </tr>
                    <tr>
                        <td class="style12">
                            No. of Copies To Return</td>
                        <td class="style13">
                            <asp:TextBox ID="TextBoxCopiesReturn" runat="server" Width="180px" 
                                ReadOnly="True">1</asp:TextBox>
                        </td>
                        <td class="style14">
                <table align="right" class="style8">
                    <tr>
                        <td>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                                SelectCommand="SELECT [Book_Name] FROM [Book]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" 
                                SelectCommand="SELECT DISTINCT [Username] FROM [IssueBook]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            &nbsp;</td>
                        <td class="style7">
                            <asp:Button ID="ButtonReturn" runat="server" 
                                style="z-index: 1; left: 181px; top: 210px; position: absolute; width: 110px; right: 201px; background-color: #99CCFF; height: 31px;" 
                                Text="Return" onclick="ButtonReturn_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <div class="style13" 
                    style="width: 199px; z-index: 1; left: 569px; top: 183px; position: absolute; height: 34px">
                    <strong>Return Book</strong></div>
            </td>
        </tr>
        </table>
        </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style8
    {
        z-index: 1;
        left: 502px;
        top: 72px;
        position: absolute;
        height: 84px;
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
