<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Mercado._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
             <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
        <h1>Progra IV</h1>
        <p class="lead">Desarrollo por Capas</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Clase 5 &raquo;</a></p>
    </div>



    <asp:Label ID="lblNombre" runat="server" Text="Nombre" ></asp:Label>
    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>

    <asp:Label ID="lblPrecio" runat="server" Text="Precio"></asp:Label>
    <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>

    <asp:Label ID="lblMarca" runat="server" Text="Marca"></asp:Label>
    <asp:TextBox ID="txtMarca" runat="server"></asp:TextBox>

    <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />

    <asp:Button ID="btnActualizar" runat="server" OnClick="Button1_Click" Text="Actualizar" />

    <hr />

    <asp:GridView ID="gvProducts" runat="server" class="table table-striped table-hover table-dark" OnRowCommand="gvProducts_RowCommand">
        <Columns>
            <asp:ButtonField CommandName="seleccionarProducto" ShowHeader="True" Text="Editar">
            <ControlStyle CssClass="btn btn-success" ForeColor="White" />
            </asp:ButtonField>
            <asp:ButtonField ShowHeader="True" Text="X" CommandName="borrarProducto">
            <ControlStyle CssClass="btn btn-danger" />
            <ItemStyle CssClass="btn btn-danger" />
            </asp:ButtonField>
        </Columns>
    </asp:GridView>




    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
