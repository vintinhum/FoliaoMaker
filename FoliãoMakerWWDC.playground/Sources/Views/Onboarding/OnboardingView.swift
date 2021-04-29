import SwiftUI
import PlaygroundSupport

public struct OnboardingView: View {
    @EnvironmentObject var settings: UserSettings
    
    public init() {}
    
    public var body: some View {
        
        NavigationView {
            
            ZStack {
                    
                    Image(uiImage: UIImage(named: "Jacarélio_jacarelio")!)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width / 3.5, height: UIScreen.main.bounds.width / 3.5, alignment: .center)
                        .offset(x: 10, y: -75)
                
                VStack {
                    Text("It's time for Carnival! The streets of Olinda are full with colors and music to celebrate this special time of the year!")
                        .font(.custom("PressStart2P", size: 15))
                        .multilineTextAlignment(.center)
                        .lineSpacing(8.0)
                        .padding(.horizontal, 50)
                        .offset(x: 0, y: -225)
                    
                    Text("This is Jacarélio, and they're ready to party, but where are their clothes? Shall we help them dress up?")
                        .font(.custom("PressStart2P", size: 15))
                        .multilineTextAlignment(.center)
                        .lineSpacing(8.0)
                        .padding(.horizontal, 60)
                        .offset(x: 0, y: 70)
                    
                }
                
                NavigationLink(
                    destination: DressingView().environmentObject(settings),
                    label: {
                        
                        ZStack {
                            Image(uiImage: UIImage(named: "BotãoStart")!)
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width / 10 * 2, height: UIScreen.main.bounds.width / 20,
                                       alignment: .center)
                                .padding(.top, 400)
                                .onTapGesture {

                                    settings.page = 2
                                }
                            Text("Let's go!")
                                .font(.custom("Gamer", size: 30))
                                .foregroundColor(.black)
                                .padding(.top, 395)
                                .onTapGesture {

                                    settings.page = 2
                                }
                        }
                        
                            
                    })
                


            }
            
            
        }
        .frame(width: 600, height: 600, alignment: .center)
    }
}

