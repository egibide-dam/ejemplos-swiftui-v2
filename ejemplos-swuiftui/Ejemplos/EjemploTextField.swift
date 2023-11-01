//
//  EjemploTextField.swift
//  EjemplosSwiftUI
//
//  Created by Ion Jaureguialzo Sarasola on 27/11/20.
//

import SwiftUI

// REF: TextField: https://developer.apple.com/documentation/swiftui/textfield

struct EjemploTextField: View {

    @State private var username: String = ""
    @State private var isEditing = false
    @State private var isValid=false

    var body: some View {
        VStack(spacing: 200) {
            
            TextField(
                "User name (email address)",
                text: $username
            )
            {
                isValid=validate(name: username)
                isEditing=true
            }
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .padding(.horizontal, 30)

            Text(username)
                .foregroundColor(isValid ? .green : .red)

        }
        .textFieldStyle(RoundedBorderTextFieldStyle())
    }

    func validate(name: String) -> Bool {
        return name.count > 5
    }
}


#Preview {
    EjemploTextField()
}
