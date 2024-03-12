<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QLPB.aspx.cs" Inherits="WebQlns.QLPB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2 class="text-center">QUAN LY PHONG BAN</h2>
<hr />
    <asp:SqlDataSource ID="dsphongban" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString3 %>" SelectCommand="SELECT * FROM [PhongBan]"></asp:SqlDataSource>
    <asp:DropDownList ID="ddlphongban" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="dsphongban" DataTextField="TenPhong" DataValueField="MaPhong"></asp:DropDownList>


    <asp:SqlDataSource ID="dsnvpb" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString4 %>" SelectCommand="SELECT * FROM [NhanVien] WHERE ([MaPhong] = @MaPhong)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlphongban" Name="MaPhong" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
</asp:SqlDataSource>
    <hr />
    <asp:GridView ID="gvnhanvien" CssClass="mx-auto" runat="server" AutoGenerateColumns="False" DataKeyNames="MaNV" DataSourceID="dsnvpb">
        <Columns>
            <asp:BoundField DataField="MaNV" HeaderText="MaNV" InsertVisible="False" ReadOnly="True" SortExpression="MaNV" />
            <asp:BoundField DataField="HoNV" HeaderText="HoNV" SortExpression="HoNV" />
            <asp:BoundField DataField="TenNV" HeaderText="TenNV" SortExpression="TenNV" />
            <asp:CheckBoxField DataField="Phai" HeaderText="Phai" SortExpression="Phai" />
            <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" SortExpression="NgaySinh" />
            <asp:BoundField DataField="NoiSinh" HeaderText="NoiSinh" SortExpression="NoiSinh" />
            <asp:BoundField DataField="MaPhong" HeaderText="MaPhong" SortExpression="MaPhong" />
        </Columns>
    </asp:GridView>
</asp:Content>
