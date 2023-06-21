<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TechnicianMainPage.aspx.cs" Inherits="TrialProject2.TechnicianMainPage1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <script type="text/javascript">
        $(document).ready(function () {


            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
           
        });
    </script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
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
                                <label>Ticket ID</label>
                                <div class="form-group">

                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="ID"></asp:TextBox>
                                    <asp:Button CssClass="btn btn-primary" ID="Button3" runat="server" Text="Go" OnClick="Button3_Click" />

                                    </div>
                                </div>

                            </div>

                        </div>  

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
                                   
                                   <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                       
                                </div>


                            </div>                    

                        </div>

                         <div class="row">
                              <div class="col-md-6">
                               
                                 <b><text>Building Location</text></b>
                                <div class="form-group">
                                   
                                    <asp:TextBox class="form-control" ID="DD1" runat="server" ReadOnly="True">

                                    </asp:TextBox>
                                       
                                </div>

                            </div>

                              <div class="col-md-6">

                                <b><text>Work Order</text></b>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                                       
                                </div>
                            </div>                                                    
                        </div>

                         <div class="row">

                              <div class="col-md-12">

                                 <b><text>Part Number and Description</text></b>
                                   <div class="form-group">
                                   <asp:TextBox class="form-control" ID="DD2" runat="server" ReadOnly="True">                                  
                                                                      
                                    </asp:TextBox>                                      
                                    </div>
                                </div>
                           
                             </div>
                  
                         <div class="row">

                              <div class="col-md-6">

                                <b><text>Quantity</text></b>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                                       
                                </div>
                            </div>

                            
                             <div class="col-md-6">

                                <b><text>PPAP Service Request Type</text></b>
                                <div class="form-group">
                                   
                                   <asp:TextBox class="form-control" ID="DD3" runat="server" ReadOnly="True">
  

                                    </asp:TextBox>
                                       
                                </div>
                            </div>

                        </div>

                         <div class="row">                              
                            
                             <div class="col-md-6">

                                <b><text>BR Customer</text></b>
                                <div class="form-group">
                                   
                                   <asp:TextBox class="form-control" ID="DD4" runat="server" ReadOnly="True">
    

                                    </asp:TextBox>
                                       
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
                                     <asp:TextBox CssClass="form-control" ID="TextBox20" runat="server" placeholder=""  ReadOnly="True"></asp:TextBox>     
                                     <asp:TextBox CssClass="form-control" ID="TextBox21" runat="server" placeholder=""  ReadOnly="True"></asp:TextBox>     
                                     
                                    <br /><br />
                                   
                                    
                                       
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

                                <b><text>Technician Badge Number</text></b>
                                <div class="form-group">

                                    <div class="input btn-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="" TextMode="Number"></asp:TextBox>
                                    <asp:Button ID="ButtonSubmit_Click" runat="server" Text="GO" CssClass="btn btn-primary" OnClick="ButtonSubmit_Click_Click" />
                                       </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                               
                                 <b><text>Technician Name</text></b>
                                <div class="form-group">
                                   
                                   <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="" TextMode="SingleLine" ></asp:TextBox>
                                       
                                </div>


                            </div>

                              <div class="col-md-4">
                               
                                 <b><text>Ticket Status</text></b>
                                <div class="form-group">
                                   
                                  <div class="input-group">
                                    <asp:TextBox CssClass="form-control mr-1" ID="TextBox8" runat="server" placeholder=""></asp:TextBox>
                                        <asp:LinkButton CssClass="btn btn-success mr-1" ID="ButtonA" runat="server" Text="C" OnClick="ButtonA_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>                                      
                                        <asp:LinkButton CssClass="btn btn-warning mr-1" ID="ButtonB" runat="server" Text="Pnd"  OnClick="ButtonB_Click"><i class="far fa-pause-circle"></i></asp:LinkButton>


                                    </div>
                                       
                                </div>


                            </div>

                             <div class="col-md-4">

                                <b><text>Part Location</text></b>
                                <div class="form-group">
                                   
                                   <asp:DropDownList class="form-control" ID="DropDownList6" runat="server" >
                                    
                                   <asp:ListItem Text="Select" Value="Select" />
                                   <asp:ListItem Text="A1" Value="A1" />
                                   <asp:ListItem Text="A2" Value="A2" />
                                   <asp:ListItem Text="A3" Value="A3" />
                                   <asp:ListItem Text="A4" Value="A4" />
                                   <asp:ListItem Text="A5" Value="A5" />
                                   <asp:ListItem Text="B1" Value="B1" />
                                   <asp:ListItem Text="B2" Value="B2" />
                                   <asp:ListItem Text="B3" Value="B3" />
                                   <asp:ListItem Text="B4" Value="B4" />
                                   <asp:ListItem Text="B5" Value="B5" />
                                   <asp:ListItem Text="C1" Value="C1" />
                                   <asp:ListItem Text="C2" Value="C2" />
                                   <asp:ListItem Text="C3" Value="C3" />
                                   <asp:ListItem Text="C4" Value="C4" />
                                   <asp:ListItem Text="C5" Value="C5" />
                                   <asp:ListItem Text="D1" Value="D1" />
                                   <asp:ListItem Text="D2" Value="D2" />
                                   <asp:ListItem Text="D3" Value="D3" />
                                   <asp:ListItem Text="D4" Value="D4" />
                                   <asp:ListItem Text="D5" Value="D5" />
                                
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
                                    <asp:Button  class= "btn btn-success btn-lg" ID="Button1" runat="server" Text= "Submit" OnClick="Button1_Click"/>
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
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LabRequestDBConnectionString %>" SelectCommand="SELECT * FROM [Ticket_DB]"></asp:SqlDataSource>
                        <div class="col-md-12">
                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TicketID" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="TicketID" HeaderText="TicketID" InsertVisible="False" ReadOnly="True" SortExpression="TicketID" />
                                    <asp:BoundField DataField="ASM_NUM" HeaderText="Requester" SortExpression="ASM_NUM" />
                                    <asp:BoundField DataField="ASM_Name" HeaderText="Name" SortExpression="ASM_Name" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                    <asp:BoundField DataField="Cus_Name" HeaderText="Customer" SortExpression="Cus_Name" />
                                     <asp:BoundField DataField="Sub_Date" HeaderText="Submission Date" SortExpression="Sub_Date" />
                                </Columns>
                            </asp:GridView>

                            </div>

                        </div>                        
  
                    </div>

                </div>                                

            </div>
            
       </div>        

            
    </div>
        


</asp:Content>
