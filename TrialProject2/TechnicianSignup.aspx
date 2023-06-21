<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TechnicianSignup.aspx.cs" Inherits="TrialProject2.WebForm1" %>
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
                                    <h3>Technician Signup</h3>
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
                                                                                    
                                            <b><text>Technician Badge ID</text></b>
                                     </center>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID" TextMode="SingleLine"></asp:TextBox>
                                       
                                </div>

                                 <div class="form-group">
                                     <center>
                                         <div>
                                     <b><text>Name</text></b> 
                                             </div>

                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Name"></asp:TextBox>
                                         </center>
                                </div>

                                <div class="form-group">
                                     <center>
                                         <div>
                                             <b><text>Key</text></b> 
                                         </div>

                                         <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Key" TextMode="Password" required></asp:TextBox>
                                         </center>
                                </div>
                              

                                 <div class="form-group">
                                     <center>
                                     <asp:button class= "btn btn-info btn-block btn-lg" id="Button2" runat="server" Text="Sign Up" OnClick="Button2_Click" />
                                     </center>
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
