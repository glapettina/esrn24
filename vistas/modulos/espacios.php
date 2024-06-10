<div class="content-wrapper">
    
    <section class="content-header">
      <h1>
        Administrar Espacios Curriculares
        
      </h1>
      <ol class="breadcrumb">
        <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
        <li class="active">Administrar Espacios Curriculares</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="box">

        <div class="box-header with-border">
          
          <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarEspacio">
            
            Agregar Espacio Curricular
          </button>
          
        </div>
        <div class="box-body">
          
          <table class="table table-bordered table-striped dt-responsive tablas">
            
            <thead>
              
              <tr>
                
                <th style="width: 10px">#</th>
                <th>Descripción</th>
                <th>Estado</th>
                <th>Acciones</th>

              </tr> 

            </thead>
            <tbody>
              
              <?php

                  $item = null;
                  $valor = null;
                  $ingreso = 0;

                  $espacios = ControladorEspacios::ctrMostrarEspacios($item, $valor, $ingreso);

                  foreach ($espacios as $key => $value) {
                    
                    echo '<tr>
                
                          <td>'.($key+1).'</td>
                          <td>'.$value["nombre"].'</td>';

                          if ($value["estado"] != 0) {
                          
                          echo '<td><button class="btn btn-success btn-xs btnActivarEspacio" idEspacio="'.$value["id_espacio"].'" estadoEspacio="0">Activado</button></td>';

                        }else{

                          echo '<td><button class="btn btn-danger btn-xs btnActivarEspacio" idEspacio="'.$value["id_espacio"].'" estadoEspacio="1">Desactivado</button></td>';
                        }

                          echo '<td>
                            
                            <div class="btn-group">
                                
                              <button class="btn btn-warning btnEditarEspacio" idEspacio="'.$value["id_espacio"].'" data-toggle="modal" data-target="#modalEditarEspacio"><i class="fa fa-pencil"></i></button>
                              <button class="btn btn-danger btnEliminarEspacio" idEspacio="'.$value["id_espacio"].'"><i class="fa fa-times"></i></button>

                            </div>

                          </td>

                        </tr> ';
                  }


              ?>

            </tbody>

          </table>

        </div>
        
        
      </div>

    </section>
  </div>


  <!--=====================================
            MODAL AGREGAR ESPACIO
  ======================================-->


<div id="modalAgregarEspacio" class="modal fade" role="dialog">

  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

          <!--=====================================
                        CABEZA DEL MODAL
          ======================================-->

          <div class="modal-header" style="background: #3c8dbc; color: white">

            <button type="button" class="close" data-dismiss="modal">&times;</button>

            <h4 class="modal-title">Agregar Espacio Curricular</h4>

          </div>

          <!--=====================================
                      CUERPO DEL MODAL
          ======================================-->


          <div class="modal-body">

            <div class="box-body">

              <!-- ENTRADA PARA EL NOMBRE -->          
              
              <div class="form-group">
                
                <div class="input-group">
                  
                  <span class="input-group-addon"><i class="fa fa-user"></i></span>
                  <input class="form-control input-lg" type="text" name="nuevoEspacio" placeholder="Ingresar espacio curricular" required>

                </div>

              </div>              

            </div>
            
          </div>

          <!--=====================================
                        PIE DEL MODAL
          ======================================-->



          <div class="modal-footer">

            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

            <button type="submit" class="btn btn-primary">Guardar Espacio Curricular</button>

          </div>

          <?php

              $crearespacio = new ControladorEspacios();
              $crearespacio -> ctrCrearEspacio();

          ?>

    </form>
    </div>

  </div>
</div>

  
  <!--=====================================
            MODAL EDITAR ESPACIO
  ======================================-->


<div id="modalEditarEspacio" class="modal fade" role="dialog">

  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

          <!--=====================================
                        CABEZA DEL MODAL
          ======================================-->

          <div class="modal-header" style="background: #3c8dbc; color: white">

            <button type="button" class="close" data-dismiss="modal">&times;</button>

            <h4 class="modal-title">Editar Espacio Curricular</h4>

          </div>

          <!--=====================================
                        CUERPO DEL MODAL
          ======================================-->


          <div class="modal-body">

            <div class="box-body">

              <!-- ENTRADA PARA EL NOMBRE -->          
              
              <div class="form-group">
                
                <div class="input-group">
                  
                  <span class="input-group-addon"><i class="fa fa-th"></i></span>
                  <input class="form-control input-lg" type="text" name="editarEspacio" id="editarEspacio" required>
                  <input type="hidden" name="idEspacio" id="idEspacio">
                  
                </div>

              </div>  
              
            </div>
            
          </div>

          <!--=====================================
                          PIE DEL MODAL
          ======================================-->

          <div class="modal-footer">

            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

            <button type="submit" class="btn btn-primary">Guardar Cambios</button>

          </div>

          <?php

              $editarespacio = new ControladorEspacios();
              $editarespacio -> ctrEditarEspacio();

          ?>

    </form>
    </div>

  </div>
</div>

  <?php

      $borrarespacio = new ControladorEspacios();
      $borrarespacio -> ctrBorrarEspacio();

  ?>
  

  