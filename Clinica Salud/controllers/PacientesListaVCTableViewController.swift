import UIKit

class PacientesListaVCTableViewController: UITableViewController {

    // 🔹 Lista de pacientes
    var listaPacientes: [Paciente] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Pantalla de pacientes cargada")

        cargarDatos()

        // 🔹 Título en la barra
        self.title = "Pacientes"

        // 🔹 Altura de fila (opcional)
        tableView.rowHeight = 80
    }

    // 🔹 Cargar datos de prueba
    func cargarDatos() {
        listaPacientes = [
            Paciente(nombre: "Juan Perez", edad: 30, historialMedico: "Alergia al polvo", foto: UIImage(named: "paciente1")!),
            Paciente(nombre: "Maria Lopez", edad: 25, historialMedico: "Diabetes tipo 1", foto: UIImage(named: "paciente2")!),
            Paciente(nombre: "Carlos Ramos", edad: 40, historialMedico: "Hipertensión", foto: UIImage(named: "paciente1")!),
            Paciente(nombre: "Ana Torres", edad: 35, historialMedico: "Asma crónica", foto: UIImage(named: "paciente2")!),
            Paciente(nombre: "Luis Mendoza", edad: 28, historialMedico: "Fractura reciente", foto: UIImage(named: "paciente1")!),
            Paciente(nombre: "Sofia Vega", edad: 22, historialMedico: "Sin antecedentes", foto: UIImage(named: "paciente2")!)
        ]
    }

    // MARK: - Table view data source

    // 🔹 Número de secciones
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    // 🔹 Número de filas
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaPacientes.count
    }

    // 🔹 Contenido de cada celda
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaPaciente", for: indexPath)

        let paciente = listaPacientes[indexPath.row]

        // 🔹 Texto principal
        cell.textLabel?.text = paciente.nombre

        // 🔹 Subtítulo
        cell.detailTextLabel?.text = "Edad: \(paciente.edad) | \(paciente.historialMedico)"

        // 🔹 Imagen
        cell.imageView?.image = paciente.foto

        // 🔹 Ajuste de imagen
        cell.imageView?.layer.cornerRadius = 25
        cell.imageView?.clipsToBounds = true

        return cell
    }

    // 🔹 Acción al tocar una fila (solo debug por ahora)
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let paciente = listaPacientes[indexPath.row]
        print("Seleccionaste a: \(paciente.nombre)")
    }
}
