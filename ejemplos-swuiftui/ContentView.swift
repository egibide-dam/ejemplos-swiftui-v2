//
//  ContentView.swift
//  ejemplos-swuiftui
//
//  Created by Inés Larrañaga Fernández de Pinedo on 1/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List {
                HStack {
                    Image("Noa")
                        .mask(Circle())
                        .shadow(radius: 10)
                    
                    NavigationLink("Text", destination: EjemploText().navigationTitle("Etiquetas"))
                }
                
                NavigationLink("TextField", destination: EjemploTextField().navigationTitle("Entrada de texto"))
                NavigationLink("Image", destination: EjemploImage().navigationTitle("Imagen"))
                NavigationLink("Button", destination: EjemploButton().navigationTitle("Botones"))
                NavigationLink("Toggle", destination: EjemploToggle().navigationTitle("Interruptores"))
                NavigationLink("Picker", destination: EjemploPicker().navigationTitle("Selectores"))
                NavigationLink("Slider", destination: EjemploSlider().navigationTitle("Sliders"))
                NavigationLink("Shapes", destination: EjemploRotacion().navigationTitle("Figuras"))
                
                NavigationLink("Ejemplo mantener estado en propiedades simples", destination: EjemploState())
                
                NavigationLink("Ejemplo mantener el estado en objetos compuestos", destination: EjemploObservableObject())
                
                NavigationLink("Ejemplo pasar estado a subvista", destination: EjemploSubvista())
                
                NavigationLink("Ejemplo compatir estado entre vistas", destination: EjemploCompartirEstadoVistas())

                Link("SwiftUI", destination: URL(string: "https://developer.apple.com/xcode/swiftui/")!)
            }
            .navigationBarTitle("Ejemplos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static let opciones = Opciones()

    static var previews: some View {
        ContentView()
            .environmentObject(opciones)
    }
}
