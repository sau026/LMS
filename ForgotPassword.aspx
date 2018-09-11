<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 613px;
        }
        .style1
        {
            width: 900px;
            height: 406px;
        }
        .style2
        {
            height: 100px;
            font-size: xx-large;
            text-align: center;
            background-color: #66A7EE;
        }
        .style3
        {
            height: 290px;
        }
        .style4
        {
            height: 50px;
        }
        .style5
        {
            width: 36%;
            height: 185px;
            top: 44px;
            left: 63px;
            position: relative;
        }
        .style6
        {
            height: 38px;
        }
        .style7
        {
            height: 34px;
            text-decoration: underline;
            font-size: x-large;
        }
        .style8
        {
            height: 40px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" cellpadding="5" class="style1">
        <tr>
            <td class="style2">
                <strong>Forgot Password</strong></td>
        </tr>
        <tr>
            <td class="style3" valign="top">
                <table align="left" class="style5">
                    <tr>
                        <td class="style7">
                            <strong>Can&#39;t login? Forget your password?</strong></td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Enter your email address below and we&#39;ll send you password.<div 
                                style="z-index: 1; left: 548px; top: -21px; position: absolute; height: 234px; width: 251px; background-color: #6699FF">
                                <asp:Image ID="Image1" runat="server" Height="215px" 
                                    ImageUrl="~/Image/12-20-54-images.jpg" 
                                    style="z-index: 1; left: 9px; top: 9px; position: absolute" Width="232px" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>Enter your email address</strong></td>
                                </tr>
                                <tr>
                                    <td class="style8">
                                        <asp:TextBox ID="TextBox1" runat="server" Width="406px" Height="22px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" Text="Send me password" Width="150px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                            <br />
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="style4" style="background-color: #3591EC">
                        </td>
                    </tr>
                </table>
    </form>
</body>
</html>
