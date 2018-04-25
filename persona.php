<?php
//aqui estan creadas que controlaran las transacciones de la base de datos
include 'conexion.php';
class persona{
	protected $c;
	public function persona(){
		//inicializar lo necesario
		$this->c = new conexion();
	}
	public function agregar($id,$nom,$ape,$ed,$dir){
		$sql="insert into persona values($id,'$nom','$ape',$ed,'$dir'";
		$this->c =ejecutar($sql);
	}
	public function modificar($id,$nom,$ape,$ed,$dir){
		$sql="update persona set nombres='$nom', apellidos='$ape', edad=$ed, direccion=$'dir' where id=$id ";
		$this->c->ejecutar($sql);
	}
	public function eliminar($id){
		$sql="delete from persona where id=$id";
		$this->c->ejecutar($sql);
	}
	public function mostrar(){
		$sql="select * from persona";
		$resultado=$this->c->consultar($sql);
		$ncampos=mysqli_num_fields($resultado);
		$tabla = "<table border ='1px'>";
		//imprimiendo los encabezados de la tabla
		$tabla .= "<tr>";
		while ($encabezado= mysqli_fetch_field($resultado)) {
			$tabla .= "<td><b>".$encabezado->name. "</td></b>";
		}
		//columna extra  para las acciones sobre los datos
		$tabla .= "<td><b>Acciones</td></b>";
		//hasta aqui
		$tabla .= "</tr>";
		//imprimiendo el resto de la tabla
		for ($i=0; $i <$ncampos ; $i++) { 
			# code...
		}
        
	}
}