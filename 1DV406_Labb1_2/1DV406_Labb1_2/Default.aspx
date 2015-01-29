<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_1DV406_Labb1_2.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>>Marco - Labb1.2 </title>

    <link rel="stylesheet" href="Style.css" media="screen">
    <script src="Script.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <div id="inramning">

            <div id="kr">

                <!-- text-->
                <asp:Label ID="Label3" runat="server" Text="Total Köpsumma"></asp:Label>

                <!-- textruta-->
                <p>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </p>

                <div id="text">kr</div>


                
                    <!-- Validering: Kontrollerar om något matats in i textboxsen-->
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="fell!!! text rutan får inte var tom"
                        ControlToValidate="TextBox1" Display="Dynamic">
                    </asp:RequiredFieldValidator>

                    <div id="val1">

                        <!-- Validering: Kontrollerar om det in matade värdet är större än 0 -->
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Köpet måste vara större än 0" ControlToValidate="TextBox1"
                            Type="Double" ValueToCompare="0" Operator="GreaterThan" Display="Dynamic"> 
                        </asp:CompareValidator>

                    </div>

                    <div id="val2">

                        <!-- Validering: Kontrollerar om det in matade värdet är mindre än 10000000 -->
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="För stort belopp eller ogiltigt värde" ControlToValidate="TextBox1"
                            Type="Double" ValueToCompare="10000000" Operator="LessThan" Display="Dynamic">
                        </asp:CompareValidator>

                    </div>

                    <!-- knap-->
                    <p>
                        <asp:Button ID="Button1" runat="server" Text="Rabatt" OnClick="Button1_Click" />
                    </p>

                </div>

            <div id="kvitto">

                <!-- kvito-->
                <asp:Panel ID="kvitoPanel" runat="server" Visible="false">
                    <h2>Marcos Gym</h2>
                    <p>Träning och kost</p>
                    <p>Tel: 070-6880589</p>
                    <p>Öppettider: 7-24</p>
                    <p>-----------------------------------</p>

                    <asp:Label ID="TotalTitleLabel" runat="server" Text="Totalt"></asp:Label>
                    <asp:Label ID="TotalLabel" runat="server" Text=""></asp:Label><br />

                    <asp:Label ID="DiscountTitleLabel" runat="server" Text="Rabattsats"></asp:Label>
                    <asp:Label ID="DiscountLabel" runat="server" Text=""></asp:Label><br />

                    <asp:Label ID="SavingTitleLabel" runat="server" Text="Rabatt"></asp:Label>
                    <asp:Label ID="SavingLabel" runat="server" Text=""></asp:Label><br />

                    <asp:Label ID="ToPayTitleLabel" runat="server" Text="Att betala"></asp:Label>
                    <asp:Label ID="ToPayLabel" runat="server" Text=""></asp:Label><br />

                    <p>-----------------------------------</p>
                    <p>ORG.NR: 880519-XXXX</p>

                </asp:Panel>
            </div>

        </div>
    </form>
</body>
</html>
