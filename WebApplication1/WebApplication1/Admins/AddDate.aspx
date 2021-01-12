<%@ Page Title="تعریف سال کاری" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="AddDate.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2 align="center" class="bold">
         مشاهده و افزودن دوره کاری ( *** در افزودن تاریخ دقت نمایید , زیرا امکان حذف یا ویرایش وجود ندارد 
         ***&nbsp; )
    </h2>
    
    
    
    
    
    
    
    
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" 
        Font-Size="Medium" ForeColor="Red" ShowMessageBox="True" />
    <p>
       
        <asp:DetailsView ID="DetailsViewAddDate" runat="server" AllowPaging="True" 
            AutoGenerateRows="False" BackColor="#FFD89D" BorderColor="#003399" 
            BorderStyle="Solid" BorderWidth="5px" DataKeyNames="Years" 
            DataSourceID="SqlDataSourceAddYears" Height="150px" Width="400px" 
            CellPadding="0" CellSpacing="5" Font-Bold="True" ForeColor="#CC0099" 
            HorizontalAlign="Center">
            <CommandRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <Fields>
                <asp:BoundField DataField="ID" HeaderText="اندیس" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" >
                <HeaderStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" 
                    VerticalAlign="Middle" Width="50px" />
                <ItemStyle Font-Bold="True" Font-Size="Medium" ForeColor="#003300" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="سال" SortExpression="Years">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Years") %>'></asp:Label>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Years") %>' 
                            Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" 
                            ErrorMessage="*** سال کاری را وارد و در ثبت آن دقت نمایید ***" Font-Bold="True" 
                            Font-Size="X-Large" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TextBox1" 
                            ErrorMessage="*** سال کاری را با چهار عدد وارد نمایید و در ثبت آن دقت نمایید ***" 
                            Font-Bold="True" Font-Size="Large" ForeColor="Red" ValidationExpression="\d{4}">*</asp:RegularExpressionValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Years") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" 
                        VerticalAlign="Middle" Width="50px" />
                    <ItemStyle Font-Bold="True" Font-Size="Large" ForeColor="#003300" />
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <InsertItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Black" 
                            CausesValidation="True" CommandName="Insert" Font-Bold="True" 
                            ForeColor="#99FF33" Height="30px" Text="ثبت" Width="40px"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" BackColor="Red" 
                            CausesValidation="False" CommandName="Cancel" Font-Bold="True" 
                            ForeColor="Black" Height="30px" Text="انصراف" Width="40px"></asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Black" 
                            CausesValidation="False" CommandName="New" Font-Bold="True" ForeColor="#66FF33" 
                            Height="30px" Text="جدید" Width="40px"></asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle ForeColor="#66FF33" HorizontalAlign="Center" 
                        VerticalAlign="Middle" />
                </asp:TemplateField>
            </Fields>
            <InsertRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle Height="30px" />
            <RowStyle Height="30px" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:DetailsView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSourceAddYears" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TimeConnectionString %>" 
            DeleteCommand="DELETE FROM [Years] WHERE [Years] = @Years" 
            InsertCommand="INSERT INTO [Years] ([Years]) VALUES (@Years)" 
            SelectCommand="SELECT [ID], [Years] FROM [Years] ORDER BY [ID] DESC" 
            UpdateCommand="UPDATE [Years] SET [ID] = @ID WHERE [Years] = @Years">
            <DeleteParameters>
                <asp:Parameter Name="Years" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Years" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="Years" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p align="right" class="textEntry">
       
    </p>
</asp:Content>
