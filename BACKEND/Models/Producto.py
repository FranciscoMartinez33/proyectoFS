# Se relaciona con la tabla Producto de MySql donde ingresa un registro nuevo, modifica valores de la tabla
# Puede realizarse el desarrollo futuro de una API donde se registren y actualicen productos con los valores de la clase imagenes
# AgregarProducto()
# ModificaAtributo() 

class producto:
    Id_producto=0
    Nombre_producto=" "
    Id_categoria_producto=" "
    Descripcion_producto=" "
    Precio_producto=0
    Id_diseñador=0

    def __init__(self,id_producto,nombre_producto,id_categoria_producto,descripcion_producto,precio_producto,id_diseñador) :
        self.Id_producto=id_producto
        self.Nombre_producto=nombre_producto
        self.Id_categoria_producto=id_categoria_producto
        self.Descripcion_producto=descripcion_producto
        self.Precio_producto=precio_producto
        self.Id_diseñador=id_diseñador
    def get_Id_producto(self):
        return self.Id_producto
    def set_Id_Producto(self,id_producto):
        self.Id_producto=id_producto
    def get_Nombre_producto(self):
        return self.Nombre_producto
    def set_Nombre_producto(self,nombre_producto):
        self.Nombre_producto=nombre_producto
    def get_Id_categoria_producto(self):
        return self.Id_categoria_producto
    def set_Id_categoria_producto(self,id_categoria_producto):
        self.Id_categoria_producto=id_categoria_producto
    def get_Descripcion_producto(self):
        return self.Descripcion_producto
    def set_Descripcion_producto(self,descripcion_producto):
        self.Descripcion_producto=descripcion_producto
    def get_Precio_producto(self):
        return self.Precio_producto
    def set_Precio_producto(self,precio_producto):
        self.Precio_producto=precio_producto
    def get_Id_diseñador(self):
        return self.Id_diseñador
    def set_Id_diseñador(self,id_diseñador):
        self.Id_diseñador=id_diseñador
    def __str__(self):
        return("el numero identificador del producto es : "+ str(self.Id_producto)+"su nombre es : " + str(self.Nombre_producto) + "el codigo de categoria al cual pertenece es: " +str(self.Id_categoria_producto) + "su precio es: " +str(self.Precio_producto)+"el identificador de su diseñador es: " +str(self.Id_diseñador))
