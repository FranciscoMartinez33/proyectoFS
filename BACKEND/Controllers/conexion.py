import mysql.connector

try:
    conexion=mysql.connector.connect(
        host='localhost',
        port=3306,
        user='root',
        password='38182262',
        db='virtualtrends'
    )
    if conexion .is_connected():
        print("la conexion fue exitosa!")
except:
    print("hubo un error!")
finally:
    if conexion.is_connected():
        conexion.close()
        print("la conexion fue cerrada")