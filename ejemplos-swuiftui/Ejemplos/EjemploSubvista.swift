//
//  EjemploSubvista.swift
//  ejemplos-swuiftui
//
//  Created by Inés Larrañaga Fernández de Pinedo on 1/11/23.
//

import SwiftUI

struct EjemploSubvista: View {
    @State var kana = "こんにちは！"

    var body: some View {
        VStack(spacing: 20) {
            Text(kana)
            Kana(etiqueta: $kana)
        } .font(.title)
    }
}

struct Kana: View {
    @Binding var etiqueta: String

    var body: some View {
        VStack(spacing: 20) {
            Text(etiqueta)
                .foregroundColor(.red)
            Button("Púlsame") {
                etiqueta = "¡Hola!"
            }
        }
    }
}

#Preview {
    EjemploSubvista()
}
