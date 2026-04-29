import UIKit

class Paciente {

    var nombre: String
    var edad: Int
    var historialMedico: String
    var foto: UIImage

    init(nombre: String, edad: Int, historialMedico: String, foto: UIImage) {
        self.nombre = nombre
        self.edad = edad
        self.historialMedico = historialMedico
        self.foto = foto
    }
}
