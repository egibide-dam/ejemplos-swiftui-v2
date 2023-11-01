//
//  EjemploPicker.swift
//  EjemplosSwiftUI
//
//  Created by Ion Jaureguialzo Sarasola on 27/11/20.
//

import SwiftUI

// REF: Picker: https://developer.apple.com/documentation/swiftui/picker

enum Flavor: String, CaseIterable, Identifiable {
    case chocolate
    case vanilla
    case strawberry
    case turron
    case avellana
    case pistacho
    case limon

    var id: String { self.rawValue }
    
    var description:String {
        switch self{
        case .chocolate:
            return "Chocolate"
        case .vanilla:
            return "Vanilla"
        case .strawberry:
            return "Strawberry"
        case .turron:
            return "Turron"
        case .avellana:
            return "Avellana"
        case .pistacho:
            return "Pistacho"
        case .limon:
            return "Limón"
        }
    }
}

struct EjemploPicker: View {

    @State private var selectedFlavor : Flavor = Flavor.chocolate
    @State private var selectedTopping : Flavor = Flavor.vanilla

    var body: some View {
        VStack {
            Divider()

            Picker("Flavor", selection: $selectedFlavor) {
                Text("Chocolate").tag(Flavor.chocolate)
                Text("Vanilla").tag(Flavor.vanilla)
                Text("Strawberry").tag(Flavor.strawberry)
                Text("Pistacho").tag(Flavor.pistacho)
            }
            .pickerStyle(SegmentedPickerStyle())

            Divider()

            Spacer()
                .frame(height: 100)

            Divider()

            // REF: Identificador único para cada caso: https://www.hackingwithswift.com/books/ios-swiftui/why-does-self-work-for-foreach
            Picker("Topping", selection: $selectedTopping) {
                ForEach(Flavor.allCases, id: \.self) { flavor in
                    Text(flavor.description)
                }
            }

            Text("Selected flavor: \(selectedFlavor.description)")
            Text("Selected topping: \(selectedTopping.description)")

            Divider()
        }
        .padding(.horizontal, 30.0)
    }
}


#Preview {
    EjemploPicker()
}
