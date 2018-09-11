<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat=server>
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

    <table cellpadding="5" class="style1">
        <tr>
            <td class="style8">
                <table style="width: 27%; z-index: 1; left: 235px; top: 241px; position: absolute; height: 286px;">
                    <tr>
                        <td class="style13">
                            Username:</td>
                        <td class="style19">
                            <asp:TextBox ID="TextBoxUN" runat="server" 
                                style="z-index: 1; left: 156px; top: 7px; position: absolute" 
                                Width="180px" AutoPostBack="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            Your Email:</td>
                        <td class="style19">
                            <asp:TextBox ID="TextBoxEmail" runat="server" 
                                style="z-index: 1; left: 156px; top: 37px; position: absolute" 
                                Width="180px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            Phone No:</td>
                        <td class="style19">
                            <asp:TextBox ID="TextBoxPh_No" runat="server" 
                                style="z-index: 1; left: 155px; top: 69px; position: absolute" 
                                Width="180px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            Gender:</td>
                        <td class="style19">
                            <asp:DropDownList ID="DropDownListSex" runat="server" 
                                style="z-index: 1; left: 156px; top: 99px; position: absolute" 
                                Width="130px">
                                <asp:ListItem>select sex</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style14">
                            Country:</td>
                        <td class="style15">
                            <asp:DropDownList ID="DropDownListCountry" runat="server" 
                                style="z-index: 1; left: 157px; top: 130px; position: absolute" 
                                Width="130px">
                                <asp:ListItem>Select Country</asp:ListItem>
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>Usa</asp:ListItem>
                                <asp:ListItem>Uk</asp:ListItem>
                                <asp:ListItem>Pakistan</asp:ListItem>
                                <asp:ListItem>Nepal</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            Password:</td>
                        <td class="style19">
                            <asp:TextBox ID="TextBoxPass" runat="server" 
                                style="z-index: 1; left: 158px; top: 163px; position: absolute" 
                                Width="180px" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            Confirm Password:</td>
                        <td class="style19">
                            <asp:TextBox ID="TextBoxCpass" runat="server" 
                                style="z-index: 1; left: 157px; top: 195px; position: absolute" 
                                Width="180px" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="regis_Submit" runat="server" 
                                style="z-index: 1; left: 159px; top: 225px; position: absolute; width: 61px; height: 29px; right: 130px;" 
                                Text="Submit" onclick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            &nbsp;</td>
                    </tr>
                </table>
                            <table 
                    align="center" class="style23">
                    <tr>
                        <td class="style26">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="DropDownListSex" ErrorMessage="Gender Required" 
                                ForeColor="Red" InitialValue="select sex" 
                                style="top: 99px; left: 5px; position: absolute; width: 141px"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBoxEmail" ErrorMessage="Email Required" ForeColor="Red" 
                                style="top: 38px; left: 3px; position: absolute; width: 141px; bottom: 162px"></asp:RequiredFieldValidator>
                            <input id="Reset1" type="reset" value="reset" /></td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="TextBoxEmail" ErrorMessage="Invalid Email" ForeColor="Red" 
                                style="z-index: 1; left: 79px; top: 39px; position: absolute; width: 101px; height: 19px;" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style26">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBoxPh_No" ErrorMessage="Phone No Required" 
                                ForeColor="Red" 
                                style="top: 68px; left: 2px; position: absolute; width: 141px; bottom: 132px"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="DropDownListCountry" ErrorMessage="Country Required" 
                                ForeColor="Red" InitialValue="Select Country" 
                                style="top: 130px; left: 3px; position: absolute; width: 141px; bottom: 70px"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="TextBoxUN" ErrorMessage="Username Required" ForeColor="Red" 
                                
                                
                                style="top: 6px; left: 4px; position: absolute; width: 161px; bottom: 190px"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="TextBoxPass" ErrorMessage="Password Required" 
                                ForeColor="Red" 
                                style="top: 160px; left: 3px; position: absolute; width: 141px; bottom: 40px"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style26">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="TextBoxCpass" ErrorMessage="C Pass Required" ForeColor="Red" 
                                
                                
                                style="top: 190px; left: 5px; position: absolute; width: 117px; bottom: 10px"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="TextBoxPass" ControlToValidate="TextBoxCpass" 
                                ErrorMessage="Password not matched" ForeColor="Red" 
                                
                                
                                style="z-index: 1; left: 49px; top: 191px; position: absolute; width: 149px"></asp:CompareValidator>
                        </td>
                    </tr>
                </table>
                <table align="center" class="style25">
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" 
                                runat="server">
                            
                        
                        
</asp:ToolkitScriptManager>
                    <asp:PasswordStrength ID="PasswordStrength1" runat="server" 
                        MinimumSymbolCharacters="1" PreferredPasswordLength="6" 
                        TargetControlID="TextBoxPass">
                    </asp:PasswordStrength>
                </table>
                <table align="right" class="style16">
                    <tr>
                        <td class="style27">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/aaasa.png" 
                                
                                
                                
                                style="z-index: 1; left: 802px; top: 246px; position: absolute; height: 262px; width: 261px" />
                            <div class="style21" 
                                style="width: 306px; height: 40px; z-index: 1; left: 537px; top: 183px; position: absolute; right: 452px; color: #FFFFFF; background-color: #FFFFFF">
                                <strong style="color: #000066; background-color: #FFFFFF">Student Registration</strong></div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        </table>
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        #Reset1
        {
            z-index: 1;
            left: -113px;
            top: 225px;
            position: absolute;
            height: 29px;
        }
        .style23
        {
            z-index: 1;
            left: 591px;
            top: 241px;
            position: absolute;
            height: 219px;
            width: 203px;
        }
        .style25
        {
            z-index: 1;
            left: 570px;
            top: 463px;
            position: absolute;
            height: 39px;
            width: 268px;
        }
        .style26
        {
            width: 124px;
        }
        .style16
        {
            height: 229px;
            width: 295px;
        }
    .style27
    {
        height: 251px;
    }
        .style21
        {
            font-size: xx-large;
        }
    </style>
</asp:Content>
