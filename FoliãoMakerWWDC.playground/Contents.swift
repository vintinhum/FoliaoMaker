import SwiftUI
import PlaygroundSupport


let bold = Bundle.main.url(forResource: "Gamer", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(bold, CTFontManagerScope.process, nil)

let bold2 = Bundle.main.url(forResource: "PressStart2P", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(bold2, CTFontManagerScope.process, nil)


var settings = UserSettings()
var view = MainView().environmentObject(settings)
PlaygroundPage.current.setLiveView(view)
