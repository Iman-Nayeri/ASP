<%@ Page Title="نوبت دهی" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Reserve.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2 align="center" class="bold">
        جهت دریافت نوبت از فرم ذیل استفاده نمایید
    </h2> 
    
    <p align="left" class="textEntry">
       
        &nbsp;<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="200px" 
            Width="375px" BackColor="#FFD89D" BorderColor="#003366" BorderStyle="Double" 
            BorderWidth="5px" Caption="جدول زمان" CellPadding="0" CellSpacing="5" 
            Font-Bold="True" Font-Size="Large" ForeColor="#CC0099" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="#FFCD82" />
            <CommandRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <Fields>
                <asp:BoundField DataField="Years" HeaderText="سال" SortExpression="Years" />
                <asp:BoundField DataField="Month" HeaderText="ماه" SortExpression="Month" />
                <asp:BoundField DataField="Day" HeaderText="روز" SortExpression="Day" />
                <asp:TemplateField ShowHeader="False">
                    <InsertItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                            CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="New" 
                            PostBackUrl='<%# Eval("ID", "~/Users/InputData.aspx?PID={0}") %>' 
                            Text="دریافت" BackColor="#333300" BorderColor="#003399" BorderStyle="Solid" 
                            Font-Bold="True" ForeColor="Lime" Height="30px" Width="80px"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
            <RowStyle Font-Size="Medium" HorizontalAlign="Center" VerticalAlign="Middle" 
                Width="100px" />
        </asp:DetailsView>
       
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:TimeConnectionString %>" 
        DeleteCommand="DELETE FROM [Schedules] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [Schedules] ([Years], [Month], [Day], [Hours], [Minute], [Name], [Family], [Phone]) VALUES (@Years, @Month, @Day, @Hours, @Minute, @Name, @Family, @Phone)" 
        SelectCommand="SELECT [ID], [Years], [Month], [Day], [Hours], [Minute], [Name], [Family], [Phone] FROM [Schedules] ORDER BY [Years] DESC, [ID] DESC" 
        
        UpdateCommand="UPDATE [Schedules] SET [Years] = @Years, [Month] = @Month, [Day] = @Day, [Hours] = @Hours, [Minute] = @Minute, [Name] = @Name, [Family] = @Family, [Phone] = @Phone WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Years" Type="Int32" />
            <asp:Parameter Name="Month" Type="String" />
            <asp:Parameter Name="Day" Type="Int32" />
            <asp:Parameter Name="Hours" Type="String" />
            <asp:Parameter Name="Minute" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Family" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Years" Type="Int32" />
            <asp:Parameter Name="Month" Type="String" />
            <asp:Parameter Name="Day" Type="Int32" />
            <asp:Parameter Name="Hours" Type="String" />
            <asp:Parameter Name="Minute" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Family" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
