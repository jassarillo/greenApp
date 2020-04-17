<div class="row mB-40">
	<div class="col-sm-8">
		<div class="bgc-white p-20 bd">
			{!! Form::myInput('text', 'name', 'Nombre de usuario') !!}
		
			{!! Form::myInput('email', 'email', 'Correo') !!}
	
			{!! Form::myInput('password', 'password', 'Contraseña') !!}
	
			{!! Form::myInput('password', 'password_confirmation', 'Repetir Contraseña') !!}
	
			{!! Form::mySelect('role', 'Rol', config('variables.role'), null, ['class' => 'form-control select2']) !!}
	
			{!! Form::myFile('avatar', 'Avatar') !!}
	
			{!! Form::myTextArea('bio', 'Bio') !!}
		</div>  
	</div>
</div>