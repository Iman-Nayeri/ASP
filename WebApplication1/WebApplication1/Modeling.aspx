<%@ Page Title="ژورنال" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Modeling.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
<p id="P1"></p>
    <style type="text/css">
        .style1
        {
            width: 300px;
            float: left;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   
    <h2 align="right" class="bold">
     مدلهای مدرن و لاکچری 2019 و 2020
    </h2>
    
    
    <p align="center" class="textEntry" dir="ltr">
       
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSourceModel" 
            HorizontalAlign="Center">
            <ItemStyle HorizontalAlign="Center" />
            <ItemTemplate>
                <table align="left" cellpadding="0" cellspacing="3" class="style1" dir="ltr">
                    <tr>
                        <td>
                              <asp:Image ID="Image1" runat="server" 
                                  ImageUrl='<%# Eval("Image", "~/Images/{0}") %>' Width="450px" 
                                  CssClass="inline" />                              
                        </td>                 
                    </tr>
                    
                </table>
                <br />
                
                
                <asp:Label ID="DetailLabel" runat="server" Text='<%# Eval("Detail") %>' Height="40px" Font-Bold="True" Font-Size="Larger" ForeColor="#660066" />
                <br />
            </ItemTemplate>
        </asp:DataList>
       
    </p>
    <p align="left" class="textEntry">
       
        <asp:SqlDataSource ID="SqlDataSourceModel" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TimeConnectionString %>" 
            SelectCommand="SELECT [ID], [Image], [Detail] FROM [Pictures]">
        </asp:SqlDataSource>
       
    </p>
    <p style="border-width: medium; text-decoration: blink; font-size: x-large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #66FF33; border-style: solid; background-color: #000000; width: 100px; text-align: center; vertical-align: middle;"> 
         <a class="bold" href="#top"> بالا </a>    
    </p>
</asp:Content>
