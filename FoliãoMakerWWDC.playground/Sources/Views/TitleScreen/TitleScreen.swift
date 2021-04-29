import SwiftUI
import PlaygroundSupport


public struct TitleScreenView: View {
    @EnvironmentObject var settings: UserSettings
    
    public init() {}
    
    
    public var body: some View {
        
        NavigationView {
            VStack {
                Spacer()
                Image(uiImage: UIImage(named: "FoliaoMakerImage.png")!)
                    .resizable()
                    .frame(width: 403, height: 272, alignment: .center)
                
                Spacer()
                
                NavigationLink(
                    destination: OnboardingView().environmentObject(settings),
                    label: {
                        ZStack {
                            Image(uiImage: UIImage(named: "BotãoStart")!)
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width / 10 * 4, height: UIScreen.main.bounds.width / 10,
                                       alignment: .center)
                                .onTapGesture {

                                    settings.page = 1
                                }
                            Text("Start")
                                .font(.custom("Gamer", size: 60))
                                .foregroundColor(.black)
                                .padding(.bottom)
                                .onTapGesture {

                                    settings.page = 1
                                }
                        }
                    })
                    .navigationTitle("")
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
                
                Spacer()
            }
        }
        .frame(width: 600, height: 600, alignment: .center)
            
            


        
    }
    
}
