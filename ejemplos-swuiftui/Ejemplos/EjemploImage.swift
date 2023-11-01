//
//  EjemploImage.swift
//  EjemplosSwiftUI
//
//  Created by Ion Jaureguialzo Sarasola on 27/11/20.
//

import SwiftUI

// REF: Image: https://developer.apple.com/documentation/swiftui/image
// REF: Modificadores: https://developer.apple.com/documentation/swiftui/image-view-modifiers
// REF: SF Symbols: https://developer.apple.com/design/human-interface-guidelines/sf-symbols
//REF: Instalar SF simbols beta: https://developer.apple.com/sf-symbols/

struct EjemploImage: View {
    var body: some View {

        VStack {
            Spacer()

            Image("Santa")
                .mask(Circle())
                .shadow(radius: 10)

            Spacer()

            HStack() {
                Spacer()
                Image(systemName: "phone.circle.fill")
                    .renderingMode(.original)
                    .font(.largeTitle)

                Spacer()

                Image(systemName: "phone.down.circle.fill")
                    //.renderingMode(.original)
                    .font(.largeTitle)

                Image(systemName: "sunrise.fill")
                    .font(.largeTitle)
                    .foregroundColor(.blue)

                Spacer()
            }

            Spacer()

        }
    }
}


#Preview {
    EjemploImage()
}
