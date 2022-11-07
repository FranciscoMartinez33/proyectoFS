function validateForm() {
    let x = document.forms["formulario"]["email"].value;
    let y = document.forms["formulario"]["pass"].value;
    if (x == "") {
      alert("Ingrese email");
      return false;
    } else {
        if( y== ""){
            alert("Ingrese contraseña");
            return false
        }
    }

  }