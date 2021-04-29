import SwiftUI

public class Manager: ObservableObject {
    
    
    @Published var selection: Selection = .empty
    @Published var nextView: Bool = false
    
    @Published var asasCounter: Int = 0
    @Published var camisasCounter: Int = 0
    @Published var olhosCounter: Int = 0
    @Published var chapeusCounter: Int = 0
    
    
    @Published var jacarelio: String = "Jacarélio_jacarelio.png"
    @Published var asas: [String] = ["Vazio", "Jacarélio_Asas_brabuletaazul", "Jacarélio_Asas_brabuletalaranja", "AsasAnjo", "AsasDiabo"]
    @Published var camisas: [String] = ["Vazio", "Jacarélio_Camisas_bigode cheiroso", "Jacarélio_Camisas_camisa listrada", "Jacarélio_Camisas_regatrix", "Jacarélio_Camisas_regata normal.png", "Jacarélio_Camisas_camisa florida.png"]
    @Published var olhos: [String] = ["Vazio", "Jacarélio_Olhos_Óculos escuros", "Jacarélio_Olhos_Óculos colorido", "Jacarélio_Olhos_Óculos normal.png", "Jacarélio_Olhos_oculos vermelho.png", "Jacarélio_Olhos_oculossnowboard.png"]
    @Published var chapeus: [String] = ["Vazio", "Jacarélio_Cabeça_aureolaanjinho.png", "Jacarélio_Cabeça_tiaradiabinho", "Jacarélio_Cabeça_boné", "Jacarélio_Cabeça_chapéu de palha", "Jacarélio_Cabeça_coroa"]
    
    static var shared: Manager = Manager()
    
    private init() {}

}

public enum Selection: String {
    case camisa = "BotaoCamisa"
    case olhos = "BotaoOculos"
    case chapeu = "BotaoChapeu"
    case asas = "BotaoAsas"
    case empty = ""
}
