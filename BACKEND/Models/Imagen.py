# Conecta con los registros de la tabla Imagen de la base de datos de MySQL, tambien se puede conectar con un posterior desarrollo de API de productos con las imagenes correspondientes
# AgregarImagen()
# EliminarImagen()  

class imagen:
    Id_imagen=0
    Nombre=" "
    Imagen=" "
    Id_producto=0

    def __init__(self,id_imagen,nombre,imagen,id_producto) :
        self.Id_imagen=id_imagen
        self.Nombre=nombre
        self.Imagen=imagen
        self.Id_producto=id_producto
    def get_Id_imagen(self):
        return self.Id_imagen
    def set_Id_imagen(self,id_imagen):
        self.Id_imagen=id_imagen
    def get_Nombre(self):
        return self.Nombre
    def set_Nombre(self,nombre):
        self.Nombre=nombre
    def get_Imagen(self):
        return self.Imagen
    def set_Imagen(self,imagen):
        self.Imagen=imagen
    def get_Id_producto(self):
        return self.Id_producto
    def set_Id_producto(self,id_producto):
        self.Id_producto=id_producto
    def __str__(self):
        return("el numero identificador de la imagen es : "+ str(self.Id_imagen)+"su nombre es : " + str(self.Nombre) + "el codigo del producto al cual pertenece es: " +str(self.Id_producto))
