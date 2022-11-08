## Clase Usuarios()
#  Contiene los atributos: Nombre, Dni, Apellido, Contrasenia, Telefono, Direccion, Email, Cod_postal, Cidudad, Provincia
# Conecta con la tabla Usuarios de la base de datos de MySQL, donde agrega registro o modifica registros
# RegistrarUsuario()
# ModificarUsuario()

class usuario:
    Id_usuario=0
    Dni=0
    Nombre=" "
    Apellido=" "
    Contraseña=0
    Telefono=" "
    Direccion=" "
    Email=" "
    Cod_postal=" "
    Ciudad=" "
    Id_provincia=0

    def __init__(self,id_ususario,dni,nombre,apellido,contraseña,telefono,direccion,email,cod_postal,ciudad,id_provincia) :
        self.Id_usuario=id_ususario
        self.Dni=dni
        self.Nombre=nombre
        self.Apellido=apellido
        self.Contraseña=contraseña
        self.Telefono=telefono
        self.Direccion=direccion
        self.Email=email
        self.Cod_postal=cod_postal
        self.Ciudad=ciudad
        self.Id_provincia=id_provincia
    def get_Id_usuario(self):
        return self.Id_usuario
    def set_Id_usuario(self,id_usuario):
        self.Id_usuario=id_usuario
    def get_Dni(self):
        return self.Dni
    def set_Dni(self,dni):
        self.Dni=dni
    def get_Nombre(self):
        return self.Nombre
    def set_Nombre(self,nombre):
        self.Nombre=nombre
    def get_Apellido(self):
        return self.Apellido
    def set_Apellido(self,apellido):
        self.Apellido=apellido
    def get_Contraseña(self):
        return self.Contraseña
    def set_Contraseña(self,contraseña):
        self.Contraseña=contraseña
    def get_Telefono(self):
        return self.Telefono
    def set_Telefono(self,telefono):
        self.Telefono=telefono
    def get_Direccion(self):
        return self.Direccion
    def set_Direccion(self,direccion):
        self.Direccion=direccion
    def get_Email(self):
        return self.Email
    def set_Email(self,email):
        self.Email=email
    def get_Cod_postal(self):
        return self.Cod_postal
    def set_Cod_postal(self,cod_postal):
        self.Cod_postal=cod_postal
    def get_Ciudad(self):
        return self.Ciudad
    def set_Ciudad(self,ciudad):
        self.Ciudad=ciudad
    def get_Id_provincia(self):
        return self.Id_provincia
    def set_Id_provincia(self,id_provincia):
        self.Id_provincia=id_provincia
    def __str__(self):
        return("el numero identificador del usuario es : "+ str(self.Id_usuario)+"su dni es : " + str(self.Dni) + "su nombre es: " +str(self.Nombre) + "su apellido es: " +str(self.Apellido))
