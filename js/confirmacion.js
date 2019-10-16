function Confirmar() {
//Ingresamos un mensaje a mostrar
var mensaje = confirm("¿Desea guardar los datos?");
//Detectamos si el usuario acepto el mensaje
if (mensaje) {
alert("¡Datos guardados!");
}
//Detectamos si el usuario denegó el mensaje
else {
alert("¡Por favor, vuelva a introducir sus datos!");
}
}
