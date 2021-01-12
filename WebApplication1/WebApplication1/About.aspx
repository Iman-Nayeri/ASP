<%@ Page Title="درباره ما" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2 align="right" dir="rtl">
        درباره ما :
    
    <p dir="rtl" align="right">
        نام استاد : دکتر آرش روشن پور 
        <asp:Image ID="Image1" runat="server" ImageAlign="Left" 
            ImageUrl="~/Images/University.jpg" Width="500px" />
    
        <br />
        نام دانشجو : ایمان نیری فرد <br />
        نام درس : ASP.NET <br />
        دانشگاه : علمی کاربردی سازمان فاوا شهرداری تهران <br />
        ترم : 9901 <br />
    </p>
    </h2>
</asp:Content>
