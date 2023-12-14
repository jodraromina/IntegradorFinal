
// Declaracion de descuentos
let EstudianteDesc = 0.80;
let TraineeDesc = 0.50;
let JuniorDesc = 0.15;
// Declaracion valor ticket
let valor = 200;
// Captura de elementos del formulario

const cantidad = document.getElementById("cantidad");
const totalAPagar = document.getElementById("totalAPagar");
const categoria = document.getElementById("categoria");
const btnResumen = document.getElementById("resumen");
const btnBorrar = document.getElementById("borrar");

// Calcular el total a Pagar
function CalcularTotal() {
    let total = valor * cantidad.value;
    switch (categoria.value) {
        case "estudiante":
            total = total - (total * EstudianteDesc);
            break;
            case "trainee":
                total = total - (total * TraineeDesc);
                break;
                case "junior":
                    total = total - (total * JuniorDesc);
                    break;
        default:
            break;
    }
    totalAPagar.textContent = (`Total a Pagar: $ ${total}`);
}

btnResumen.addEventListener("click",(e) => {
    e.preventDefault()
    CalcularTotal()
})

// Borrar datos ingresados

function Borrar(){
cantidad.value="";
categoria.value= "Sin categoria";
totalAPagar.textContent=(`Total a Pagar: $ `);

}

btnBorrar.addEventListener("click", (e) =>{
    e.preventDefault()
    Borrar()
}
);