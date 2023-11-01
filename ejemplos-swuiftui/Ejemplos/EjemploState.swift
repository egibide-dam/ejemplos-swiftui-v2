//
//  EjemploState.swift
//  ejemplos-swuiftui
//
//  Created by Inés Larrañaga Fernández de Pinedo on 1/11/23.
//

import SwiftUI

struct EjemploState: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack {
            Toggle("", isOn: $isOn)
                .labelsHidden()
            Text(isOn ? "On" : "Off")
        }
    }
}

#Preview {
    EjemploState()
}
