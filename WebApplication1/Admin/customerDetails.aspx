<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerDetails.aspx.cs" Inherits="WebApplication1.Admin.customerDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
    .backtohome{
    color:red; 
    cursor:pointer;
    font-size:21px;
    }
    h1{
    justify-content: center;
    display: flex;
    }
    </style>
</head>
<body>
        <h1>Welcome to Customers Details Page</h1>
    <a href="admin.aspx" class="backtohome">Back To home Page</a>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:BoundField DataField="confirmpassword" HeaderText="confirmpassword" SortExpression="confirmpassword" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RegisterConnection %>" DeleteCommand="DELETE FROM [register] WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([confirmpassword] = @original_confirmpassword) OR ([confirmpassword] IS NULL AND @original_confirmpassword IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL))" InsertCommand="INSERT INTO [register] ([Name], [password], [confirmpassword], [Email], [Mobile]) VALUES (@Name, @password, @confirmpassword, @Email, @Mobile)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [register]" UpdateCommand="UPDATE [register] SET [Name] = @Name, [password] = @password, [confirmpassword] = @confirmpassword, [Email] = @Email, [Mobile] = @Mobile WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([confirmpassword] = @original_confirmpassword) OR ([confirmpassword] IS NULL AND @original_confirmpassword IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_password" Type="String" />
                    <asp:Parameter Name="original_confirmpassword" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Mobile" Type="Int64" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="confirmpassword" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Mobile" Type="Int64" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="confirmpassword" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Mobile" Type="Int64" />
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_password" Type="String" />
                    <asp:Parameter Name="original_confirmpassword" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Mobile" Type="Int64" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
