@extends('admin.default')

@section('page-header')
    Eventos <small>{{ trans('app.manage') }}</small>
@endsection
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
@section('content')

<div class="container">
<div class="panel panel-success">
      <div class="panel-heading">Agregar producto</div>
      <div class="panel-body">
    <form>
      <div class="form-group">
        <label for="exampleFormControlInput1">Agregar imagen</label>
<div class="input-group">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroupFileAddon01">Subir</span>
  </div>
  <div class="custom-file">
  <input type="file" class="custom-file-input" id="customFileLang" lang="es">
  <label class="custom-file-label" for="customFileLang">Seleccionar Archivo</label>
</div>
</div>
      </div>
      <div class="form-group">
        <label for="exampleFormControlSelect1">Titulo</label>
        <input type="email" class="form-control" id="exampleFormControlInput1" >
        </select>
      </div>
      
      <div class="form-group">
        <label for="exampleFormControlTextarea1">Descripción</label>
        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
      </div>
    </form>

    </div>
    </div>
</div>
<!-- comment-->

    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css"/>
<div class="container">
  <div class="well">
      <div class="media">
        <a class="pull-left" href="#">
            <img class="media-object" src="https://www.merca2.es/wp-content/uploads/2019/11/marihuana-terap%C3%A9utica-hoja-150x150.jpg">
        </a>
        <div class="media-body">
            <h4 class="media-heading">Roberto</h4>
          <p class="text-right">By Francisco</p>
          <p>La Cannabis sativa contiene muchos compuestos activos, pero dos son de interés para fines médicos: el THC (delta-9 tetrahidrocannabinol) y el CBD (cannabidiol). E lTHC es el ingrediente principal de la marihuana que hace que la gente esté "drogada".</p>
          <ul class="list-inline list-unstyled">
            <li><span><i class="glyphicon glyphicon-calendar"></i> 3 dias, 4 horas </span></li>
            <li>|</li>
            <span><i class="glyphicon glyphicon-comment"></i> 5 comentarios</span>
            <li>|</li>
            <li>
               <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star-empty"></span>
            </li>
            <li>|</li>
            <li>
            <!-- Use Font Awesome http://fortawesome.github.io/Font-Awesome/ -->
              
            </li>
            </ul>
       </div>
    </div>
  </div>
   <div class="well">
      <div class="media">
        <a class="pull-left" href="#">
            <img class="media-object" src="https://www.24-horas.mx/wp-content/uploads/2018/11/CUARTOSCURO-MArihuana-150x150.jpg">
        </a>
        <div class="media-body">
            <h4 class="media-heading">luis</h4>
          <p class="text-right">By Anailuj</p>
          <p>La Administración de Alimentos y Medicamentos de los Estados Unidos (FDA, por sus siglas en inglés) ha aprobado un medicamento derivado del cannabis y tres medicamentos relacionados con el cannabis: dronabinol (Marinol, Syndros), nabilona (Cesamet) y cannabidiol (Epidiolex).</p>
          <ul class="list-inline list-unstyled">
            <li><span><i class="glyphicon glyphicon-calendar"></i> 2 dias, 8 horas </span></li>
            <li>|</li>
            <span><i class="glyphicon glyphicon-comment"></i> 2 comentarios</span>
            <li>|</li>
            <li>
               <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star"></span>
                        <span class="glyphicon glyphicon-star-empty"></span>
            </li>
            <li>|</li>
            <li>
            <!-- Use Font Awesome http://fortawesome.github.io/Font-Awesome/ -->
              
            </li>
            </ul>
       </div>
    </div>
  </div>
</div>

@endsection