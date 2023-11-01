//
//  EjemploRotacion.swift
//  EjemplosSwiftUI
//
//  Created by Ion Jaureguialzo Sarasola on 1/12/20.
//

import SwiftUI

// REF: https://www.hackingwithswift.com/quick-start/swiftui/swiftuis-built-in-shapes
// REF: https://www.hackingwithswift.com/books/ios-swiftui/changing-a-views-layout-in-response-to-size-classes

struct EjemploRotacion: View {

    @Environment(\.verticalSizeClass) var sizeClass

    var body: some View {

        if sizeClass == .regular {
            VStack {
                Image("Noa")
                    .mask(Circle())
                    .shadow(radius: 10)

                Rectangle()
                    .fill(Color("MiColor"))
                    .frame(width: 200, height: 200)

            }
        } else {
            HStack {
                Spacer()
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color("MiColor"))
                    .frame(width: 100, height: 100)
                Spacer()
                Image("Noa")
                    .mask(Circle())
                    .shadow(radius: 10)
                Spacer()
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color("MiColor"))
                    .frame(width: 100, height: 100)
                Spacer()
            }
        }
    }
}

struct EjemploRotacion_Previews: PreviewProvider {
    static var previews: some View {
        EjemploRotacion()
    }
}
