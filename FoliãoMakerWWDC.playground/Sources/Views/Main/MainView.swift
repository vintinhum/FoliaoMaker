import SwiftUI
import PlaygroundSupport

public struct MainView: View {
    @EnvironmentObject var settings: UserSettings
    
    public init() {}

    public var body: some View {
        Group {
            if settings.page == 0 {
                TitleScreenView().environmentObject(settings)
            } else if settings.page == 1 {
                OnboardingView().environmentObject(settings)
            } else if settings.page == 2 {
                DressingView().environmentObject(settings)
            } else if settings.page == 3 {
                FinalScreen().environmentObject(settings)
            }
        }
    }
}

