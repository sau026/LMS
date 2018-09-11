<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentPage.aspx.cs" Inherits="StudentPage" MasterPageFile="~/MasterPage.master" %>
<asp:Content ID=Content1 ContentPlaceHolderID=ContentPlaceHolder1 runat=server>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 655px;
        }
        .style1
        {
            width: 641px;
            height: 250px;
        }
        .style2
        {
            height: 100px;
            background-color: #609DE8;
        }
        .style3
        {
            height: 300px;
            background-color: #FFFFFF;
        }
        .style4
        {
            height: 50px;
            background-color: #609DE8;
        }
        .style5
        {
            width: 18%;
            z-index: 1;
            left: 350px;
            top: 119px;
            position: absolute;
            height: 152px;
        }
        .style6
        {
            font-size: x-large;
            font-weight: bold;
            background-color: #0066FF;
        }
    </style>
        <table align="center" class="style1">
            <tr>
                <td class="style3">
                    <table align="left" class="style5">
                        <tr>
                            <td class="style6">
                                View Profile</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Search Book</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Issue Book Details</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Change Password</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                Logout</td>
                        </tr>
                    </table>
                </td>
            </tr>
            </table>
    
</html>
</asp:Content>