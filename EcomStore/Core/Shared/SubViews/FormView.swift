//
//  FormView.swift
//  EcomStore
//
//  Created by Trey Browder on 10/31/24.
//

import SwiftUI

struct FormView: View {
    
    @Binding var value: String
    var icon: String
    var placeholder: String
    var isSecure: Bool = false
    var validateState: ValidateState
    
    var body: some View {
        HStack() {
            Group {
                if isSecure {
                    SecureField(placeholder, text: $value)
                } else {
                    TextField(placeholder, text: $value)
                }
                
                Image(systemName: icon)
                    .resizable()
                    .frame(width: 26, height: 26)
                    .foregroundStyle(validateState.shadowColor)
                    .padding(4)
            }
            .font(.system(size: 16, design: .monospaced))
            .textFieldStyle(.roundedBorder)
            .multilineTextAlignment(.leading)
            .autocorrectionDisabled(true)
            .textInputAutocapitalization(.never)
        }
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(lineWidth: 1)
                .foregroundStyle(validateState.shadowColor)
                .shadow(radius: 1, x: 0, y: 2)
        }

    }
}

#Preview {
    VStack{
        FormView(value: .constant("Text Field Sample Text"),
                 icon: "checkmark.circle.fill",
                 placeholder: "Enter Text",
                 validateState: .valid)
        
        FormView(value: .constant("Secure"),
                 icon: "lock.circle",
                 placeholder: "Enter Password",
                 isSecure: true,
                 validateState: .invalid)
        
        FormView(value: .constant(""),
                 icon: "checkmark.circle",
                 placeholder: "Full Name",
                 validateState: .empty)
    }
}
