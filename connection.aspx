<%@ Page Title="" Language="C#" MasterPageFile="~/accueil.Master" AutoEventWireup="true" CodeBehind="connection.aspx.cs" Inherits="Revision_Asp_webForm.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="margin-top:40px;">

                    <!-- Pseudo -->
                
                    <div >
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-user text-muted"></i>
                            </span>
                        </div>
                        <asp:TextBox  ID="Login"  runat="server"  type="text" name="Login" placeholder="Login" class="form-control bg-white border-left-0 border-md"/>
                    </div>
               
        
                    <!-- Password -->
               
                    <div >
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-lock text-muted"></i>
                            </span>
                        </div>
                        <asp:TextBox ID="pass"  runat="server" type="password" name="pass" placeholder="Mot de passe" class="form-control bg-white border-left-0 border-md"/>
                    </div>
                  
                 
                    <!-- Submit Button -->
                  
                    <div >
                        <asp:Button ID="BtnAuthentifier" runat="server" Text="S'authentifier"  CssClass="btn btn-primary btn-block py-2 font-weight-bold" OnClick="BtnAuthentifier_Click">
                        </asp:Button>
                     </div>
                

           </div>
       
</asp:Content>
