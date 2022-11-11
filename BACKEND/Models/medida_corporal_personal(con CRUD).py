class medida_corporal_personal:
    Id_medida_corporal_personal=0
    Medida_hombro=" "
    Medida_cuello=" "
    Altura_de_pecho=" "
    Contorno_de_pecho=" "
    Cintura=" "
    Alto_de_cintura=" "
    Cadera=" "
    Alto_de_cadera=" "
    Ancho_de_espalda=" "
    Contorno_de_pierna=" "
    Largo_de_pierna=" "
    Id_usuario=0

    def __init__(self,id_medida_corporal_personal,medida_hombro,medida_cuello,altura_de_pecho,contorno_de_pecho,cintura,alto_de_cintura,cadera,alto_de_cadera,ancho_de_espalda,contorno_de_pierna,largo_de_pierna,id_usuario) :
        self.Id_medida_corporal_personal=id_medida_corporal_personal
        self.Medida_hombro=medida_hombro
        self.Medida_cuello=medida_cuello
        self.Altura_de_pecho=altura_de_pecho
        self.Contorno_de_pecho=contorno_de_pecho
        self.Cintura=cintura
        self.Alto_de_cintura=alto_de_cintura
        self.Cadera=cadera
        self.Alto_de_cadera=alto_de_cadera
        self.Ancho_de_espalda=ancho_de_espalda
        self.Contorno_de_pierna=contorno_de_pierna
        self.Largo_de_pierna=largo_de_pierna
        self.Id_usuario=id_usuario
    def get_Id_medida_corporal_personal(self):
        return self.Id_medida_corporal_personal
    def set_Id_medida_corporal_personal(self,id_medida_corporal_personal):
        self.Id_medida_corporal_personal=id_medida_corporal_personal
    def get_Medida_hombro(self):
        return self.Medida_hombro
    def set_Medida_hombro(self,medida_hombro):
        self.Medida_hombro=medida_hombro
    def get_Medida_cuello(self):
        return self.Medida_cuello
    def set_Medida_cuello(self,medida_cuello):
        self.Medida_cuello=medida_cuello
    def get_Altura_de_pecho(self):
        return self.Altura_de_pecho
    def set_Altura_de_pecho(self,altura_de_pecho):
        self.Altura_de_pecho=altura_de_pecho
    def get_Contorno_de_pecho(self):
        return self.Contorno_de_pecho
    def set_Contorno_de_pecho(self,contorno_de_pecho):
        self.Contorno_de_pecho=contorno_de_pecho
    def get_Cintura(self):
        return self.Cintura
    def set_Cintura(self,cintura):
        self.Cintura=cintura
    def get_Alto_de_cintura(self):
        return self.Alto_de_cintura
    def set_Alto_de_cintura(self,alto_de_cintura):
        self.Alto_de_cintura=alto_de_cintura
    def get_Cadera(self):
        return self.Cadera
    def set_Cadera(self,cadera):
        self.Cadera=cadera
    def get_Alto_de_cadera(self):
        return self.Alto_de_cadera
    def set_Alto_de_cadera(self,alto_de_cadera):
        self.Alto_de_cadera=alto_de_cadera
    def get_Ancho_de_espalda(self):
        return self.Ancho_de_espalda
    def set_Ancho_de_espalda(self,ancho_de_espalda):
        self.Ancho_de_espalda=ancho_de_espalda
    def get_Contorno_de_pierna(self):
        return self.Contorno_de_pierna
    def set_Contorno_de_pierna(self,contorno_de_pierna):
        self.Contorno_de_pierna=contorno_de_pierna
    def get_Largo_de_pierna(self):
        return self.Largo_de_pierna
    def set_Largo_de_pierna(self,largo_de_pierna):
        self.Largo_de_pierna=largo_de_pierna
    def get_Id_usuario(self):
        return self.Id_usuario
    def set_Id_usuario(self,id_usuario):
        self.Id_usuario=id_usuario
    def __str__(self):
        return("el numero identificador de las medidas corporales personal es : "+ str(self.Id_medida_corporal_personal) + "y pertenece al usuario con identificador " +str(self.Id_usuario))

import mysql.connector
class medidas_corporales_personal():
    def __init__(self) ->None:
        try:
            self.conexion=mysql.connector.connect(
                host='localhost',
                port=3306,
                user='root',
                password='38182262',
                db='virtualtrends'
            )
        except mysql.connector.Error as descripcionError:
            print("no se puede conectar a la base de datos")
#primera operacion CRUD:Insert
    def InsertarMedidas(self,id_medida_corporal_personal,medida_hombro,medida_cuello,altura_de_pecho,contorno_de_pecho,cintura,alto_de_cintura,cadera,alto_de_cadera,ancho_de_espalda,contorno_de_pierna,largo_de_pierna,id_usuario):
        if self.conexion.is_connected():
            try:
                cursor=self.conexion.cursor()
                sentenciaSQL="INSERT INTO medida_corporal_personal VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
                data=(id_medida_corporal_personal,medida_hombro,medida_cuello,altura_de_pecho,contorno_de_pecho,cintura,alto_de_cintura,cadera,alto_de_cadera,ancho_de_espalda,contorno_de_pierna,largo_de_pierna,id_usuario)
                
                cursor.execute(sentenciaSQL,data)
                self.conexion.commit()
                self.conexion.close()
            except:
                print("no se concreto sentencia a la base de datos")

#medida4=medidas_corporales_personal()
#medida4.InsertarMedidas('4','13','35','26','91.5','72','36.5','93','21','36','45','null','6')
#medida5=medidas_corporales_personal()
#medida5.InsertarMedidas('5','13','36','24','91','71','36','93','20','35','45','null','8')

#segunda operacion CRUD:Read o leer(select)
    def BuscarMedidas(self,ID):
        if self.conexion.is_connected():
            try:
                 cursor=self.conexion.cursor()
                 sentenciaSQL="SELECT * FROM medida_corporal_personal where id_usuario =%s"
                 data=(ID,)
                 cursor.execute(sentenciaSQL,data)
                 resultadoREAD=cursor.fetchall()
                 self.conexion.close()
                 return resultadoREAD
            except:
                print("No se pudo concretar la sentencia en la base de datos")

#medidabuscada=medidas_corporales_personal()
#print(medidabuscada.BuscarMedidas(2))

# tercera operacion CRUD:UPDATE
    def ActualizarMedidas(self,medida_cintura_actualizada,id_usuario):
        if self.conexion.is_connected():
            try:
                 cursor=self.conexion.cursor()
                 sentenciaSQL="UPDATE medida_corporal_personal SET cintura= %s WHERE id_usuario= %s"
                 data=(medida_cintura_actualizada,id_usuario)
                 cursor.execute(sentenciaSQL,data)
                 self.conexion.commit()
                 self.conexion.close()
                 
            except:
                print("No se pudo concretar la sentencia en la base de datos")

#actualizarmedida6=medidas_corporales_personal()
#actualizarmedida6.ActualizarMedidas(73,6)

#cuarta operacion CRUD:DELETE
    def EliminarRegistroMedidas(self,ID_usuario):
        if self.conexion.is_connected():
            try:
                 cursor=self.conexion.cursor()
                 sentenciaSQL="DELETE FROM medida_corporal_personal WHERE id_usuario=%s"
                 data=(ID_usuario,)
                 cursor.execute(sentenciaSQL,data)
                 self.conexion.commit()
                 self.conexion.close()
                 
            except:
                print("No se pudo concretar la eliminacion en la base de datos")

#eliminaregistro6=medidas_corporales_personal()
#eliminaregistro6.EliminarRegistroMedidas(6)
#print("se borro el registro de medidas corporales")







