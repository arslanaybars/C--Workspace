﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="KategoriEkle.aspx.cs" Inherits="webSaglikProjesi.KategoriEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">
        <asp:GridView ID="gvKategoriler" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="400px" AutoGenerateColumns="False" DataKeyNames="id" OnSelectedIndexChanged="gvKategoriler_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Button" HeaderText="Seç" SelectText="&gt;&gt;" ShowSelectButton="True" />
                <asp:BoundField DataField="kategoriad" HeaderText="Kategori Adı" />
                <asp:BoundField DataField="aciklama" HeaderText="Acıklama" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </div>
    <div>
        <br />
        <asp:LinkButton ID="btnYeni" runat="server" OnClick="btnYeni_Click">Yeni Kategori Ekle</asp:LinkButton>
        <br />
        <asp:Panel ID="pnlGiris" runat="server" Visible="false">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Kategori Adı : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtKategoriAdi" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Acıklama : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAciklama" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" Height="24px" Width="70px" CssClass="bluebutton" />
                        <asp:Button ID="btnDegistir" runat="server" Text="Değştir" Height="24px" Width="70px" CssClass="bluebutton" OnClick="btnDegistir_Click" />
                        <asp:Button ID="btnSil" runat="server" Text="Sil" Height="24px" Width="70px" CssClass="bluebutton" OnClick="btnSil_Click" />

                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
</asp:Content>
