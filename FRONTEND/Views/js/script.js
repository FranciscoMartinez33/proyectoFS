function validateForm() {
    let x = document.forms["formulario"]["email"].value;
    let y = document.forms["formulario"]["pass"].value;
    let mensaje = document.getElementById("mensaje-login");
    if (x == "") {
      mensaje.innerHTML="Ingrese email";
      mensaje.style.color ="red";
      mensaje.style.fontSize="15px";
      return false;
    } else if
        ( y== ""){
            mensaje.innerHTML="Ingrese contraseña";
            mensaje.style.color ="red";
            mensaje.style.fontSize="15px";
            return false
        } else {
          mensaje.innerHTML="Ingreso correcto";
          mensaje.style.color ="blue";
          mensaje.style.fontSize="15px";
          return true;
        }
  }

  function validateForm2() {
    let x = document.forms["formulario2"]["email"].value;
    let y = document.forms["formulario2"]["pass"].value;
    if (x == "") {
      alert("Ingrese email")
      return false;
    } else if
        ( y== ""){
          alert("Ingrese contraseña")
            return false
        } else {

          return true;
        }
  }
  