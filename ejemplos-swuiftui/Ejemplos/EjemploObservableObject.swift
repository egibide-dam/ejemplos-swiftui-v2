//
//  EjemploObservableObject.swift
//  ejemplos-swuiftui
//
//  Created by Inés Larrañaga Fernández de Pinedo on 1/11/23.
//

import SwiftUI


class UserSettings: ObservableObject {
    @Published var score = 0
}


struct EjemploObservableObject: View {
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
        VStack {
            Text("Your score is \(settings.score)")
            Button(action: {
                self.settings.score += 1
            }) {
                Text("Increase Score")
            }
        }
    }
}


#Preview {
    EjemploObservableObject()
}
