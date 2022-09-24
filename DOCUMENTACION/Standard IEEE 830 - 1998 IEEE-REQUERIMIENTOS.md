
https://acceso.ispc.edu.ar/mod/book/view.php?id=32064&chapterid=4265


************** Requisitos del usuario ************** nombre Usuario
Características de los usuarios
Tipo de usuario: consumidor de indumentaria y accesorios

************** Requisitos funcionales ************** abreviatura RF

Nombre del Requerimiento: Rf 01
Mostrar listado de todos los productos 

Permitir el filtrado del listado de productos 
Se podrán listas los mismos por precio (de mayor a  menor, y de menor a mayor), permitir el filtrado a partir del nombre de diseñador/a o marca, permitir el filtrado por talle estándar, permitir el filtrado de prendas 'personalizables/ customizables'.
NO hace falta estar registrado para acceder a estas funcionalidades

Nombre del Requerimiento:
Registrar Usuarios. Rf02

El usuario debe suministrar datos básicos obligatorios como: Nombre, Apellido, lugar de residencia en Argentina (otorgando los datos de Provincia, Ciudad, calle y número de casa / edificio, Código Postal, teléfono celular) 

El usuario debe brindar un E-mail donde se envía la solicitud de registro y donde el usuario lo confirma.Deberán proveer una casilla de email válida

El usuario deberá seleccionar un Nombre de Usuario que se mostrará en la página web y una Password para ingresar en ella.

Ingresarán una contraseña de 6 caracteres dos veces para confirmar la selección (Esta contraseña se pedirá a la hora de autenticarse)

Nombre del Requerimiento:  Rf03
Autenticación del usuario e ingresos permitidos

Los usuarios deberán identificarse para acceder a la sección de sus datos y comprar productos
Los usuarios autenticados podrán ingresar a su portal con contraseña y casilla de correo con formato válido.
La autenticación no será necesaria en el caso de la visualización de los ítems pero no se podrán agregar favoritos, sí se podrán cargar ítems al carrito de compras.
En el caso de estar registrado, será una carga automática con la información guardada previamente.

Nombre del Requerimiento: Rf04:
Guardar datos personales y de autenticación 

Nombre del Requerimiento: Rf05:
Poder visualizar los datos personales y de autenticación en el portal de la cuenta personal

Nombre del Requerimiento: Rf05:
Poder modificar datos personales y de autenticación


Nombre del Requerimiento: Rf06
Cargar datos personales de talla 
(Los datos personales de talla, serán requeridos obligatoriamente para la compra 'personalizada/ customizada' (en el caso de no optar por medida estándar)
El usuario debe ingresar, a través de un formulario brindado, la cantidad de datos que se le solicita (Allí ingresará las medidas que el sistema le pedirá. Es obligatorio validar que sean completadas todas las medidas)
Se generará un sistema propio de talle.

Nombre del Requerimiento Rf07:
Guardar el sistema de talla personal generado por el formulario (posterior a la carga de datos, Rf03)
Para este requerimiento SÍ se necesita estar registrado en la plataforma


Nombre del Requerimiento Rf08:
Ver el sistema de talle personal para verificar los datos cargados en la plataforma
Para este requerimiento SÍ se necesita estar registrado en la plataforma

Nombre del Requerimiento Rf09:
Poder modificar el sistema de talla personal guardado según el cliente lo desee o necesitase.
Para este requerimiento SÍ se necesita estar registrado en la plataforma.


Nombre del Requerimiento Rf10:
Seleccionar ítems del listado (opciones luego de la selección en Rf11, Rf12, Rf13)

Nombre del Requerimiento Rf11:
Poseer  niveles de accesos a la información (uno inmediato, con información básica, otro/s que requiera/n la acción de conseguir más información por parte del usuario si el ítem ofrecido es de su interés)

Nombre del Requerimiento Rf12:
Poder agregar el ítem sobre el cual el usuario tiene interés y guardarlo en su perfil de usuario para tener un marcador 

Nombre del Requerimiento Rf13:
agregar ítem al carrito de compras


Nombre del Requerimiento Rf14:
Ver ítems agregados en el carrito de compras

Nombre del Requerimiento Rf15:
Modificar ítems agregados en el carrito de compras

Nombre del Requerimiento Rf16:
Vaciar carrito de compras





************** Requisitos del sistema ************** abreviatura ERS Especificación de Requisitos Software
Restricciones:
• Interfaz para ser usada con internet.
• Lenguajes y tecnologías en uso: HTML, CSS, JavaScript
• El sistema se diseñará según un modelo cliente/servidor.

VER ** Requerimientos NO Funcionales (usabilidad- experiencia del usuario) abreviatura RNF 
(Los requerimientos no funcionales no están clasificados en la explicación de la plataforma pero están en el estándar IEEE 830)

  1)El sistema deberá tener un diseño minimalista que priorice la visualización correcta de las imágenes a través de las cuales el usuario seleccionará el indumento o accesorio a fabricar
  2) Uso de formas regulares y geométricas simples
  3) Paleta cromática restringida (3/4)

En relación con los requisitos funcionales Rf11 Visualizar en una instancia  información del ítem de forma global  
Visualizar en una instancia  información del ítem más detallada 







