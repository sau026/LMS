<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat=server>
    
        <table align="center" class="style1" style="height: 322px">
            <tr>
                <td class="style23">
                    <table align="left" cellspacing="2" class="style5" 
                        
                        
                        
                        
                        style="position: absolute; top: 221px; left: 266px; height: 231px; width: 14%; z-index: 1;">
                        <tr><td class="style20"<font size="+1" color="#000000">
                            <a href="AdminPage.aspx" 
                                class="style22">
                            <b style="color: #000000"><span class="style19">Home</span></b></a><span 
                                class="style19"></font></span></td></tr>
                        <tr><td class="style20"<font size="+1" color="#000000">
                            <a href="AddBook.aspx" 
                                class="style22">
                            <b class="style18"><span class="style19">Add Book</span></b></a><span class="style14"><span 
                                class="style19"></font></span></span></td></tr> 
                                
                        
                        
                           
                        
                        <tr><td class="style20"<font size="+1" color="#000000">
                            <a href="ManageBook.aspx" 
                                class="style22">
                            <span class="style8">Manage Book</span></a><span class="style19"></font></span></td></tr>
                         <tr><td class="style20"<font size="+1" color="#000000">
                             <a href="IssueBook.aspx" 
                                 class="style22">
                             <span class="style8">Issue Book</span></a><span class="style19"></font></span></td></tr>
                        </tr> <tr><td class="style20"<font size="+1" color="#000000">
                            <a href="ReturnBook.aspx" class="style22">
                            <span class="style8">Return Book</span></a><span class="style19"></font></span></td></tr>
                        <tr><td class="style20"<font size="+1" color="#000000">
                            <a href="Manager.aspx" 
                                class="style22">
                            <span class="style8">Manage Student</span></a><span class="style19"></font></span></td></tr>
                         <tr><td class="style20"<font size="+1" color="#000000">
                             <a href="ManageIssued.aspx" 
                                 class="style22">
                             <span class="style8">All Report</span></a><span class="style19"></font></span></td></tr>
                        </table>
                    <asp:Label ID="Label1" runat="server" 
                        style="z-index: 1; left: 555px; top: 205px; position: absolute; width: 520px; font-size: xx-large; font-weight: 700; text-align: center; color: #FFFFFF; background-color: #0000CC" 
                        Text="Welcome To The Library"></asp:Label>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/books.jpg" 
                        
                        
                        
                        
                        
                        
                        style="z-index: 1; left: 556px; top: 244px; position: absolute; height: 231px; width: 519px" />
                    <asp:Label ID="Label2" runat="server" 
                        style="z-index: 1; top: 177px; position: absolute; width: 171px; color: #000000; text-align: right; height: 20px; font-weight: 700; font-size: large; left: 902px; background-color: #FFFF99" 
                        Text="Label"></asp:Label>
                </td>
            </tr>
            </table>
    </asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style5
    {
        background-color: #FFFFFF;
    }
    .style18
    {
        color: #000000;
    }
    .style8
    {
        color: #000000;
        font-weight: 700;
        font-size: x-large;
    }
    .style19
    {
        font-size: x-large;
    }
    .style20
    {
        font-size: x-large;
        text-align: center;
        background-color: #0000FF;
    }
    .style22
    {
        text-decoration: none;
    }
    .style23
    {
        height: 289px;
    }
</style>
</asp:Content>


