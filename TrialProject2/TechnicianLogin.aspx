<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TechnicianLogin.aspx.cs" Inherits="TrialProject2.TechnicianLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
    <div class="container">
        <div class="row">
            <div class="col md-8 ms-auto">
                <center>
                <div class="card" style="width:40rem;">                  
                    <div "class-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150" src="../images/admin-pic.png" />
                                </center>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Technician Login</h3>
                                </center>
                            </div>
                           

                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr>
                                </center>
                            </div>

                        </div>

                         <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <center>
                                                                                    
                                            <b><text>Technician badge ID</text></b>
                                     </center>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID" TextMode="SingleLine"></asp:TextBox>
                                       
                                </div>

                                 

                                 <div class="form-group">
                                     <center>
                                     <asp:Button  class= "btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text= "Login" OnClick="Button1_Click"/>
                                         </center>
                                </div>

                                 <div class="form-group">
                                     <center>
                                     <a href="../TechnicianSignup.aspx"><input class= "btn btn-info btn-block btn-lg" id="Button2" type="button" value="Sign Up" />
                                     </center> </a>
                                </div>                          

                            </div>

                        </div>

                    </div>

                </div>
                    
                </center>
             
        </div>
    </div>
 </div>

</asp:Content>
