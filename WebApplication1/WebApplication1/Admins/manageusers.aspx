<%@ Page Title="مدیریت کاربران" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="manageusers.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2 align="center" class="bold">
        : مشاهده مشتریان و افزودن دوره کاری
    </h2>
    
    
    
    
    
    
    
    
    <p align="left" class="textEntry" dir="ltr">
       
        <asp:Label ID="Label3" runat="server" BackColor="#FFDBA6" Font-Bold="True" 
            Font-Size="Medium" ForeColor="#000099" 
            Text="اضافه نمودن دوره کاری جدید : "></asp:Label>
       
        <asp:Button ID="Button1" runat="server" Text="ثبت" Width="60px" 
            Font-Bold="True" Font-Size="Medium" ForeColor="#009900" Height="30px" 
            PostBackUrl="~/Admins/AddDate.aspx" />
       
    </p>
    <p align="right" class="textEntry">
       
    </p>
</asp:Content>
