<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 857px;
            width: 1263px;
            margin-right: 346px;
            background-color: #FFFFFF;
            z-index: 1;
            left: 16px;
            top: 21px;
            position: absolute;
        }
        .style7
        {
            width: 1124px;
            height: 120px;
        }
        .style8
        {
            width: 203px;
        }
        .style9
        {
            width: 823px;
        }
        .style10
        {
            width: 1126px;
            height: 298px;
        }
        .style11
        {
            width: 214px;
            height: 290px;
        }
        .style12
        {
            width: 1125px;
            height: 110px;
        }
        .style13
        {
            width: 213px;
        }
        .style38
        {
            width: 201px;
            height: 20px;
        }
        .style41
        {
            width: 110px;
            height: 20px;
        }
        .style43
        {
            height: 290px;
        }
        .style45
        {
            width: 411px;
            height: 290px;
        }
        .style58
        {
            width: 11%;
            z-index: 1;
            left: 964px;
            top: 224px;
            position: absolute;
            height: 95px;
        }
        .style62
        {
            width: 110px;
            height: 7px;
            text-align: right;
        }
        .style63
        {
            width: 201px;
            height: 7px;
            text-align: left;
        }
        .style66
        {
            width: 110px;
            height: 11px;
            text-align: right;
        }
        .style67
        {
            width: 201px;
            height: 11px;
            text-align: left;
        }
        .style68
        {
            width: 201px;
            height: 13px;
        }
        .style69
        {
            width: 110px;
            height: 13px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table class="style7">
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style9" 
                style="background-color: #99CCFF; background-image: url('Image/banner2.jpg');">
                &nbsp;</td>
        </tr>
    </table>
    <table cellspacing="5" class="style10">
        <tr>
            <td class="style11">
                </td>
            <td style="background-color: #FFFFFF" valign="baseline" class="style43">
                <table style="width: 24%; z-index: 1; left: 661px; top: 220px; position: absolute; height: 125px; margin-top: 4px; bottom: 508px;" 
                    cellpadding="0" cellspacing="5">
                    <tr>
                        <td class="style62">
                            Username</td>
                        <td class="style63">
                            <asp:TextBox ID="TextBoxUN" runat="server" 
                                style="z-index: 1; left: 114px; top: 7px; position: absolute; text-align: left;" 
                                Width="180px" ontextchanged="TextBoxUN_TextChanged" Height="17px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style66">
                            Password</td>
                        <td class="style67">
                            <asp:TextBox ID="TextBoxPass" runat="server" 
                                style="z-index: 1; left: 114px; top: 37px; position: absolute; text-align: left; bottom: 57px;" 
                                Width="180px" TextMode="Password" Height="17px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style69" valign="baseline">
                            Login As</td>
                        <td class="style68">
                            <asp:Button ID="BtnLogin" runat="server" 
                                style="z-index: 1; left: 115px; top: 100px; position: absolute; width: 60px; height: 26px;" 
                                Text="Login" onclick="Button2_Click" />
                            <asp:DropDownList ID="DropDownListLoginAs" runat="server" 
                                
                                style="z-index: 1; left: 115px; top: 65px; position: absolute; height: 22px; width: 119px; text-align: left" 
                                Height="18px">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Student</asp:ListItem>
                                <asp:ListItem>Admin</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style41">
                            <asp:LinkButton ID="LinkButtonNewuser" runat="server" 
                                
                                style="z-index: 1; left: 39px; top: 145px; position: absolute; text-align: right" 
                                onclick="LinkButtonNewuser_Click" CausesValidation="False">NewUser</asp:LinkButton>
                        </td>
                        <td class="style38">
                            <asp:LinkButton ID="LinkButtonFpassword" runat="server" 
                                
                                style="z-index: 1; top: 145px; position: absolute; width: 108px; left: 184px; height: 19px;" 
                                CausesValidation="False" onclick="LinkButtonFpassword_Click">ForgotPassword</asp:LinkButton>
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                                
                                style="z-index: 1; left: 215px; top: 99px; position: absolute; bottom: -1px; height: 26px; margin-top: 1px;" 
                                Text="Cancle" Width="60px" CausesValidation="False" />
                        </td>
                    </tr>
                </table>
                <table class="style45">
                    <tr>
                        <td style="background-color: #FFFFFF" valign="top">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/livros.jpg" 
                                
                                style="z-index: 1; left: -2px; top: 2px; position: relative; width: 404px; height: 290px" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBoxUN" ErrorMessage="Required Username" 
                                
                                style="top: 230px; left: 967px; position: absolute; height: 19px; width: 143px" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBoxPass" ErrorMessage="Required Password" 
                                
                                style="top: 264px; left: 969px; position: absolute; height: 22px; width: 142px" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <table align="right" class="style58">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBoxPass" ErrorMessage="Required Password" 
                                
                                style="top: 258px; left: 968px; position: absolute; height: 22px; width: 142px" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ControlToValidate="DropDownListLoginAs" ErrorMessage="Select Login As" 
                                            ForeColor="Red" InitialValue="--Select--" 
                                            style="z-index: 1; left: 6px; top: 67px; position: absolute; height: 22px"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table cellspacing="5" class="style12">
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td style="background-color: #99CCFF; background-image: url('Image/down banner.jpg');">
                &nbsp;</td>
        </tr>
    </table>
    <br />
    </div>
    </form>
</body>
</html>
