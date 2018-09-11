<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageStudent.master" AutoEventWireup="true" CodeFile="StudentIssueBook.aspx.cs" Inherits="StudentIssueBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style13
    {
        font-size: xx-large;
        text-align: center;
        color: #000066;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="style13" 
    style="height: 267px; width: 881px; z-index: 1; left: 205px; top: 186px; position: absolute">
    <strong>Your Issued Book<br />
    <asp:GridView ID="GridView1" runat="server" 
        
            style="position: relative; top: 22px; left: 1px; height: 150px; width: 734px; font-size: large">
    </asp:GridView>
    </strong>
    <div style="z-index: 1; left: 636px; top: 217px; position: absolute; height: 36px; width: 210px">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </div>
</div>
</asp:Content>

