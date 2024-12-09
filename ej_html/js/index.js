
// funcion que swirve para cambiar entre formualrios
let forms = document.getElementsByClassName("formContainer") // agarra los formulario

function changeForm(i) {
    if (i) {
        forms[0].style.marginLeft = "-102%"
        forms[0].style.opacity = "0"
        forms[1].style.opacity = "1"
    }
    else {
        forms[0].style.marginLeft = "0"
        forms[0].style.opacity = "1"
        forms[1].style.opacity = "0"
    }
}

changeForm(1)

