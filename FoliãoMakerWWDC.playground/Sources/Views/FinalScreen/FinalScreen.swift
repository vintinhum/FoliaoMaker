import SwiftUI
import PlaygroundSupport

public struct FinalScreen: View {
    @EnvironmentObject var settings: UserSettings
    
    public init() {}
    
    @ObservedObject var manager: Manager = Manager.shared
    
    public var body: some View {
        
        

            
            ZStack {
                
                Image(uiImage: UIImage(named: "BackgroundOlinda")!)
                    .resizable()
                    .frame(width: 600, height: 600, alignment: .center)
                
                //ASAS
                Image(uiImage: UIImage(named: "\(manager.asas[(manager.asasCounter)])")!)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 2.5, height: UIScreen.main.bounds.width / 2.5, alignment: .center)
                    .offset(x: UIScreen.main.bounds.width / 128, y: UIScreen.main.bounds.width / 128)
                
                //JACARÉLIO
                Image(uiImage: UIImage(named: "\(manager.jacarelio)")!)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 2.5, height: UIScreen.main.bounds.width / 2.5, alignment: .center)
                    .offset(x: UIScreen.main.bounds.width / 128, y: UIScreen.main.bounds.width / 128)
                
                //CAMISA
                Image(uiImage: UIImage(named: "\(manager.camisas[(manager.camisasCounter)])")!)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 2.5, height: UIScreen.main.bounds.width / 2.5, alignment: .center)
                    .offset(x: UIScreen.main.bounds.width / 128, y: UIScreen.main.bounds.width / 128)
                
                //CHAPÉU
                Image(uiImage: UIImage(named: "\(manager.chapeus[(manager.chapeusCounter)])")!)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 2.5, height: UIScreen.main.bounds.width / 2.5, alignment: .center)
                    .offset(x: UIScreen.main.bounds.width / 128, y: UIScreen.main.bounds.width / 128)
                
                //OLHOS
                Image(uiImage: UIImage(named: "\(manager.olhos[(manager.olhosCounter)])")!)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 2.5, height: UIScreen.main.bounds.width / 2.5, alignment: .center)
                    .offset(x: UIScreen.main.bounds.width / 128, y: UIScreen.main.bounds.width / 128)
                
                VStack {
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            Image(uiImage: UIImage(named: "BotaoHome")!)
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width / 10, height: UIScreen.main.bounds.width / 10,
                                       alignment: .center)
                                .padding(.trailing)
                                .onTapGesture {
                                    settings.page = 0
                                    
                                    manager.camisasCounter = 0
                                    manager.asasCounter = 0
                                    manager.chapeusCounter = 0
                                    manager.olhosCounter = 0
                                    manager.selection = .empty
                                }
                        })
                                

                    }
                    .padding(.top)
                    
                    Spacer()
                    ZStack {
                        
                        
                        Image(uiImage: UIImage(named: "TextBox")!)
                            .resizable()
                            .frame(width: 500, height: 100, alignment: .center)
                            
                        
                        Text("Great! Now Jacarélio can enjoy the party in the true spirit of Carnival!")
                            .font(.custom("PressStart2P", size: 18))
                            .multilineTextAlignment(.center)
                            .lineSpacing(8.0)
                            .padding(.horizontal, 60)
                    }
                    .padding(.bottom)
                    
                }
                
                
            }
        
    }
    
    
    
}

