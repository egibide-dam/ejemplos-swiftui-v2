//
//  EjemploCompartirEstadoVistas.swift
//  ejemplos-swuiftui
//
//  Created by Inés Larrañaga Fernández de Pinedo on 1/11/23.
//

import SwiftUI

struct EjemploCompartirEstadoVistas: View {

    @EnvironmentObject var opciones: Opciones

    var body: some View {
        VStack(spacing: 20) {
            Text(opciones.sonidoActivado
                    ? "Sonido activado"
                    : "Sonido desactivado")
            Text(opciones.mostrarAyuda
                    ? "Ver ayuda"
                    : "Sin ayuda")
        }
    }
}

/*#Preview {
    EjemploCompartirEstadoVistas()
}*/
