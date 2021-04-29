import SwiftUI
import PlaygroundSupport


public struct DressingView: View {
    @EnvironmentObject var settings: UserSettings
    
    @ObservedObject var manager: Manager = Manager.shared
    
    public var body: some View {
        
        NavigationView {
            
            ZStack {

                
                //ASAS
                Image(uiImage: UIImage(named: "\(manager.asas[(manager.asasCounter)])")!)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 2.5, height: UIScreen.main.bounds.width / 2.5, alignment: .center)
                    .offset(x: UIScreen.main.bounds.width / 128, y: UIScreen.main.bounds.width / 128)
                    .padding(.top, -100)
                
                //JACARÉLIO
                Image(uiImage: UIImage(named: "\(manager.jacarelio)")!)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 2.5, height: UIScreen.main.bounds.width / 2.5, alignment: .center)
                    .offset(x: UIScreen.main.bounds.width / 128, y: UIScreen.main.bounds.width / 128)
                    .padding(.top, -100)
                //CAMISA
                Image(uiImage: UIImage(named: "\(manager.camisas[(manager.camisasCounter)])")!)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 2.5, height: UIScreen.main.bounds.width / 2.5, alignment: .center)
                    .offset(x: UIScreen.main.bounds.width / 128, y: UIScreen.main.bounds.width / 128)
                    .padding(.top, -100)
                //CHAPÉU
                Image(uiImage: UIImage(named: "\(manager.chapeus[(manager.chapeusCounter)])")!)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 2.5, height: UIScreen.main.bounds.width / 2.5, alignment: .center)
                    .offset(x: UIScreen.main.bounds.width / 128, y: UIScreen.main.bounds.width / 128)
                    .padding(.top, -100)
                //OLHOS
                Image(uiImage: UIImage(named: "\(manager.olhos[(manager.olhosCounter)])")!)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 2.5, height: UIScreen.main.bounds.width / 2.5, alignment: .center)
                    .offset(x: UIScreen.main.bounds.width / 128, y: UIScreen.main.bounds.width / 128)
                    .padding(.top, -100)
                
                HStack {
                    
                    Button(action: {
                        print("Passou para a esquerda")
                        
                        //ASAS SELECIONADAS
                        if manager.selection == .asas {
                            
                            if manager.asasCounter == 0 {
                                manager.asasCounter = manager.asas.count - 1
                            } else {
                                manager.asasCounter -= 1
                            }
                        }
                        //CAMISA SELECIONADA
                        if manager.selection == .camisa {
                            if manager.camisasCounter == 0 {
                                manager.camisasCounter = manager.camisas.count - 1
                            } else {
                                manager.camisasCounter -= 1
                            }
                        }
                        //OLHOS SELECIONADOS
                        if manager.selection == .olhos {
                            if manager.olhosCounter == 0 {
                                manager.olhosCounter = manager.olhos.count - 1
                            } else {
                                manager.olhosCounter -= 1
                            }
                        }
                        //CHAPÉU SELECIONADO
                        if manager.selection == .chapeu {
                            if manager.chapeusCounter == 0 {
                                manager.chapeusCounter = manager.chapeus.count - 1
                            } else {
                                manager.chapeusCounter -= 1
                            }
                        }
                        
                        else {
                            print("Nenhuma roupa selecionada")
                        }
                        
                        
                    }, label: {
                        Image(uiImage: UIImage(named: "Seta esquerda")!)
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width / 15, height: UIScreen.main.bounds.width / 15, alignment: .center)
                            
                    })
                    
                    
                    Spacer ()
                    
                    Button(action: {
                        print("Passou para a direita")
                        
                        //ASAS SELECIONADAS
                        if manager.selection == .asas {
                            
                            if manager.asasCounter == manager.asas.count - 1 {
                                manager.asasCounter = 0
                            } else {
                                manager.asasCounter += 1
                            }
                        }
                        //CAMISA SELECIONADA
                        if manager.selection == .camisa {
                            if manager.camisasCounter == manager.camisas.count - 1 {
                                manager.camisasCounter = 0
                            } else {
                                manager.camisasCounter += 1
                            }
                        }
                        //OLHOS SELECIONADOS
                        if manager.selection == .olhos {
                            if manager.olhosCounter == manager.olhos.count - 1 {
                                manager.olhosCounter = 0
                            } else {
                                manager.olhosCounter += 1
                            }
                        }
                        //CHAPÉU SELECIONADO
                        if manager.selection == .chapeu {
                            if manager.chapeusCounter == manager.chapeus.count - 1 {
                                manager.chapeusCounter = 0
                            } else {
                                manager.chapeusCounter += 1
                            }
                        }
                        
                        else {
                            print("Nenhuma roupa selecionada")
                        }
                        
                    }, label: {
                        Image(uiImage: UIImage(named: "Seta direita")!)
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width / 15, height: UIScreen.main.bounds.width / 15, alignment: .center)
                            
                    })
                    
                }
                .padding(.top, -50)
                .padding(.horizontal, 45)
                
                VStack {
                    
                    Text("Select a piece of clothing and use the arrows to browse through the options! Tap the red button to reset and the green button when you're done!")
                        .font(.custom("PressStart2P", size: 15))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 50)
                        .padding(.top, -50)
                    
                    Spacer()
                    
                    HStack {
                        
                        Button(action: {
                            manager.camisasCounter = 0
                            manager.asasCounter = 0
                            manager.chapeusCounter = 0
                            manager.olhosCounter = 0
                            manager.selection = .empty
                            
                        }, label: {
                            Image(uiImage: UIImage(named: "BotaoApagar")!)
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width / 15, height: UIScreen.main.bounds.width / 15, alignment: .center)
                        })
                        Spacer()
                        
                        NavigationLink(
                            destination: FinalScreen().environmentObject(settings),
                            label: {
                                Image(uiImage: UIImage(named: "BotaoConfirmar")!)
                                    .resizable()
                                    .frame(width: UIScreen.main.bounds.width / 15, height: UIScreen.main.bounds.width / 15, alignment: .center)
                                    .onTapGesture {
                                        settings.page = 3
                                    }
                            })
                        
                        
                    }
                    .padding(.horizontal, 60)
                    .padding(.bottom)
                    
                    HStack {
                        
                        Spacer()
                        //SELECIONAR CAMISA
                        
                        Button(action: {
                            
                            manager.selection = .camisa
                            
                        }, label: {
                            selected(roupa: Selection.camisa.rawValue)
                        })
                        
                        Spacer()
                        //SELECIONAR OCULOS
                        Button(action: {
                            
                            manager.selection = .olhos
                            
                        }, label: {
                            selected(roupa: Selection.olhos.rawValue)
                        })
                        Spacer()
                        //SELECIONAR CHAPÉU
                        Button(action: {
                            
                            manager.selection = .chapeu
                            
                        }, label: {
                            selected(roupa: Selection.chapeu.rawValue)
                        })
                        Spacer()
                        //SELECIONAR ASAS
                        Button(action: {
                            manager.selection = .asas
                            
                        }, label: {
                            selected(roupa: Selection.asas.rawValue)
                        })
                        Spacer()
                        
                    }
                    .padding(.bottom)
                    
                }
                
            }
            
        }
        .frame(width: 600, height: 600, alignment: .center)
        
    }
    
    func selected(roupa: String) -> some View {
        
        var appendix: String = ""
        if manager.selection.rawValue == roupa {
            appendix = "Selected"
        }
        
        
        return Image(uiImage: UIImage(named: "\(roupa)\(appendix)")!)
            .resizable()
            .frame(width: UIScreen.main.bounds.width / 10, height: UIScreen.main.bounds.width / 10, alignment: .center)
    }
    
}

