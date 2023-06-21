<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AssemblerLogin.aspx.cs" Inherits="TrialProject2.AssemblerLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <br />
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
                                    <h3>Requester Login</h3>
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
                                            <b><text>Badge ID</text></b>
                                     </center>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID" TextMode="SingleLine"></asp:TextBox>
                                       
                                </div>

                                 <div class="form-group">
                                     <center>
                                         <div>
                                     <b><text>Name</text></b> 
                                             </div>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                         </center>
                                </div>

                                 <div class="form-group">
                                     <center>
                                     <asp:Button  class= "btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text= "Login" OnClick="Button1_Click"/>
                                         </center>
                                </div>
                                 <div class="form-group">
                                     <center>
                                     <a href="../AssemblerSignup.aspx"><input class= "btn btn-info btn-block btn-lg" id="Button2" type="button" value="Sign Up" />
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
