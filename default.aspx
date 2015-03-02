<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="hw5StyleSheet.css" />
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    Anthony's Mortgage Calculator
        
        <br /><br />
        
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
         <br /><br />
        <asp:Button ID="btn_clear" runat="server" Text="Clear" Width="84px" />
        
        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        <% If Not IsPostBack Then%>
        <p> Welcome to my mortgage calculator. Please complete the fields above to have your monthly payment and loan repayment schedule calculated for you.</p>
   
         <%Else%>
        
        
        <br /><br />
                
        Monthly Payment: &nbsp;<span class="bold"> <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label></span>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview" >
            <AlternatingRowStyle CssClass="alt" />
        </asp:GridView>
           
        <%End If%>
        </div>
    </form>
</body>
</html>
