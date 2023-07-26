<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro_Proyectos.aspx.cs" Inherits="RegistrodeProyectos.Registro_Proyectos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <title>Project Managment</title>
</head>
<body class="form-control bg-light">
      <div class="container small">
        <div class="row">
    <h2 class="text-center">Formulario de Registro de Proyectos</h2>
            <div class="col">
                <form id="formulario_registroproyecto" runat="server">
                    <div>
                        <fieldset>
                            <legend>Registro de Proyectos</legend>
                            <asp:Table runat="server">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:label runat="server" ID="lblNombre_Proyecto" Text="Proyecto:"></asp:label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox CssClass="form-control" runat="server" ID="Proyecto" placeholder="ej. Proyecto de Base de Datos"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                     <asp:TableCell>
                                        <asp:label runat="server" ID="lblArchivo" Text="Archivo:"></asp:label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox CssClass="form-control" runat="server" ID="Archivo" placeholder="ej. img,pdf,xls etc"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                     <asp:TableCell>
                                        <asp:label runat="server" ID="lblCategoria" Text="Categoria:"></asp:label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox CssClass="form-control" runat="server" ID="Categoria"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                     <asp:TableCell>
                                        <asp:label runat="server" ID="lblEmpleado" Text="Empleado:"></asp:label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox CssClass="form-control" runat="server" ID="Empleado"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                     <asp:TableCell>
                                        <asp:label runat="server" ID="lblEstado" Text="Estado:"></asp:label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox CssClass="form-control" runat="server" ID="Estado"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                     <asp:TableCell>
                                        <asp:label runat="server" ID="lblComentario" Text="Comentario:"></asp:label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox CssClass="form-control" runat="server" ID="Comentario" placeholder="Este proyecto esta diseñado para innovacion"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                     <asp:TableCell>
                                        <asp:label runat="server" ID="lblFecha_Creacion" Text="Fecha de Creacion:"></asp:label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox CssClass="form-control" runat="server" ID="Fecha" TextMode="Date" ></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                     <asp:TableCell>
                                        <asp:label runat="server" ID="lblUltimaModificacion" Text="Ultima Modificacion:"></asp:label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox CssClass="form-control" runat="server" ID="UltimaModificacion" TextMode="Date"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                     <asp:TableCell>
                                        <asp:label runat="server" ID="lblCreadoPor" Text="Creado Por:"></asp:label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox CssClass="form-control" runat="server" ID="CreadoPor"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                     <asp:TableCell>
                                        <asp:label runat="server" ID="lblModificadoPor" Text="Modificado Por:"></asp:label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox CssClass="form-control" runat="server" ID="ModificadoPor"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                     <asp:TableCell>
                                        <asp:label runat="server" ID="lblComponentes_SubComponentes" Text="Componente"></asp:label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox CssClass="form-control" runat="server" ID="Componente"></asp:TextBox>
                                         <asp:Button ID="Registrar_OtroComponente" Text="+" OnClick="BtnRegistrar_Click" runat="server" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                 <asp:TableRow>
                                     <asp:TableCell>
                                        <asp:label runat="server" ID="lblSubComponentes" Text="SubComponente"></asp:label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox CssClass="form-control" runat="server" ID="SubComponente"></asp:TextBox>
                                        <asp:Button ID="Registrar_OtroSubComponente" Text="+" OnClick="BtnRegistrar_Click" runat="server" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </fieldset>
                        <br/>
                            <asp:Button ID="BtnRegistrar" Text="Registrar" CssClass="btn btn-dark btn-primary" OnClick="BtnRegistrar_Click" runat="server" />
              </div>
            </form>
            </div>
        </div>
        </div>
            <div class="col">
        </div>
   
</body>
</html>
