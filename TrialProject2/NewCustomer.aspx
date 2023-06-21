<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NewCustomer.aspx.cs" Inherits="TrialProject2.NewCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <br /><br /><br /><br /><br /><br />

  <div class=container>
      <div class="row">
         <div class="col md-8 ms-auto">

                  <center>
            <div class="card" style="width:40rem;">
                 <div "class-body">
                     <div class="row">
                         <div class="col">

                             <center>
                                   <h3>New Customer</h3>
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
                                        <b><text>New Customer Description</text></b>
                                     </center>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Name and Description" TextMode="SingleLine"></asp:TextBox>
                                       
                                </div>                           

                                 <div class="form-group">
                                     <center>
                                     <asp:Button  class= "btn btn-success  btn-lg" ID="Button1" runat="server" Text= "Submit" OnClick="Button1_Click"/>
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
