 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>StephenClothing - Contact Page</title>
  <link rel="shortcut icon" type="image/jpg" href="Image/logo.jpg"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>    
    <script type ="text/javascript" >                
        $(document).ready(function () {
            $.validator.addMethod(
            "regex",
                function(value, element, regexp) {
                    var check = false;
                    return this.optional(element) || regexp.test(value);
                },
            "Enter only Characters."
        );
            $.validator.addMethod(
          "regex1",
              function(value, element, regexp) {
                  var check = false;
                  return this.optional(element) || regexp.test(value);
              },
          "Enter only Characters hypen and apostrophe"
      );

            $.validator.addMethod("regex2",
                function(value, element) {
                    return /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test(value);
                }, 
            "Enter valid email address"
        );

            $.validator.addMethod("zipcode", function(value, element) {
                return this.optional(element) || /^\d{5}(?:-\d{4})?$/.test(value);
            }, "Please provide a valid zipcode.");

            $('#form1').validate({
                rules: {
                    
                    <%=TextBox1.UniqueID %> :
                        {
                            required :true,
                            minlength: 2,
                            regex: /^[a-zA-Z]*$/, 
                        },

                    <%=TextBox2.UniqueID %> :
                        {
                            required :true,
                            minlength: 2,
                            regex1: /^[a-zA-Z '-]*$/, 
                        },

                    <%=TextBox3.UniqueID %>:
                        {
                            required: true, 
                            regex2: true
                           

                        },
                    <%=TextBox4.UniqueID %>:
                        {
                            required: true,
                            zipcode: /^\d{5}(?:[-\s]\d{4})?$/,
                        },
                    
                    <%=DropDownList1.UniqueID %>:
                    {
                        required: true,
                    },




                    },
                    
                    messages: {
                        <%=TextBox1.UniqueID %>:
                            {
                                required: "Please enter your firstname",
                                minlength: "Enter greater than 2 characters",
                                required1: 'Enter only characters in FirstName field'
                            },
                        

                        <%=TextBox2.UniqueID %>:
                            {
                                required: "Please enter your Lastname",
                                minlength: "Enter greater than 2 characters",
                            },
                        <%=TextBox3.UniqueID %>:
                            {
                                required: "Please valid email address",
                            
                            },
                        <%=TextBox4.UniqueID %>:
                            {
                                required: "Please valid zipcode",
                        
                            },
                        <%=DropDownList1.UniqueID %>:
                            {
                                required: "Please select valid states",
                            },
                        

                        
                   
                    },
                    
                    submitHandler: function(form) {
                        form.submit();
                    }
                
                });
        
        });

        </script>
    <style type ="text/css" >  
        label.error {             
            color: red;   
            display:inline-flex ;                 
        }  
    </style>  
 <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 200px;
            text-align: right;
        }
        .auto-style3 {
            width: 312px;
        }
        .auto-style4 {
            width: 200px;
            text-align: right;
            height: 23px;
        }
        .auto-style5 {
            width: 312px;
            height: 23px;
            text-align: left;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 200px;
            text-align: right;
            height: 26px;
        }
        .auto-style8 {
            width: 312px;
            height: 26px;
            text-align: left;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style11 {
            width: 312px;
            text-align: left;
        }
    </style>
</head> 
<body>
    <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      
       <a class="navbar-brand" href="#"><img alt="Brand" id="logo" src="Image/logo.jpg" /></a>
    </div>
      
 
  </div>
</nav>
    
    <form id="form1" runat="server">

        <a href="HomePage.aspx">Go To Home Page</a>
        <br />
        <br />
        <h1> Contact Details </h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label3" runat="server" for="TextBox1" Text="FirstName :"></asp:Label></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox1" runat="server" Width="230px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    
                     </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style11">(Only Characters Allowed)</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Last Name :</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" Width="230px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                          </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style11">Characters, Hypen and Apostrophe allowed in this field)</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Email : </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox3" runat="server" Width="230px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                                    </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style2">ZipCode : </td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox4" runat="server" Width="230px"></asp:TextBox>
                </td>
                <td>
                                    </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">State : </td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="230px" >
                        <asp:ListItem>Select State</asp:ListItem>
                        <asp:ListItem>Alabama</asp:ListItem>
                        <asp:ListItem>Alaska</asp:ListItem>
                        <asp:ListItem>Arizona</asp:ListItem>
                        <asp:ListItem>Arkansas</asp:ListItem>
                        <asp:ListItem>California</asp:ListItem>
                        <asp:ListItem>Colorado</asp:ListItem>
                        <asp:ListItem>Connecticut</asp:ListItem>
                        <asp:ListItem>Delaware</asp:ListItem>
                        <asp:ListItem>District of Columbia</asp:ListItem>
                        <asp:ListItem> Florida</asp:ListItem>
                        <asp:ListItem>Georgia</asp:ListItem>
                        <asp:ListItem>Hawaii</asp:ListItem>
                        <asp:ListItem>daho</asp:ListItem>
                        <asp:ListItem>Illinois</asp:ListItem>
                        <asp:ListItem>Indiana</asp:ListItem>
                        <asp:ListItem>Iowa</asp:ListItem>
                        <asp:ListItem> Kansas</asp:ListItem>
                        <asp:ListItem>Kentucky</asp:ListItem>
                        <asp:ListItem>Louisiana</asp:ListItem>
                        <asp:ListItem>Maine</asp:ListItem>
                        <asp:ListItem>Maryland</asp:ListItem>
                        <asp:ListItem> Mass</asp:ListItem>
                        <asp:ListItem>Michigan</asp:ListItem>
                        <asp:ListItem>Minnesota</asp:ListItem>
                        <asp:ListItem>Mississippi</asp:ListItem>
                        <asp:ListItem>Missouri</asp:ListItem>
                        <asp:ListItem>Montana</asp:ListItem>
                        <asp:ListItem>Nebraska</asp:ListItem>
                        <asp:ListItem>Nevada</asp:ListItem>
                        <asp:ListItem>New Hampshire</asp:ListItem>
                        <asp:ListItem>New Jersey</asp:ListItem>
                        <asp:ListItem>New Mexico</asp:ListItem>
                        <asp:ListItem>New York</asp:ListItem>
                        <asp:ListItem>North Carolina</asp:ListItem>
                        <asp:ListItem>North Dakota</asp:ListItem>
                        <asp:ListItem>Ohio</asp:ListItem>
                        <asp:ListItem>Oklahoma</asp:ListItem>
                        <asp:ListItem>Oregon</asp:ListItem>
                        <asp:ListItem>Pennsylvania</asp:ListItem>
                        <asp:ListItem>Rhode Island</asp:ListItem>
                        <asp:ListItem>South Carolina</asp:ListItem>
                        <asp:ListItem>South Dakota</asp:ListItem>
                        <asp:ListItem>Tennessee</asp:ListItem>
                        <asp:ListItem>Texas</asp:ListItem>
                        <asp:ListItem> Uttah</asp:ListItem>
                        <asp:ListItem>Vermont</asp:ListItem>
                        <asp:ListItem>Virginia</asp:ListItem>
                        <asp:ListItem>Washington</asp:ListItem>
                        <asp:ListItem>West Virginia</asp:ListItem>
                        <asp:ListItem>Wisconsin</asp:ListItem>
                        <asp:ListItem>Wyoming</asp:ListItem>

                    </asp:DropDownList>
                </td>
                <td class="auto-style9">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please Select State" ForeColor="#FF3300" InitialValue="Select State"></asp:RequiredFieldValidator>
                                    </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /></td>
                
                <td>
                    <asp:Button ID="Button2" runat="server" type="reset" Text="Reset" value="Reset" OnClick="Button2_Click" /></td>
            </tr>

            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
            </tr>

            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" ForeColor="#33CC33" Text="User Details Added Successfully" Visible="False"></asp:Label>
                </td>
                <td class="auto-style6"></td>
            </tr>
            
            
        </table>
    </form>
</body>
</html>

