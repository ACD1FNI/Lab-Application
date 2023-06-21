<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AssemblerMainPage.aspx.cs" Inherits="TrialProject2.AssemblerMainPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:HiddenField ID="CurrentPageHiddenField" runat="server" />


    <div class="container">
        <div class="row">         
            <div class="col-md-6">
                <center>
                <div class="card" style="width:50rem";>                  
                    <div "class-body">                  
                      
                                <center>
                                   <b><h3>New Ticket</h3></b>
                                    <hr>
                                </center>                                                       
                           

                         <div class="row">

                             <div class="col-md-4">

                                <b><text>Requestor Badge Number</text></b>
                                <div class="form-group">

                                    <div class="input btn-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="" TextMode="Number"></asp:TextBox>
                                    <asp:Button ID="ButtonSubmit_Click" runat="server" Text="GO" CssClass="btn btn-primary" OnClick="ButtonSubmit_Click_Click" />
                                       </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                               
                                 <b><text>Name</text></b>
                                <div class="form-group">
                                   
                                   <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="" TextMode="SingleLine"></asp:TextBox>
                                       
                                </div>


                            </div>                    

                        </div>

                         <div class="row">
                              <div class="col-md-6">
                               
                                 <b><text>Building Location</text></b>
                                <div class="form-group">
                                   
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">

                                        <asp:ListItem Text="Select" Value="Select" /> 
                                        <asp:ListItem Text="B101" Value="B101" />
                                        <asp:ListItem Text="B102" Value="B102" />
                                        <asp:ListItem Text="B103" Value="B103" />

                                    </asp:DropDownList>
                                       
                                </div>

                            </div>

                              <div class="col-md-6">

                                <b><text>Work Order</text></b>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="" TextMode="Number"></asp:TextBox>
                                       
                                </div>
                            </div>                                                    
                        </div>

                         <div class="row">

                              <div class="col-md-4">

                                <b><text>Part Lookup</text></b>
                                <div class="form-group">
                                     
                                    <div class="input btn-group">
                                   <asp:TextBox ID="TextBoxSearch" runat="server" CssClass="form-control"></asp:TextBox>
                                   <asp:Button ID="ButtonSearch" runat="server" Text="Search" OnClick="ButtonSearch_Click" CssClass="btn btn-primary" />                                 
                                    </div>
                                    </div>
                                </div>
                            
                            <div class="col-md-7">

                                 <text>*If you are adding a new Part, Go To Add New Part Page</text>  
                            </div>

                              <div class="col-md-12">

                                 <b><text>Part Number and Description</text></b>
                                   <div class="form-group">
                                   <asp:DropDownList class="form-control" ID="DropDownList2" runat="server" OnItemsRequested="DropDownList2_ItemsRequested">                                  
                                        <asp:ListItem Text="Select" Value="select" />                                   
                                    </asp:DropDownList>                                      
                                    </div>
                                </div>
                           
                             </div>
                  
                         <div class="row">

                              <div class="col-md-6">

                                <b><text>Quantity</text></b>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="" TextMode="Number"></asp:TextBox>
                                       
                                </div>
                            </div>

                            
                             <div class="col-md-6">

                                <b><text> Request Type</text></b>
                                <div class="form-group">
                                   
                                   <asp:DropDownList class="form-control" ID="DropDownList4" runat="server">

                                        <asp:ListItem Text="Select" Value="Select" />                               
                                        <asp:ListItem Text="Production Support" Value="Production Support" />
                                        <asp:ListItem Text="Design Engineering" Value="Design Engineering" />
                                        <asp:ListItem Text="Production Parts Approval Process (PPAP)" Value="Production Parts Approval Process (PPAP)" />
                                        <asp:ListItem Text="Purchasing Quality" Value="Purchasing Quality" />
                                        <asp:ListItem Text="Complaint Investigation" Value="Complaint Investigation" />
                                        <asp:ListItem Text="Calibration " Value="Calibration" />
                                        

                                    </asp:DropDownList>
                                       
                                </div>
                            </div>

                        </div>

                        <div class="col-md-12">

                             <text>*If you are adding a new Customer, Go To Add New Customer Page</text>  
                            <br /><br />
                        </div>

                         <div class="row">                              
                            
                             <div class="col-md-6">

                                <b><text>BR Customer</text></b>
                                <div class="form-group">
                                   
                                   <asp:DropDownList class="form-control" ID="DropDownList5" runat="server" >

                                        <asp:ListItem Text="Select" Value="select" />                                       
                                        
                                        

                                    </asp:DropDownList>
                                       
                                </div>
                            </div>

                             <div class="col-md-6">

                                <b><text>Comments</text></b>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="" TextMode="MultiLine"></asp:TextBox>
                                       
                                </div>
                            </div>

                        </div>

                         <div class="row">                              
                            
                             <div class="col-md-6">

                                <b><text>Date and Time</text></b>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="" TextMode="DateTimeLocal"></asp:TextBox>                                   
                                                                  
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
                                   
                                   <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                       
                                </div>


                            </div>

                               <div class="col-md-6">
                               
                                 <b><text>Ticket Status</text></b>
                                <div class="form-group">
                                   
                                  <div class="input-group">
                                    <asp:TextBox CssClass="form-control mr-1" ID="TextBox10" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                                      


                                    </div>
                                       
                                </div>


                            </div>
                             

                        </div>
               
                         <div class="row">                           
                            
                             <div class="col-md-6">

                                <b><text>Part Location</text></b>
                                <div class="form-group">
                                   
                                   <asp:DropDownList class="form-control" ID="DropDownList6" runat="server" ReadOnly="True">
                                  
                                
                                    </asp:DropDownList>
                                       
                                </div>
                            </div>

                        </div> 

                         <div class="row">                              
                            
                             

                             <div class="col-md-12">

                                <b><text>Comments</text></b>
                                <div class="form-group">
                                   
                                    <asp:TextBox CssClass="form-control" ID="TextBox15" runat="server" placeholder="" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                                       
                                </div>
                            </div>

                        </div>

                         <div class="row">                              
                            
                             <div class="col-md-6">

                                <b><text>Start Time</text></b>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox16" runat="server" placeholder="" TextMode="DateTimeLocal" ReadOnly="True"></asp:TextBox>                                   
                                                                  
                                </div>
                            </div>


                             <div class="col-md-6">

                                <b><text>End Time</text></b>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="" TextMode="DateTimeLocal" ReadOnly="True"></asp:TextBox>                                   
                                                                  
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

            </div>
            
        </div>
 

</asp:Content>
