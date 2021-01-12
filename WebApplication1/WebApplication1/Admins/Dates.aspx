<%@ Page Title="مدیریت زمان" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Dates.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2 align="center" class="bold">
         : مشاهده فرم رزرو مشتریان
    </h2>
    <p align="left" class="textEntry" dir="rtl">
       
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
            ForeColor="#CC0099" Text="فیلتر ماه :"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
            AutoPostBack="True" DataSourceID="SqlDataSourceControl1Admin" 
            DataTextField="Month" DataValueField="Month" Font-Bold="True" 
            Font-Size="Medium" ForeColor="#006600" Width="200px">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
       
        <asp:Label ID="Label2" runat="server" Text="فیلتر سال :" Font-Bold="True" 
            Font-Size="Medium" ForeColor="#CC0099"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="True" 
            AutoPostBack="True" DataSourceID="SqlDataSourceControl2Admin" 
            DataTextField="Years" DataValueField="Years" Width="200px">
        </asp:DropDownList>
       
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="#FFD89D" 
            BorderColor="#003399" BorderStyle="Solid" BorderWidth="5px" 
            CellPadding="0" CellSpacing="3" DataKeyNames="ID" 
            DataSourceID="SqlDataSourceDatesAdmin" Font-Bold="True" Font-Size="Medium" 
            ForeColor="#CC0099" HorizontalAlign="Center" Width="900px" 
            EmptyDataText="*** ماه بدون مشتری ***">
            <AlternatingRowStyle BackColor="#FFCD82" Height="27px" />
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Black" 
                            CausesValidation="True" CommandName="Update" ForeColor="#66FF33" Height="27px" 
                            Text="ثبت"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" BackColor="Red" 
                            CausesValidation="False" CommandName="Cancel" ForeColor="Black" Height="27px" 
                            Text="انصراف"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Black" 
                            CausesValidation="False" CommandName="Edit" ForeColor="#66FF33" Height="27px" 
                            Text="ویرایش"></asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle BackColor="Black" ForeColor="#66FF33" Height="27px" />
                </asp:TemplateField>
                <asp:CommandField SelectText="انتخاب" ShowSelectButton="True" EditText="ویرایش">
                <ControlStyle Height="27px" />
                <FooterStyle Height="27px" />
                <HeaderStyle Height="27px" />
                <ItemStyle BackColor="Black" ForeColor="#66FF33" Height="27px" />
                </asp:CommandField>
                <asp:TemplateField HeaderText="اندیس" InsertVisible="False" SortExpression="ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="سال" SortExpression="Years">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" ReadOnly="True" 
                            Text='<%# Bind("Years") %>' Width="60px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Years") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ماه" SortExpression="Month">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Enabled="False" ReadOnly="True" 
                            Text='<%# Bind("Month") %>' Width="60px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Month") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="روز" SortExpression="Day">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Enabled="False" ReadOnly="True" 
                            Text='<%# Bind("Day") %>' Width="60px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Day") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ساعت" SortExpression="Hours">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Enabled="False" ReadOnly="True" 
                            Text='<%# Bind("Hours") %>' Width="60px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Hours") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="دقیقه" SortExpression="Minute">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Enabled="False" ReadOnly="True" 
                            Text='<%# Bind("Minute") %>' Width="60px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Minute") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="نام" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox6" ErrorMessage="*" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Name") %>' 
                            Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="نام خانوادگی" SortExpression="Family">
                    <EditItemTemplate>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox7" ErrorMessage="*" Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Family") %>' 
                            Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("Family") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="شماره تماس" SortExpression="Phone">
                    <EditItemTemplate>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="TextBox8" Display="Dynamic" ErrorMessage="*" 
                            Font-Size="Large" ForeColor="Red" ToolTip="*** شماره موبایل 11 عدد میباشد ***" 
                            ValidationExpression="\d{11}">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox8" ErrorMessage="*" Font-Size="Large" ForeColor="Red" 
                            ToolTip="*** شماره تماس باید وارد شود ***">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Phone") %>' 
                            ToolTip="*** ترجیها شماره موبایل را وارد نمایید ***" Width="100px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle Height="27px" HorizontalAlign="Center" VerticalAlign="Middle" 
                Width="900px" />
            <EmptyDataRowStyle Font-Bold="True" Font-Size="XX-Large" ForeColor="Red" 
                Height="27px" HorizontalAlign="Center" VerticalAlign="Middle" />
            <FooterStyle Height="27px" />
            <HeaderStyle BackColor="#ECFB2F" Height="40px" HorizontalAlign="Center" 
                VerticalAlign="Top" />
            <PagerSettings PageButtonCount="3" />
            <PagerStyle HorizontalAlign="Center" VerticalAlign="Bottom" />
            <RowStyle ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" 
                Height="27px" />
            <SelectedRowStyle BackColor="#00CC00" Height="27px" />
            <SortedAscendingCellStyle Height="27px" />
            <SortedAscendingHeaderStyle Height="27px" />
            <SortedDescendingCellStyle Height="27px" />
            <SortedDescendingHeaderStyle Height="27px" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceDatesAdmin" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TimeConnectionString %>" 
            
            SelectCommand="SELECT [ID], [Years], [Month], [Day], [Hours], [Minute], [Name], [Family], [Phone] FROM [Schedules] ORDER BY [ID] DESC" 
            FilterExpression="[Years]={1} AND [Month]='{0}'" 
            DeleteCommand="DELETE FROM [Schedules] WHERE [ID] = @ID" 
            InsertCommand="INSERT INTO [Schedules] ([Years], [Month], [Day], [Hours], [Minute], [Name], [Family], [Phone]) VALUES (@Years, @Month, @Day, @Hours, @Minute, @Name, @Family, @Phone)" 
            UpdateCommand="UPDATE [Schedules] SET [Years] = @Years, [Month] = @Month, [Day] = @Day, [Hours] = @Hours, [Minute] = @Minute, [Name] = @Name, [Family] = @Family, [Phone] = @Phone WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <FilterParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="newparameter" 
                    PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList2" Name="newparameter" 
                    PropertyName="SelectedValue" />
            </FilterParameters>
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
       
        <asp:SqlDataSource ID="SqlDataSourceControl1Admin" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TimeConnectionString %>" 
            SelectCommand="SELECT [Month], [ID] FROM [Month] ORDER BY [ID] DESC">
        </asp:SqlDataSource>
       
        <asp:SqlDataSource ID="SqlDataSourceControl2Admin" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TimeConnectionString %>" 
            SelectCommand="SELECT [ID], [Years] FROM [Years] ORDER BY [ID]">
        </asp:SqlDataSource>
       
    </p>

</asp:Content>
