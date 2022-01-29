<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegPage.aspx.cs" Inherits="RegForm1.RegPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td class="auto-style2"><strong>ENTER YOUR DETAILS</strong></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Enter your name"></asp:Label>
                    <asp:TextBox ID="personname" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Enter your phone number"></asp:Label>
                    <asp:TextBox ID="phNumber" runat="server"></asp:TextBox>
               </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Enter Email"></asp:Label>
                    <asp:TextBox ID="emailId" runat="server" TextMode="Email" Width="348px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="emailId" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Enter DOB"></asp:Label>
                    <asp:Calendar  ID="dateofbirth" placeholder="Select Your Date Of Birth" runat="server" SelectionMode="DayWeekMonth"></asp:Calendar>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>                  
                    <asp:DropDownList ID="gend" runat="server">
                    <asp:ListItem Enabled="true" Text="Select gender" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="M" Value="1"></asp:ListItem>
                    <asp:ListItem Text="F" Value="2"></asp:ListItem>
                    </asp:DropDownList>                    
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="50px" OnClick="Button1_Click1" Text="Submit" Width="306px" />
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
