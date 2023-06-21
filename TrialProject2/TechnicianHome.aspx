 <%@ Page Title="" Language="C#" MasterPageFile="~/Technicians/TechMasterpage.Master" AutoEventWireup="true" CodeBehind="TechnicianHome.aspx.cs" Inherits="TrialProject2.Technicians.TechnicianHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>

       <div class="container p-md-4 p-sm-4">
           <div>
               <asp:Label ID="lblmsg" runat="server"></asp:Label>

           </div>
          

           <br /><br /><br /><br /><br /><br /><br /><br /><br />
                <center>
                       <div class="card" style="width:20rem; right:20rem">
                   
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
                                    <hr>
                                </center>
                            </div>

                        </div>

                         <div class="row">
                            <div class="col">                                                             

                                 <div class="form-group">
                                     <center>
                                    <a href="../TechnicianLogin.aspx"> <input  class= "btn btn-success btn-block btn-lg" ID="Button2" type="button" value= "Login As Technician"/>
                                         </center></a>
                                </div>                            
                               

                            </div>

                        </div>

                    </div>

                </div>
                    </center>

<!------------------------------------------------------------NEW---------------------------------------->
           <center>
            <div class="card" style="width:20rem; right:-5rem; bottom:15.55rem">
                   
                    <div "class-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150" src="../images/assmblr.jpg" />
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
                                    <a href="../AssemblerLogin.aspx"> <input  class= "btn btn-success btn-block btn-lg" ID="Button1" type="button" value= "Login As Assembler"/>
                                         </center></a>
                                </div>                            
                               

                            </div>

                        </div>

                    </div>

                </div>

               </center>
<!------------------------------------------------------------------------------------------------------->
       </div>
   </div>

</asp:Content>
