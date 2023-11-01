//
//  EjemploToggle.swift
//  EjemplosSwiftUI
//
//  Created by Ion Jaureguialzo Sarasola on 27/11/20.
//

import SwiftUI

// REF: Toggle: https://developer.apple.com/documentation/swiftui/toggle
// REF: SF Symbols: https://developer.apple.com/sf-symbols/

struct EjemploToggle: View {

    @State private var vibrateOnRing = true

    var body: some View {
        VStack {
            Toggle(isOn: $vibrateOnRing) {
                Text("Vibrate on Ring")
            }

            Toggle("Vibrate on Ring", isOn: $vibrateOnRing)

            Toggle(isOn: $vibrateOnRing) {
                HStack {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Vibrate on Ring")
                }
            }
        }
        .padding(.horizontal, 40)
    }
}


#Preview {
    EjemploToggle()
}
