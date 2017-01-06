<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
            body {
                background: url(img/calendario.jpg) no-repeat fixed center;   
            }
        </style>
    </head>
    <body>
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
      
       
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Iniciar Sesion</h3>
                    </div>
                    <div class="panel-body">
                        <form accept-charset="UTF-8" role="form" method="post" action="index.php?view=processlogin">
                            <div class="panel-heading"></div>
                            <div class="input-group margin-bottom-sm">
                                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                <input class="form-control" name="mail" type="text" placeholder="Usuario">
                            </div> 
                            <div class="panel-heading"></div>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
                                <input class="form-control" name="password" type="password" placeholder="Clave">
                            </div>
                            <div class="panel-heading"></div>
                            <input class="btn btn-lg btn-success btn-block " type="submit" value="Iniciar Sesion">                            
                        </form>                   
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>