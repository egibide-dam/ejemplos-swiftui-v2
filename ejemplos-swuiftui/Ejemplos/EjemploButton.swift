//
//  EjemploButton.swift
//  EjemplosSwiftUI
//
//  Created by Ion Jaureguialzo Sarasola on 27/11/20.
//

import SwiftUI

// REF: Button: https://developer.apple.com/documentation/swiftui/button

struct EjemploButton: View {
    var body: some View {

        VStack(spacing: 20) {

            Button("Register", action: register)

            HStack(spacing: 20) {

                Button(action: signIn) {
                    Text("Sign In")
                }

                Button("Log Out", action: {
                    logOut(usuario: "root")
                })
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(10.0)
            }
        }
    }

    func signIn() {
        print("Iniciar sesión")
    }

    func logOut(usuario: String) {
        print("Cerrar sesión de \(usuario)")
    }

    func register() {
        print("Registrarse")
    }
}


#Preview {
    EjemploButton()
}
