<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>..Reporte..</title>
<!--  esto esta de prueba -->
<link href="../css/estilo.css" rel="stylesheet">
<link href="../bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../bootstrap/css/bootstrap-theme.css" rel="stylesheet">
<link href="../bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<!-- hasta aca es la prueba   -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"> 
<link href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css" rel="stylesheet">
<link href="../css/estiloHeader.css" rel="stylesheet">
<link href="../css/estiloMenu.css" rel="stylesheet">
<link href="../css/estiloFooter.css" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="http://www.jqueryscript.net/demo/Export-Html-Table-To-Excel-Spreadsheet-using-jQuery-table2excel/src/jquery.table2excel.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>



<!-- prueba -->
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../bootstrap/js/bootstrap.js"></script>

<!-- fin prueba -->

<script src="../js/myjava.js"></script>

</head>
<body>
    <header class="headerPage">
        <img class="imgHeaderWagner">
        <img class="imgHeaderCliente">
    </header>
    <div style="width: 100%;">
         <div class="menuWrapperDiv">
    </div>
    </div>     
    <section>
    <div style="margin: 1px; padding: 1px;float:left; border: 1px solid #c1c1c1;">
        <table border="0" align="center" >
    	<tr>  
            <td>
                <label style="font-size: 13px;" for="from">Desde</label>   
                <input style="width: 140px;" type="date" id="bd-desde"/>
            </td>
            <td>
            <label style="font-size: 13px;" for="to">Hasta</label>
            <input style="width: 150px; padding: 8px;" type="date" id="bd-hasta"/>
            </td>
          <td> &nbsp&nbsp&nbsp<button id="filtroLocal" class="btn btn-default " onclick="filtrarLocal()">Buscar</button></td>
            <td width="100"><button id="local" class="btn btn-default" onclick="locales()">Por Local</button></td>
            <td width="100"><button  class="btn btn-success" onclick="exportar()" >Exportar</button></td>
            
           
        </tr>
    </table>
    </div>
    </section>
    <br><br><br><br>

    <div id="agrega-registros"></div>

    <div id="todosLocales"></div>


    
    <!-- MODAL PARA EL REGISTRO DE PRODUCTOS -->
 <div class="modal fade" id="registra-producto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title" id="myModalLabel"><b>Filtro Por Local</b></h4>
            </div>
            <form id="formulario" class="formulario" onsubmit="return agregaRegistro();">
            <div class="modal-body">
                <table border="0" width="100%">
                     <tr>
                        <td colspan="2"><input type="text" required="required" readonly="readonly" id="id-prod" name="id-prod" readonly="readonly" style="visibility:hidden; height:5px;"/></td>
                    </tr>
                     <tr>
                        <td width="150">Proceso: </td>
                        <td><input type="text" required="required" readonly="readonly" id="pro" name="pro"/></td>
                    </tr>
                    <tr>
                        <td>Nombre: </td>
                        <td><input type="text" required="required" name="nombre" id="nombre" maxlength="100"/></td>
                    </tr>
                    <tr>
                        <td>Tipo: </td>
                        <td><select required="required" name="tipo" id="tipo">
                                <option value="enlatados">Enlatados</option>
                                <option value="organicos">Organicos</option>
                                <option value="nocomestibles">No Comestibles</option>
                                <option value="otros">Otros</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Precio Unitario: </td>
                        <td><input type="number" required="required" name="precio-uni" id="precio-uni"/></td>
                    </tr>
                    <tr>
                        <td>Precio Distribuidor: </td>
                        <td><input type="number"  required="required" name="precio-dis" id="precio-dis"/></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div id="mensaje"></div>
                        </td>
                    </tr>
                </table>
            </div>
            
            <div class="modal-footer">
                <input type="submit" value="Registrar" class="btn btn-success" id="reg"/>
                <input type="submit" value="Editar" class="btn btn-warning"  id="edi"/>
            </div>
            </form>
          </div>
        </div>
      </div>
      <footer class="footerPage">
    <p class="p">Sistema Web de Reportes &copy; 2017 WagnerCorp.</p>
</footer>

    </body>

</html>
