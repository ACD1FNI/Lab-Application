<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TicStatAssembler.aspx.cs" Inherits="TrialProject2.TicStatAssembler" %>
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
                                   <b> <h3>Ticket Description</h3></b>
                                    <hr>
                                </center>                                                       
                           
                        <div class="row">
                            <div class="col-md-4">
                                <label>Ticket ID</label>
                                <div class="form-group">

                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="ID"></asp:TextBox>
                                    <asp:Button CssClass="btn btn-primary" ID="Button3" runat="server" Text="Go" OnClick="Button3_Click"  />

                                    </div>
                                </div>

                            </div>

                        </div>  

                         <div class="row">

                             <div class="col-md-4">

                                <b><text>Requestor Badge Number</text></b>
                                <div class="form-group">
   
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder=""  ReadOnly="True"></asp:TextBox>                                  
                                      
                                </div>
                            </div>

                            <div class="col-md-8">
                               
                                 <b><text>Name</text></b>
                                <div class="form-group">
                                   
                                   <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                       
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
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                                       
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
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                                       
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
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                                       
                                </div>
                            </div>

                        </div>

                         <div class="row">                              
                            
                             <div class="col-md-6">

                                <b><text>Date and Time</text></b>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="" TextMode="DateTimeLocal" ReadOnly="True"></asp:TextBox>                                   
                                                                  
                                </div>
                            </div>

                             <div class="col-md-6">

                                <b><text>Attachments</text></b>
                                <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="TextBox20" runat="server" placeholder="" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>     
                                     <asp:TextBox CssClass="form-control" ID="TextBox21" runat="server" placeholder="" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>                                       
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
                                    <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                   
                                       </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                               
                                 <b><text>Technician Name</text></b>
                                <div class="form-group">
                                   
                                   <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                       
                                </div>


                            </div>

                              <div class="col-md-4">
                               
                                 <b><text>Ticket Status</text></b>
                                <div class="form-group">
                                   
                                  
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>                                       

                                    
                                       
                                </div>


                            </div>

                             <div class="col-md-4">

                                <b><text>Part Location</text></b>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox150" runat="server" placeholder="" ReadOnly="true"></asp:TextBox>

                                    </div>    
                               
                            </div>
                             

                        </div>
               
           

                         <div class="row">                              
                            
                             

                             <div class="col-md-12">

                                <b><text>Comments</text></b>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                                       
                                </div>
                            </div>

                        </div>

                         <div class="row">                              
                            
                             <div class="col-md-6">

                                <b><text>Start Time</text></b>
                                <div class="form-group">
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>                                   
                                                                  
                                </div>
                            </div>


                             <div class="col-md-6">

                                <b><text>End Time</text></b>
                                <div class="form-group">
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="" ReadOnly="True" ></asp:TextBox>                                   
                                                                  
                                </div>
                            </div>

                        </div>

            </div>
  
                    </div>

                </div>  
   
        <div class="col-md-6">

                <div class="card" style="width:50rem";>                  
                    <div "class-body">
                     
                                <center>
                                   <b> <h3>Ticket List</h3></b>
                                    <hr>
                                </center>                                                       
                           
                       
                        
                         <div class="row">
                        <div class="col">
                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TicketID" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="TicketID" HeaderText="TicketID" InsertVisible="False" ReadOnly="True" SortExpression="TicketID" />
                                    <asp:BoundField DataField="ASM_NUM" HeaderText=" Badge Number" SortExpression="ASM_NUM" />
                                    <asp:BoundField DataField="ASM_Name" HeaderText="Requester Name" SortExpression="ASM_Name" />
                                    <asp:BoundField DataField="Status" HeaderText="Ticket Status" SortExpression="Status" />
                                    <asp:BoundField DataField="Sub_Date" HeaderText="Submission Date" SortExpression="Sub_Date" />
                                </Columns>
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LabRequestDBConnectionString %>" SelectCommand="SELECT [TicketID], [ASM_NUM], [ASM_Name], [Status], [Sub_Date] FROM [Ticket_DB]"></asp:SqlDataSource>

                            </div>

                        </div>                        
  
                    </div>

                </div>  

        </div>
         </div>
            </div>
</asp:Content>
