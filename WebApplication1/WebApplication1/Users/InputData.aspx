<%@ Page Title="ورود اطلاعات" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="InputData.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2 align="center" class="bold">
        جهت دریافت نوبت از فرم ذیل استفاده نمایید
    </h2> 
    
    <p align="left" class="textEntry">
       
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
            DataKeyNames="ID" DataSourceID="SqlDataSource2" DefaultMode="Insert" 
            Height="300px" Width="375px" BackColor="#FFD89D" BorderColor="#003366" 
            BorderStyle="Double" BorderWidth="5px" Caption="ورود اطلاعات" CellPadding="0" 
            CellSpacing="5" Font-Bold="True" Font-Size="Large" ForeColor="#CC0099" 
            HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="#FFCD82" />
            <EditRowStyle HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="ID" />
                <asp:TemplateField HeaderText="سال" SortExpression="Years">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Years") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSourceYears" DataTextField="Years" DataValueField="Years" 
                            SelectedValue='<%# Bind("Years") %>' Width="200px">
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Years") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ماه" SortExpression="Month">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Month") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                            DataSourceID="SqlDataSourceMonth" DataTextField="Month" DataValueField="Month" 
                            SelectedValue='<%# Bind("Month") %>' Width="200px">
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Month") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="روز" SortExpression="Day">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Day") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList3" runat="server" 
                            DataSourceID="SqlDataSourceDays" DataTextField="Day" DataValueField="Day" 
                            SelectedValue='<%# Bind("Day") %>' Width="200px">
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Day") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ساعت" SortExpression="Hours">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Hours") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList4" runat="server" 
                            DataSourceID="SqlDataSourceHourse" DataTextField="Hours" DataValueField="Hours" 
                            SelectedValue='<%# Bind("Hours") %>' Width="200px">
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Hours") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="دقیقه" SortExpression="Minute">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Minute") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList5" runat="server" 
                            DataSourceID="SqlDataSourceMinute" DataTextField="Minute" 
                            DataValueField="Minute" SelectedValue='<%# Bind("Minute") %>' Width="200px">
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Minute") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="نام " SortExpression="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*" 
                            Font-Bold="True" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Name") %>' 
                            Width="180px"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="نام خانوادگی" SortExpression="Family">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Family") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*" 
                            Font-Bold="True" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Family") %>' 
                            Width="180px"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Family") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="شماره تماس" SortExpression="Phone">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*" 
                            Font-Bold="True" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*" 
                            Font-Bold="True" Font-Size="Large" ForeColor="Red" 
                            ToolTip="*** شماره موبایل 11 عدد میباشد ***" ValidationExpression="\d{11}">*</asp:RegularExpressionValidator>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Phone") %>' 
                            Width="180px" ToolTip="*** ترجیها شماره موبایل را وارد نمایید ***"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False" AccessibleHeaderText="قسلیبقالیبل">
                    <InsertItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="ثبت و جدید" BackColor="#333300" 
                            BorderColor="#000099" BorderStyle="Solid" ForeColor="#66FF33" Height="30px" 
                            Width="80px"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                            CommandName="Cancel" PostBackUrl="~/Default.aspx" Text="انصراف" 
                            BackColor="#333300" BorderColor="#003366" BorderStyle="Solid" 
                            EnableTheming="True" Font-Bold="False" ForeColor="#FF3300" Height="30px" 
                            Width="80px"></asp:LinkButton>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="New" Text="New"></asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle Width="100px" />
                </asp:TemplateField>
            </Fields>
            <HeaderStyle Font-Bold="True" Font-Size="Large" />
            <RowStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" 
                Width="100px" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TimeConnectionString %>" 
            DeleteCommand="DELETE FROM [Schedules] WHERE [ID] = @ID" 
            InsertCommand="INSERT INTO [Schedules] ([Years], [Month], [Day], [Hours], [Minute], [Name], [Family], [Phone]) VALUES (@Years, @Month, @Day, @Hours, @Minute, @Name, @Family, @Phone)" 
            SelectCommand="SELECT [ID], [Years], [Month], [Day], [Hours], [Minute], [Name], [Family], [Phone] FROM [Schedules] WHERE ([ID] = @ID)" 
            
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
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="PID" Type="Int32" />
            </SelectParameters>
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
       
        <asp:SqlDataSource ID="SqlDataSourceYears" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TimeConnectionString %>" 
            SelectCommand="SELECT [Years] FROM [Years] ORDER BY [ID] DESC">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceMonth" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TimeConnectionString %>" 
            SelectCommand="SELECT * FROM [Month] ORDER BY [ID] DESC">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceDays" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TimeConnectionString %>" 
            SelectCommand="SELECT [ID], [Day] FROM [Days] ORDER BY [ID]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceHourse" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TimeConnectionString %>" 
            SelectCommand="SELECT [ID], [Hours] FROM [Hours] ORDER BY [ID]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceMinute" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TimeConnectionString %>" 
            SelectCommand="SELECT [ID], [Minute] FROM [Minute] ORDER BY [ID]">
        </asp:SqlDataSource>
       
     </p>
    <br />
</asp:Content>
