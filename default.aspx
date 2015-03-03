<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="hw5StyleSheet.css" />
    <title>Anthony's Mortgage Calculator</title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
    Anthony's Mortgage Calculator
     </h1>  
        <hr />
        <table>
            <tr>
                <td align="right">
        Loan Amount:</td> <td align="left"><asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  </td><td> <asp:RequiredFieldValidator ID="rfv_amount" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="**Please enter loan amount"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="rev_loanAmount" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="**Enter a valid loan amount" ValidationExpression="^(\$|)([1-9]\d{0,2}(\,\d{3})*|([1-9]\d*))(\.\d{2})?$"></asp:RegularExpressionValidator></td>
            </tr>
             
       <tr>
           <td align="right">Annual Interest %:&nbsp</td> <td align="left"><asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox></td>
           <td>&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="**Enter interest in percent"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="rev_interest" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="**Enter a valid interest rate" ValidationExpression="^\d{1,2}$"></asp:RegularExpressionValidator>
        </td>
        </tr>
        
       <tr>
           <td align="right">Loan Term (Yrs):</td> <td align="left"> <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox></td>
           <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="**Enter term in years"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="rev_term" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="**Enter a valid term in years" ValidationExpression="^\d{1,2}$"></asp:RegularExpressionValidator>
     </td>
         
          </tr>
         <tr>
             <td align ="right">
        <asp:Button ID="btn_clear" runat="server" Text="Clear" Width="84px" /></td>&nbsp;&nbsp;&nbsp;
        <td align ="left">
        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" /></td>
        </tr>
 </table>
        <% If Not IsPostBack Then%>
        <p> Welcome to my mortgage calculator. Please complete the fields above to have your monthly payment and loan repayment schedule calculated for you.</p>
   
         <%Else%>
        
        
        <br /><br />
                
        <asp:Label ID="Lbl_monthPmt" runat="server" Text="Monthly payment: "></asp:Label>
&nbsp;&nbsp;<span class="bold"> <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label></span>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview" >
            <AlternatingRowStyle CssClass="alt" />
        </asp:GridView>

           
        <%End If%>
        </div>
    </form>
</body>
</html>
