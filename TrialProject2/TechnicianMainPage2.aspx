<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TechnicianMainPage2.aspx.cs" Inherits="TrialProject2.TechnicianMainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <!-------old code---------------------------------------------------------------->
          <!----------
            <div class="col-md-6">
                
                <div class="card" style="width:50rem";>                  
                    <div "class-body">
                        <div class="row">
                            <div class="col">
                                

                            </div>

                        </div>
                      
                                <center>
                                   <b> <h3>Tickets</h3></b>
                                    <hr>
                                </center>                                                       
                           

                         <div class="row">

                              <div class="col-md-4">

                                <b><text>Ticket ID</text></b>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="" TextMode="Number"></asp:TextBox>
                                       
                                </div>
                            </div>

                              <div class="col-md-4">

                                <b><text>Technician badge ID</text></b>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="" TextMode="SingleLine"></asp:TextBox>
                                       
                                </div>
                            </div>

                            
                             <div class="col-md-4">

                                <b><text>Part Location</text></b>
                                <div class="form-group">
                                   
                                   <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                   <asp:ListItem Text="Select" Value="select" />                                     
                                   <asp:ListItem Text="A1" Value="select" />
                                   <asp:ListItem Text="A2" Value="select" />
                                   <asp:ListItem Text="A3" Value="select" />
                                   <asp:ListItem Text="A4" Value="select" />
                                   <asp:ListItem Text="A5" Value="select" />
                                   <asp:ListItem Text="B1" Value="select" />
                                   <asp:ListItem Text="B2" Value="select" />
                                   <asp:ListItem Text="B3" Value="select" />
                                   <asp:ListItem Text="B4" Value="select" />
                                   <asp:ListItem Text="B5" Value="select" />
                                   <asp:ListItem Text="C1" Value="select" />
                                   <asp:ListItem Text="C2" Value="select" />
                                   <asp:ListItem Text="C3" Value="select" />
                                   <asp:ListItem Text="C4" Value="select" />
                                   <asp:ListItem Text="C5" Value="select" />
                                   <asp:ListItem Text="D1" Value="select" />
                                   <asp:ListItem Text="D2" Value="select" />
                                   <asp:ListItem Text="D3" Value="select" />
                                   <asp:ListItem Text="D4" Value="select" />
                                   <asp:ListItem Text="D5" Value="select" />
                                
                                    </asp:DropDownList>
                                       
                                </div>
                            </div>

                        </div> 

                         <div class="row">

                              

                            <div class="col-md-4">
                               
                                 <b><text>Technician Name</text></b>
                                <div class="form-group">
                                   
                                   <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="" TextMode="SingleLine"></asp:TextBox>
                                       
                                </div>


                            </div>

                               <div class="col-md-4">
                               
                                 <b><text>Ticket Status</text></b>
                                <div class="form-group">
                                   
                                  <div class="input-group">
                                    <asp:TextBox CssClass="form-control mr-1" ID="TextBox3" runat="server" placeholder="status" ReadOnly="True"></asp:TextBox>
                                        <asp:LinkButton CssClass="btn btn-success mr-1" ID="Button3" runat="server" Text="C" ><i class="fas fa-check-circle"></i></asp:LinkButton>                                      
                                        <asp:LinkButton CssClass="btn btn-warning mr-1" ID="Button5" runat="server" Text="Pnd" ><i class="far fa-pause-circle"></i></asp:LinkButton>


                                    </div>
                                       
                                </div>


                            </div>
                             

                        </div>


                         <div class="row">                              
                            
                             

                             <div class="col-md-6">

                                <b><text>Comments</text></b>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox15" runat="server" placeholder="" TextMode="MultiLine"></asp:TextBox>
                                       
                                </div>
                            </div>

                        </div>

                        <div class="row">                              
                            
                             <div class="col-md-6">

                                <b><text>Start Time</text></b>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox16" runat="server" placeholder="" TextMode="DateTimeLocal"></asp:TextBox>                                   
                                                                  
                                </div>
                            </div>


                             <div class="col-md-6">

                                <b><text>End Time</text></b>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="" TextMode="DateTimeLocal"></asp:TextBox>                                   
                                                                  
                                </div>
                            </div>

                            

                        </div>

                       <br /><br />
                         <div class="row">                              
                                                                  
                             <div class="col-md-12">                           
                                 
                                <div class="form-group">  
                                    <center>
                                    <asp:Button  class= "btn btn-success btn-lg" ID="Button2" runat="server" Text= "Submit" OnClick="Button2_Click"/>
                                        </center>
                                </div>
                                     
                            </div>                              

                        </div>
  
                    </div>

                </div>               

            </div>
            ----------->
            <!--------------------------------------------------------------------------------------------------->

            <div class="col-md-6">
                <center>
                <div class="card" style="width:50rem";>                  
                    <div "class-body">                  
                      
                                <center>
                                   <b> <h3>New Ticket</h3></b>
                                    <hr>
                                </center>                                                       
                           

                         <div class="row">

                             <div class="col-md-4">

                                <b><text>Requestor Badge Number</text></b>
                                <div class="form-group">
   
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="" TextMode="Number" ReadOnly="True"></asp:TextBox>                                  
                                      
                                </div>
                            </div>

                            <div class="col-md-8">
                               
                                 <b><text>Name</text></b>
                                <div class="form-group">
                                   
                                   <asp:TextBox CssClass="form-control" ID="TextBox2a" runat="server" placeholder="" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                       
                                </div>


                            </div>                    

                        </div>

                         <div class="row">
                              <div class="col-md-6">
                               
                                 <b><text>Building Location</text></b>
                                <div class="form-group">
                                   
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" ReadOnly="True">

                                        <asp:ListItem Text="Select" Value="select" />
                                       

                                    </asp:DropDownList>
                                       
                                </div>

                            </div>

                              <div class="col-md-6">

                                <b><text>Work Order</text></b>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                       
                                </div>
                            </div>                                                    
                        </div>

                         <div class="row">

                              <div class="col-md-12">

                                 <b><text>Part Number and Description</text></b>
                                   <div class="form-group">
                                   <asp:DropDownList class="form-control" ID="DropDownList2" runat="server" ReadOnly="True">                                  
                                        <asp:ListItem Text="Select" Value="select" />                                   
                                    </asp:DropDownList>                                      
                                    </div>
                                </div>
                           
                             </div>
                  
                         <div class="row">

                              <div class="col-md-6">

                                <b><text>Quantity</text></b>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                       
                                </div>
                            </div>

                            
                             <div class="col-md-6">

                                <b><text>PPAP Service Request Type</text></b>
                                <div class="form-group">
                                   
                                   <asp:DropDownList class="form-control" ID="DropDownList3" runat="server" ReadOnly="True">

                                        <asp:ListItem Text="Select" Value="select" />                                       
                                       

                                    </asp:DropDownList>
                                       
                                </div>
                            </div>

                        </div>

                         <div class="row">                              
                            
                             <div class="col-md-6">

                                <b><text>BR Customer</text></b>
                                <div class="form-group">
                                   
                                   <asp:DropDownList class="form-control" ID="DropDownList4" runat="server" ReadOnly="True">

                                        <asp:ListItem Text="Select" Value="select" />                                       
                                        
                                        

                                    </asp:DropDownList>
                                       
                                </div>
                            </div>

                             <div class="col-md-6">

                                <b><text>Comments</text></b>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                                       
                                </div>
                            </div>

                        </div>

                         <div class="row">                              
                            
                             <div class="col-md-6">

                                <b><text>Date and Time</text></b>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="" TextMode="DateTimeLocal" ReadOnly="True"></asp:TextBox>                                   
                                                                  
                                </div>
                            </div>

                             <div class="col-md-6">

                                <b><text>Attachments</text></b>
                                <div class="form-group">
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    <br /><br />
                                    <asp:FileUpload ID="FileUpload2" runat="server" />
                                    
                                       
                                </div>
                                 <br /><br />
                            </div>
                               <div class="col-md-12">
                              
                                   <b> <h3>Technician Field</h3></b>
                                    <hr>

                                </div>

                        </div>

                         <div class="row">

                            <div class="col-md-6">
                               
                                 <b><text>Technician Name</text></b>
                                <div class="form-group">
                                   
                                   <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="" TextMode="SingleLine" ></asp:TextBox>
                                       
                                </div>


                            </div>

                               <div class="col-md-6">
                               
                                 <b><text>Ticket Status</text></b>
                                <div class="form-group">
                                   
                                  <div class="input-group">
                                    <asp:TextBox CssClass="form-control mr-1" ID="TextBox8" runat="server" placeholder=""></asp:TextBox>
                                      


                                    </div>
                                       
                                </div>


                            </div>
                             

                        </div>
               
                         <div class="row">                           
                            
                             <div class="col-md-6">

                                <b><text>Part Location</text></b>
                                <div class="form-group">
                                   
                                   <asp:DropDownList class="form-control" ID="DropDownList5" runat="server" >
                                  
                                
                                    </asp:DropDownList>
                                       
                                </div>
                            </div>

                        </div> 

                         <div class="row">                              
                            
                             

                             <div class="col-md-12">

                                <b><text>Comments</text></b>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="" TextMode="MultiLine" ></asp:TextBox>
                                       
                                </div>
                            </div>

                        </div>

                         <div class="row">                              
                            
                             <div class="col-md-6">

                                <b><text>Start Time</text></b>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="" TextMode="DateTimeLocal" ></asp:TextBox>                                   
                                                                  
                                </div>
                            </div>


                             <div class="col-md-6">

                                <b><text>End Time</text></b>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="" TextMode="DateTimeLocal" ></asp:TextBox>                                   
                                                                  
                                </div>
                            </div>

                        </div>
  

            </div>

                       <br /><br />
                         <div class="row">                              
                                                                  
                             <div class="col-md-12">                           
                                 
                                <div class="form-group">  
                                    <center>
                                    <asp:Button  class= "btn btn-success btn-lg" ID="Button1" runat="server" Text= "Submit"/>
                                        </center>
                                </div>
                                     
                            </div>                              

                        </div>
  
                    </div>

                </div>  







            <!----------------------------------------GRID---------------------------------------------------->
            <div class="col-md-6">
                
                <div class="card" style="width:50rem";>                  
                    <div "class-body">
                     
                                <center>
                                   <b> <h3>Ticket List</h3></b>
                                    <hr>
                                </center>                                                       
                           <div class="row">
                            <div class="col-md-3">
                                <label>Ticket ID</label>
                                <div class="form-group">

                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="ID"></asp:TextBox>
                                    <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" Text="Go" />

                                    </div>
                                </div>

                            </div>

                        </div>  

                         <div class="row">
                        <div class="col">
                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>

                            </div>

                        </div>                        
  
                    </div>

                </div>                                

            </div>
            
       </div>        

            
    </div>
 

</asp:Content>
